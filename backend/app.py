from flask import Flask, jsonify  # <-- on importe jsonify

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello from Backend (Flask)!"

@app.route('/status')  # <-- nouvelle route
def status():
    return jsonify({"status": "ok", "message": "Backend is running"})

if __name__ == '__main__':
    app.run(host='0.0.0.0')
