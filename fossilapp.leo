<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2"/>
<globals/>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="yen.20210606091617.1"><vh>@settings</vh>
<v t="yen.20210606091617.2"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="yen.20210606091617.3"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="yen.20210607012830.1"><vh>About</vh>
<v t="leo.20210928145955.1"><vh>for 34 test</vh></v>
<v t="leo.20210928214455.1"><vh>under waitress</vh></v>
<v t="yen.20210607095902.1"><vh>wsgi service</vh>
<v t="yen.20210607100050.1"><vh>@path fossil_template</vh>
<v t="yen.20210607100102.1"><vh>@edit fossil_readme.txt</vh></v>
</v>
</v>
<v t="yen.20210607012835.1"><vh>generate self-signed certificate</vh></v>
<v t="yen.20210607014414.1"><vh>Oauth2</vh></v>
<v t="leo.20211229164509.1"><vh>config.py</vh></v>
<v t="yen.20210607012905.1"><vh>oauth2 for @gm user</vh>
<v t="yen.20210607012905.2"><vh>oauth2 使用 authomatic</vh>
<v t="yen.20210607012905.3"><vh>google 設定</vh></v>
<v t="yen.20210607012905.4"><vh>啟用步驟</vh></v>
</v>
<v t="yen.20210607012905.5"><vh>read client id and secret from file</vh></v>
<v t="yen.20210607012905.6"><vh>generate secret id for Flask</vh></v>
<v t="yen.20210607012905.7"><vh>Google logout and redirect</vh></v>
</v>
</v>
<v t="yen.20210606100250.1"><vh>@edit README.md</vh></v>
<v t="yen.20210606100130.1"><vh>@edit .gitignore</vh></v>
<v t="yen.20210606100214.1"><vh>@edit LICENSE</vh></v>
<v t="yen.20210607011849.1"><vh>@edit config.py</vh></v>
<v t="leo.20210928214647.1"><vh>@edit waitress_server.py</vh></v>
<v t="yen.20210606091602.2"><vh>@clean fossilapp.py</vh>
<v t="yen.20210606091714.1"><vh>Declarations (fossilapp.py)</vh></v>
<v t="yen.20210607012220.1"><vh>login_required</vh></v>
<v t="yen.20210607012641.1"><vh>index</vh></v>
<v t="yen.20210607012249.1"><vh>menu</vh></v>
<v t="yen.20210607011234.1"><vh>login</vh></v>
<v t="yen.20210607011601.1"><vh>logout</vh></v>
<v t="yen.20210606091714.2"><vh>hello (fossilapp.py)</vh></v>
<v t="yen.20210606092715.1"><vh>form</vh></v>
<v t="yen.20210606092616.1"><vh>genAccount</vh></v>
</v>
<v t="yen.20210606091717.1"><vh>@clean wsgi.py</vh>
<v t="yen.20210606091727.1"><vh>Declarations (wsgi.py)</vh></v>
</v>
<v t="yen.20210607011406.1"><vh>@path templates</vh>
<v t="yen.20210607012542.1"><vh>@edit base.html</vh></v>
<v t="yen.20210607012704.1"><vh>@edit index.html</vh></v>
<v t="yen.20210607011512.1"><vh>@edit alogin.html</vh></v>
<v t="yen.20210607011415.1"><vh>@edit login.html</vh></v>
<v t="yen.20210607012337.1"><vh>@edit menu.html</vh></v>
</v>
</vnodes>
<tnodes>
<t tx="leo.20210928145955.1">use scrum1 At mde

setup site: https://console.developers.google.com

for test only: use https://cd04.kmol.info:8443

need DNS to set kmol dot info for production

need to install authormatic and mako

pip install authormatic

pip install mako

check templates/login.html content
</t>
<t tx="leo.20210928214455.1">https://github.com/Pylons/waitress/blob/36240c88b1c292d293de25fecaae1f1d0ad9cc22/docs/reverse-proxy.rst

from waitress import serve
serve(wsgiapp, listen='0.0.0.0:8080', url_scheme='https')

same as in Ubuntu /etc/environment HTTPS=on</t>
<t tx="leo.20211229164509.1">以下在整理 fossilapp 相關設定參數, 擬改寫時將所有設定存入 config.py, 然後導入主要程式中運用.

當配置 fossilapp 網際程式時, 需要:

Google oauth2 client key and secret 檔案 (必須放在倉儲以外的目錄):

例如:

第一列: 214-this_is_key.apps.googleusercontent.com

第二列: this_is_secret-pktheSAqSunfu

