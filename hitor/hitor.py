from flask import Flask, jsonify, Response

app = Flask(__name__)

@app.route('/status')
def status():
    return jsonify({ 'status': 'OK'})

if __name__ == "__main__":
    application.run(host='0.0.0.0')
