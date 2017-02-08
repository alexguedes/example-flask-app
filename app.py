from flask import Flask, jsonify
from socket import gethostname
from os import getenv

app = Flask(__name__)


@app.route("/")
def hello():
    return jsonify({'message': 'hello world.', 'hostname': gethostname()}), 200

port = getenv('VCAP_APP_PORT', '5000') 
if __name__ == "__main__":
    app.run(debug=False, host='0.0.0.0', port=int(port), threaded=True)
