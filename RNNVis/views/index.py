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
from RNNVis import lr_model, lr_vectorizer, dataset
import random
from datetime import datetime
import pickle
import sklearn
from sklearn.pipeline import Pipeline, make_pipeline
import lime
from lime import lime_text
from lime.lime_text import LimeTextExplainer
import matplotlib as plt


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
    labels = ['achievement','affection','bonding','enjoy the moment','exercise','leisure','nature']
    labeldict = {'achievement': 0,'affection': 1,'bonding': 2,'enjoy_the_moment': 3,'exercise': 4, 'leisure': 5,'nature': 6}
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
    return flask.render_template("index.html", **context)
