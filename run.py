from flask import Flask, jsonify, Response

app = Flask(__name__)

@app.route('/status')
def status():
    return jsonify({ 'status': 'OK'})
