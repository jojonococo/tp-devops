from flask import Flask
import redis

app = Flask(__name__)
r = redis.Redis(host="redis", port=6379)

@app.route("/")
def home():
    r.incr("counter")
    return f"Visites : {r.get('counter').decode()}"

app.run(host="0.0.0.0", port=5000)