Fossil SCM server domain name: 例如: c11.cycu.org

Fossil SCM server repository path: 例如: c:/pj2022/multi_repo/

Fossil SCM server default repository: 例如: default.fossil

Fossil SCM server template repository (複製用): 例如: template.fossil

Fossil SCM port: 例如: 5443

fossilapp port: 例如: 9443

從 domain name 與 repository name 得知:

Login 連結: https://c11.cycu.org:5443/default/login

Menu 連結: https://c11.cycu.org:9443/menu

自建 Fossil SCM 管理者帳號權限: 例如: 's'

自建 Fossil SCM 倉儲存放位置: 例如: path = "c:/pj2022/multi_repo"

fossilapp 網際程式執行 URL: 例如: https://c1.kmol.info:9443, 以及執行 menu 連結 https://c1.kmol.info:9443/menu (目的在帶出新建 repo 的表單).

以上這些設定應該要寫入 config.py

因為要改寫 fossilapp, 因此在 Ubuntu 安裝 Leo:

sudo pip3 install leo

安裝結束後, 以 leo&amp; 啟動.</t>
<t tx="yen.20210606091602.2">@others
if __name__ == "__main__":
    app.run(host='0.0.0.0')
@language python
@tabwidth -4
</t>
<t tx="yen.20210606091617.1"></t>
<t tx="yen.20210606091617.2">QSplitter::handle {
    background-color: #CAE1FF; /* lightSteelBlue1 */
}

QStackedWidget {
    /* background-color:lightpink; */
    border-color: red;
    padding: 0px;
    /* border-width: 0px; */
    /* background-color: yellow; */
}

QSplitter {
    border-color: white;
    background-color: white;
    border-style: solid;
}

QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="yen.20210606091617.3">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="yen.20210606091714.1">#from flask import Flask, request
# import from flask
from flask import Flask, request, redirect, url_for, flash, \
                render_template, session, make_response
                           
# for authomatic
from authomatic.adapters import WerkzeugAdapter
from authomatic import Authomatic

# from config.py 導入 CONFIG and CALLBACK_URL
from config import CONFIG
from config import CALLBACK_URL

# for generating secret_key
import os
import time

# for mako template engine
# for mako template 系統
from mako.template import Template
from mako.lookup import TemplateLookup

# for login_required
from functools import wraps

# all setup in config.py
import config

# Instantiate Authomatic.
# generate secret string randomly
secret = os.urandom(24).hex()
authomatic = Authomatic(CONFIG, secret, report_errors=False)

# 確定程式檔案所在目錄, 在 Windows 有最後的反斜線
_curdir = os.path.join(os.getcwd(), os.path.dirname(__file__))
template_root_dir = _curdir + "/templates"

app = Flask(__name__)

# 使用 session 必須要設定 secret_key
# In order to use sessions you have to set a secret key
# set the secret key.  keep this really secret:
secret_key = os.urandom(24).hex()
app.secret_key = secret_key

</t>
<t tx="yen.20210606091714.2">@app.route("/hello")
@login_required
def hello():
    return "&lt;h1 style='color:blue'&gt;Hello There!&lt;/h1&gt;"

</t>
<t tx="yen.20210606091717.1">@others

if __name__ == "__main__":
    
    if uwsgi:
        application = fossilapp.app
    else:
        fossilapp.app.run(ssl_context = 'adhoc', host='127.0.0.1', port=9443)
        
@language python
@tabwidth -4
</t>
<t tx="yen.20210606091727.1">import fossilapp

uwsgi = False

application = fossilapp.app


