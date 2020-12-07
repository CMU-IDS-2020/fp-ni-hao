"""
RNNVis index (main) view.

URLs include:
/
"""
import os
import string
import shutil
import tempfile
import uuid
import hashlib
import flask
from flask import send_from_directory
from flask import url_for
import RNNVis
from RNNVis import lr_model, lr_vectorizer, dataset, s_model, s_vectorizer, s_dataset
import random
from datetime import datetime
import pickle
import sklearn
from sklearn.pipeline import Pipeline, make_pipeline
import lime
from lime import lime_text
from lime.lime_text import LimeTextExplainer
import matplotlib as plt
from flask import request, jsonify, render_template

def query_db_1(query, args=(), one=False):
    """query_db_1."""
    cur = RNNVis.model.get_db().execute(query, args)
    r_1 = cur.fetchall()
    cur.close()
    return (r_1[0] if r_1 else None) if one else r_1


def sha256sum(filename):
    """Return sha256 hash of file content, similar to UNIX sha256sum."""
    content = open(filename, 'rb').read()
    sha256_obj = hashlib.sha256(content)
    return sha256_obj.hexdigest()


@RNNVis.app.route('/uploads/<filename>')
def uploaded_file(filename):
    """query_db_1."""
    return send_from_directory(RNNVis.app.config['UPLOAD_FOLDER'], filename)


@RNNVis.app.route('/', methods=['GET', 'POST'])
def show_index():
    """Display / route."""
    context = {} 

    # Dealing with the happy source model
    labels = ['achievement','affection','bonding','enjoy the moment','exercise','leisure','nature']
    labeldict = {'achievement': 0,'affection': 1,'bonding': 2,'enjoy_the_moment': 3,'exercise': 4, 'leisure': 5,'nature': 6}
    label_intdic = {0: 'achievement', 1:'affection',2:'bonding',3:'enjoy the moment',4:'exercise',5:'leisure',6:'nature'}
    global lr_model
    global lr_vectorizer
    global dataset

    # Comment the line to fix the sentence content
    # random.seed(10)
    index = random.randint(0,14124)
    sentence = [dataset["cleaned_hm"].str.lower()[index]]
    pred = lr_model.predict(lr_vectorizer.transform(sentence))
    c = make_pipeline(lr_vectorizer, lr_model)
    explainer = LimeTextExplainer(class_names=labels)
    exp = explainer.explain_instance(sentence[0], c.predict_proba, labels=[0,1,2,3,4,5,6])
    exp.save_to_file('RNNVis/static/model/lime.html', text=sentence[0],labels=(labeldict[pred[0]],))
    # context['lime_html']=exp.as_html(text=sentence[0],labels=(labeldict[pred[0]],))
    # word_weight = exp.as_list(label=labeldict[pred[0]])
    # pred_prob = lr_model.predict_proba(lr_vectorizer.transform(sentence))[0]
    # pred_prob = [(labels[i], pred_prob[i]) for i in range(7)]
    # pred_prob = sorted(pred_prob, key = lambda x: x[1], reverse = True)
    # context['weight_test'] = word_weight
    # context['prob_test'] = pred_prob
    context['sentence'] = dataset["cleaned_hm"][index]
    # context['word_weight'] = url_for('uploaded_file', filename='affection_sample.png')
    # context['pred_prob'] = url_for('uploaded_file', filename='prediction_prob.png')
    context['explanation'] = str(pred[0])
    context['label_intdic'] = label_intdic
    # context['first_page'] = url_for('uploaded_file', filename='FirstPage.png')


    # Dealing with the sentiment model
    global s_model
    global s_vectorizer
    global s_dataset
    s_labels = ['unhappy','happy']
    s_labeldict = {'unhappy': 0,'happy': 1}
    s_label_intdic = {0: 'unhappy', 1:'happy'}
    s_index = random.randint(0,10000)
    s_sentence = [s_dataset["cleaned_text"][s_index]]
    s_pred = s_model.predict(s_vectorizer.transform(s_sentence))
    s_c = make_pipeline(s_vectorizer, s_model)
    s_explainer = LimeTextExplainer(class_names=s_labels)
    s_exp = s_explainer.explain_instance(s_dataset["text"][s_index], s_c.predict_proba, labels=[0,1])
    s_exp.save_to_file('RNNVis/static/sentiment_model/lime.html', text=s_dataset["text"][s_index],labels=(s_pred[0],))
    context['s_sentence'] = s_dataset["text"][s_index]
    context['s_explanation'] = str(s_label_intdic[s_pred[0]])
    context['s_label_intdic'] = label_intdic

    if request.method == "POST":
        if request.json != None:
            context['word_list'] = request.json['word_list']
            context['checked_source'] = request.json['checked_source']
            print(context['word_list'], context['checked_source'])  
        
            context['feedback'] = "user selected " + label_intdic[int(context['checked_source'])]

    return flask.render_template("index.html", **context)
