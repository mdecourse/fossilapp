from flask import Flask, request

# for generating secret_key
import os

app = Flask(__name__)

# 使用 session 必須要設定 secret_key
# In order to use sessions you have to set a secret key
# set the secret key.  keep this really secret:
secret_key = os.urandom(24).hex()
app.secret_key = secret_key

@app.route("/")
def hello():
    return "<h1 style='color:blue'>Hello There!</h1>"

@app.route('/form')
def form():
    """Create form routine"""
    
    return "<html><body><h1>Create Fossil SCM Repository</h1><form method='post' action='genAccount'> \
     Account:<input type='text' name='account'><br \> \
     Password:<input type='password' name='password'><br \> \
    <input type='submit' value='genAccount'></form> \
    </section></div></body></html>"
    
    
@app.route('/genAccount', methods=['POST'])
def genAccount():

    """Generate Fossil SCM account
    """
    # get user input account and password
    account = request.form["account"]
    password = request.form["password"]
    return "account:" + account+"<br />" \
    + "password:" + password
if __name__ == "__main__":
    app.run(host='0.0.0.0')
