from flask import Flask, request

# for generating secret_key
import os
import time

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
    
    # repository location path
    path = "/home/yen/repository/u/"
    
    output = ""
    
    # copy fossil repository from template.fossil
    command1 = "cp " + path + "template.fossil "  + path + account + ".fossil"
    
    output += command1 + "<br />"
    
    # add account as the repository user which need to force user use student number as account
    command2 = "fossil user new " + account + " " + account + "@gm.nfu.edu.tw " + password + " -R " + path + account + ".fossil"
    
    output += command2 + "<br />"
    
    # set account to be administrator which capability is "s" (setup)
    command3 = "fossil user capabilities " + account + " s"  + " -R " + path + account + ".fossil"
    
    output += command3 + "<br />"
    
    # change the origin "cd" account capabilities to none which is a vacant string " "
    command4 = "fossil user capabilities  cd  '' "  + " -R " + path + account + ".fossil"
    
    output += command4 + "<br />"
    
    output += "<br\><br \>"
    
    # change directory to user repository path
    os.system("cd " + path)
    
    # execute command1
    os.system(command1)
    
    # wait for 0.1 second
    time.sleep(0.1)
    
    # execute command2
    try:
        os.system(command2)
        output += "command2 completed <br />"
    except:
        output += "command2 failed<br \>"
    
    # wait for 0.1 second
    time.sleep(0.1)
    
    # execute command3
    try:
        os.system(command3)
        output += "command3 completed <br />"
    except:
        output += "command3 failed <br \>"
    
    # wait for 0.1 second
    time.sleep(0.1)
    
    # execute command4
    try:
        os.system(command4)
        output += "command4 completed <br />"
    except:
        output += "command4 failed<br \>"
    
    # return command for debug
    #return output
    
    return "account: " + account + " created!"
    
    '''
    return "account:" + account+"<br />" \
    + "password:" + password
    '''
if __name__ == "__main__":
    app.run(host='0.0.0.0')
