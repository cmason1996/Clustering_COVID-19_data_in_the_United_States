from flask import Flask, render_template

app = Flask(__name__)

# Homepage
@app.route('/')
def homepage():
    return render_template("homepage.html")

# About page
@app.route("/about")
def about():
    return render_template("about.html")

# First route
@app.route("/vis1")
def vis1():
    return render_template("vis1.html")

# Second route
@app.route("/vis2")
def vis2():
    return render_template("vis2.html")

# Third route
@app.route("/vis3")
def vis3():
    return render_template("vis3.html")

if __name__ == "__main__":
    app.run(debug=True, use_reloader=True)

