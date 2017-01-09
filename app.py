from flask import Flask, jsonify
from socket import gethostname

app = Flask(__name__)


@app.route("/")
def hello():
    return jsonify({'message': 'hello world.', 'hostname': gethostname()}), 200

if __name__ == "__main__":
    app.run(debug=False,host='0.0.0.0')
