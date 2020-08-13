from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello, World!"

@app.route("/sanjay")
def sanjay():
    return "hello, Sanjay 2!"

@app.route("/Home")
def home():
    name = "Sanjay"
    return render_template("Home.html",name = name)
app.run(debug=True)