</t>
<t tx="yen.20210606092616.1">@app.route('/genAccount', methods=['POST'])
@login_required
def genAccount():

    """Generate Fossil SCM account
    """
    # get user input account and password
    #account = request.form["account"]
    # get user student number from session
    loginUser = session.get('user')
    account = loginUser
    password = request.form["password"]
    password2 = request.form["password2"]
    
    # Check if two password matched
    if password != password2:
        warning = "Passwords  do not match!&lt;br \&gt;"
        warning += "Please go back and retype!"
        return warning
    
    # To avoid shell command injection, accept only numbers for Account
    '''
    # get user account from session
    if account.isdigit():
        pass
    else:
        return "Accept only numbers for Account!"
    '''
    
    # To avoid shell command injection, no special characters allowed for Password
    for i in range(len(password)):
        if password[i] in ["&amp;", "|", ";", "$","&gt;", "&lt;", "`", "\\","!"]:
            return "No special characters allowed for Password!"
    
    # repository location path
    #path = "/home/yen/repository/u/"
    #path = "C:/pj2022/multi_repo/"
    path = config.repo_path
    
    output = ""
    
    # copy fossil repository from template.fossil
    command1 = "copy " + path + config.template_repo + ".fossil "  + path + account + ".fossil"
    output += command1 + "&lt;br /&gt;"
    
    # add account as the repository user which need to force user use student number as account
    command2 = config.fossil_command + " user new " + account + " " + account + "@gm.nfu.edu.tw " + password + " -R " + path + account + ".fossil"
    output += command2 + "&lt;br /&gt;"
    
    # set account to be administrator which capability is "s" (setup)
    command3 = config.fossil_command + " user capabilities " + account + " s"  + " -R " + path + account + ".fossil"
    output += command3 + "&lt;br /&gt;"
    
    # change the origin "cd" account capabilities to none which is a vacant string " "
    command4 = config.fossil_command + " user capabilities " + config.template_account + " \" \" " + " -R " + path + account + ".fossil"
    output += command4 + "&lt;br /&gt;"
    output += "&lt;br\&gt;&lt;br \&gt;"
    
    # change directory to user repository path
    os.system("cd " + path)
    
    # execute command1
    try:
        os.system(command1)
        output += "command1 completed &lt;br /&gt;"
    except:
        return "Error! 倉儲已經存在! &lt;br /&gt;"
        
    
    # wait for 0.1 second
    time.sleep(0.1)
    
    # execute command2
    try:
        os.system(command2)
        output += "command2 completed &lt;br /&gt;"
    except:
        output += "command2 failed&lt;br \&gt;"
    
    # wait for 0.1 second
    time.sleep(0.1)
    
    # execute command3
    try:
        os.system(command3)
        output += "command3 completed &lt;br /&gt;"
    except:
        output += "command3 failed &lt;br \&gt;"
    
    # wait for 0.1 second
    time.sleep(0.1)
    
    # execute command4
    try:
        os.system(command4)
        output += "command4 completed &lt;br /&gt;"
    except:
        output += "command4 failed&lt;br \&gt;"
    
    # return command for debug
    #return output

    return "Repository: " + account + " created!&lt;br /&gt;&lt;br \&gt;" + \
    "Link to repository: &lt;a href='https://" + config.domain_name + ":" + config.fossil_port + "/" +account + "'&gt;" + \
    account + "&lt;/a&gt;"

    '''
    return "account:" + account+"&lt;br /&gt;" \
    + "password:" + password
    '''</t>
<t tx="yen.20210606092715.1">@app.route('/form')
@login_required
def form():
    """Create form routine"""
    
    # get user student number from session
    loginUser = session.get('user')
    
    output = "&lt;html&gt;&lt;body&gt;&lt;h1&gt;Create Fossil SCM Repository&lt;/h1&gt;&lt;form method='post' action='genAccount'&gt;"
    output += "Please set the password for your Fossil SCM repository: "
    output += loginUser + "&lt;br \&gt;&lt;br \&gt;"
    output += "Password:&lt;input type='password' name='password'&gt;&lt;br \&gt;&lt;br \&gt; "
    output += "Retype Password:&lt;input type='password' name='password2'&gt;&lt;br \&gt;&lt;br \&gt; "
    output += "&lt;input type='submit' value='Create Repository'&gt;&lt;/form&gt;&lt;/section&gt;&lt;/div&gt;&lt;/body&gt;&lt;/html&gt;"
    
    return output
    
    
</t>
<t tx="yen.20210607011234.1">@app.route('/login/&lt;provider_name&gt;/', methods=['GET', 'POST'])
def login(provider_name):
    
    # We need response object for the WerkzeugAdapter.
    response = make_response()
    
    # Log the user in, pass it the adapter and the provider name.
    result = authomatic.login(WerkzeugAdapter(request, response), provider_name)
    
    # If there is no LoginResult object, the login procedure is still pending.
    if result:
        if result.user:
            # We need to update the user to get more info.
            result.user.update()
        
        # use session to save login user's email (試著將 @ 換為 _at_)
        #session['loginEmail'] = result.user.email.replace('@', '_at_')
        '''
        loginUser = result.user.email.split("@")[0]
        session["user"] = loginUser
        session["login"] = True
        template_lookup =
        '''
        # only get the string before @
        loginUser = result.user.email.split("@")[0]
        loginDomain = result.user.email.split("@")[1]
        
        # only kmoler can login
        #kmoler = ["scrum2"]
        #if loginUser in kmoler:
        
        # only @gm.nfu.edu.tw can login
        if loginDomain == "gm.nfu.edu.tw":
            session["user"] = loginUser
            session["login"] = True
            template_lookup = TemplateLookup(directories=[template_root_dir])
            loginTemplate = template_lookup.get_template("login.html")
    
            return loginTemplate.render(result=result, CALLBACK_URL=CALLBACK_URL)
        else:
            return "Sorry, you are not allowed to login."

    # Don't forget to return the response.
    return response
