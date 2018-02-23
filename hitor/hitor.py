from flask import Flask, jsonify, Response
from hitor.Hitos import Hitos

app = Flask(__name__)
hitos = Hitos.Hitos()

@app.route('/status')
def status():
    """Devuelve estado"""
    return jsonify({ 'status': 'OK'})

@app.route('/hito/<int:numero>')
def hito(numero):
    """Devuelve hito"""
    if numero < hitos.cuantos():
        return jsonify({ 'hito': hitos.uno(numero) })
    else:
        return Response( { 'error': 'Número grande' },
                         status=404,
                         mimetype='application/json' )
            
if __name__ == "__main__":
    app.run(host='0.0.0.0')
