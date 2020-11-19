"""
RNNVis index (main) view.

URLs include:
/
"""
import os
import shutil
import tempfile
import uuid
import hashlib
import flask
from flask import send_from_directory
from flask import url_for
import RNNVis
import random
from datetime import datetime


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
    # flask.session['username'] = "cheney"# Test only
    """Display / route."""
    context = {}
    if 'username' not in flask.session:
        # return flask.redirect(flask.url_for('login'))
        context['logname'] = 'none'
        pass
    context['sentence'] = 'Someone on a forum out there suggested that the reason the trailing space is added to the highlighted word is because Microsoft Windows assumes you’re going to be pasting that word somewhere else in your paragraph and that you’ll likely need that space.'
    context['word_weight'] = url_for('uploaded_file', filename='affection_sample.png')
    context['pred_prob'] = url_for('uploaded_file', filename='prediction_prob.png')
    context['explanation'] = "Above is the visualization of the model's output. Based on the sentence, the model has categorized its happy source as xxx. "
    return flask.render_template("index.html", **context)