</t>
<t tx="yen.20210607011406.1"></t>
<t tx="yen.20210607011601.1">@app.route('/logout')
def logout():
    session.pop('login' , None)
    session.pop('user', None)
    flash('Logged out!')
    return redirect(url_for('index'))</t>
<t tx="yen.20210607012220.1">def login_required(f):
    @wraps(f)
    def wrap(*args, **kwargs):
        if 'login' in session:
            return f(*args, **kwargs)
        else:
            flash("You need to login first")
            return redirect(url_for('index'))

    return wrap</t>
<t tx="yen.20210607012249.1">@app.route("/menu")
@login_required
def menu():
    menuList = ["form"]
    template_lookup = TemplateLookup(directories=[template_root_dir])
    menuTemplate = template_lookup.get_template("menu.html")
    return menuTemplate.render(menuList=menuList)</t>
<t tx="yen.20210607012641.1">@app.route('/')
# root of the system can not set "login_required" decorator
# 開始改用 Make 作為 Template
def index():
    template_lookup = TemplateLookup(directories=[template_root_dir])
    indexTemplate = template_lookup.get_template("index.html")
    return indexTemplate.render()
</t>
<t tx="yen.20210607012830.1">fossilapp web application

sudo pip3 install flask authomatic mako</t>
<t tx="yen.20210607012835.1">Location of openssl from https://www.msys2.org/

y:\msys64\mingw64\bin\openssl.exe

openssl req -x509 -nodes -days 600 -newkey rsa:2048 -keyout cd2020.key -out cd2020.crt</t>
<t tx="yen.20210607012905.1">Setup URL

https://console.developers.google.com

First setup, the welcome popup:

    Welcome, KMOLab!
    
    Create and manage your Google Cloud Platform instances, disks, networks and other resources in one place.
    
    need to agree the Terms of Service.
    
You have 12 projects remaining in your quota. 

----
Enable Google + Domain API

Go to credentials

Remember to configure the OAuth consent screen with information about your application.

----
OAuth consent screen

Choose how you want to configure and register your app, including your target users. You can only associate one app with your project.

User type:

choose internal: only allow @gm user to login

Press Create
----
Create OAuth client ID

Application type: Web application</t>
<t tx="yen.20210607012905.2">http://peterhudec.github.io/authomatic/</t>
<t tx="yen.20210607012905.3">config.py

from authomatic.providers import oauth2

CONFIG = {
        'google': {
            'class_': oauth2.Google,
            'consumer_key': '##########',
            'consumer_secret': '##########',
            'id': authomatic.provider_id(),
            'scope': oauth2.Google.user_info_scope
        }
    }
    '''
        'scope': ['https://www.googleapis.com/auth/userinfo.profile',
        'https://www.googleapis.com/auth/userinfo.email']
    '''

main.py

from flask import Flask, render_template, request, make_response
from authomatic.adapters import WerkzeugAdapter
from authomatic import Authomatic

from config import CONFIG

@app.route('/')
def index():
    return render_template('index.html')
    
@app.route('/login/&lt;provider_name&gt;/', methods=['GET', 'POST'])
def login(provider_name):
    response = make_response()
    result = authomatic.login(WerkzeugAdapter(request, response), provider_name)
    
    # You need to set a secret string otherwise the session will not work.
app.secret_key = 'random secret string'

    result = authomatic.login(
    WerkzeugAdapter(request, response),
    provider_name,
    session=session,
    session_saver=lambda: app.save_session(session, response)
    )
    if result:
        if result.user:
            result.user.update()
        return render_template('login.html', result=result)
    return response
    
{# base.html #}
&lt;!DOCTYPE html&gt;
&lt;html&gt;
    &lt;head&gt;
        &lt;title&gt;Authomatic Flask Example&lt;/title&gt;
    &lt;/head&gt;
    &lt;body&gt;
        {% block body %}{% endblock %}
    &lt;/body&gt;
&lt;/html&gt;

{# index.html #}
{% extends "base.html" %}
{% block body %}

    &lt;!--Links to the login handler--&gt;
    Login with &lt;a href="login/fb"&gt;Facebook&lt;/a&gt;.&lt;br /&gt;
    Login with &lt;a href="login/tw"&gt;Twitter&lt;/a&gt;.&lt;br /&gt;
    
    &lt;!--OpenID form--&gt;
    &lt;form action="login/oi"&gt;
        &lt;input type="text" name="id" value="me.yahoo.com" /&gt;
        &lt;input type="submit" value="Authenticate With OpenID"&gt;
    &lt;/form&gt;

{% endblock %}

{# login.html #}
{% extends "base.html" %}
{% block body %}
    &lt;a href="/"&gt;Home&lt;/a&gt;
    
    {% if result.error %}
        &lt;h2&gt;Damn that error: {{ result.error.message }}&lt;/h2&gt;
    {% endif %} 
    
    {% if result.user %}
        &lt;h1&gt;Hi {{ result.user.name }}&lt;/h1&gt;
        &lt;h2&gt;Your id is: {{ result.user.id }}&lt;/h2&gt;
        &lt;h2&gt;Your email is: {{ result.user.email }}&lt;/h2&gt;
    {% endif %}
    
    {% if result.user.credentials %}
            {% if result.provider.name == 'fb' %}
            Your are logged in with Facebook.&lt;br /&gt;
            {% set url = 'https://graph.facebook.com/{0}?fields=feed.limit(5)'.format(result.user.id) %}
            {% set response = result.provider.access(url) %}
            {% if response.status == 200 %}
            {% if response.data.error %}
                Damn that error: {{ response.data.error }}!
            {% endif %}
             {% if response.data.feed.data %}
                Your 5 most recent statuses:&lt;br /&gt;
                {% for status in response.data.feed.data %}
                    &lt;h3&gt;{{ status.message or status.name or status.story }}&lt;/h3&gt;
                    Posted on: {{ status.created_time }}
                {% endfor %}
            {% endif %}
                {% endif %}{# response.status == 200 #}
            {% endif %}{# result.provider.name == 'fb' #}
</t>
<t tx="yen.20210607012905.4">
設定網址:

https://console.developers.google.com

總共有兩項設定:

1. 啟用 Google + API

2. 然後到憑證處建立專案, 設定授權的 URI

然後 config.py 部份:

##############################################

import authomatic
from authomatic.providers import oauth2

CONFIG = {
        'google': {
            'class_': oauth2.Google,
            'consumer_key': '#######',
            'consumer_secret': '#######',
            'scope': oauth2.Google.user_info_scope
        }
    }
    
###############################################

# 接著為 login 部份

@app.route('/autho_login/&lt;provider_name&gt;/', methods=['GET', 'POST'])
def autho_login(provider_name):
    
    # We need response object for the WerkzeugAdapter.
    response = make_response()
    
    # Log the user in, pass it the adapter and the provider name.
    result = authomatic.login(WerkzeugAdapter(request, response), provider_name)
    
    # If there is no LoginResult object, the login procedure is still pending.
    if result:
        if result.user:
            # We need to update the user to get more info.
            result.user.update()
        
        # The rest happens inside the template.
        return render_template('autho_login.html', user_name=result.user.name, user_id=result.user.id, user_email=result.user.email, result=result)
    
    # Don't forget to return the response.
    return response</t>
<t tx="yen.20210607012905.5">@language python

keyFile = open('./../oauth_gm.txt', 'r')
with open('./../oauth_gm.txt', 'r') as f:
    key = f.read().splitlines()
g.es(key)</t>
<t tx="yen.20210607012905.6">@language python
# Windows use Ctrl + b to execute under Leo Editor node
# Mac use Command +b to execute
# this key is to keep the session safe
import secrets

g.es(secrets.token_urlsafe(24))
</t>
<t tx="yen.20210607012905.7">https://stackoverflow.com/questions/4202161/google-account-logout-and-redirect

https://www.google.com/accounts/Logout?continue=https://appengine.google.com/_ah/logout?continue=https://localhost:8443/guess

When user login with Gmail account, user email is saved into session and logout from Gmail by using javascript and redirect to https://localhost:8443/guess</t>
<t tx="yen.20210607014414.1">Use scrum1 at mde to get the json file

setup site: https://console.developers.google.com

scrum1_client_secret.txt has two lines:
the first line is client key
the second line is client secret</t>
<t tx="yen.20210607095902.1">restart the wsgi service:

sudo systemctl restart wsgi</t>
<t tx="yen.20210607100050.1"></t>
</tnodes>
</leo_file>
