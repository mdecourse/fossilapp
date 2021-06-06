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
<v t="yen.20210606100250.1"><vh>@edit README.md</vh></v>
<v t="yen.20210606100130.1"><vh>@edit .gitignore</vh></v>
<v t="yen.20210606100214.1"><vh>@edit LICENSE</vh></v>
<v t="yen.20210606091602.2"><vh>@clean fossilapp.py</vh>
<v t="yen.20210606091714.1"><vh>Declarations (fossilapp.py)</vh></v>
<v t="yen.20210606091714.2"><vh>hello (fossilapp.py)</vh></v>
<v t="yen.20210606092715.1"><vh>form</vh></v>
<v t="yen.20210606092616.1"><vh>genAccount</vh></v>
</v>
<v t="yen.20210606091717.1"><vh>@clean wsgi.py</vh>
<v t="yen.20210606091727.1"><vh>Declarations (wsgi.py)</vh></v>
</v>
</vnodes>
<tnodes>
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
<t tx="yen.20210606091714.1">from flask import Flask, request

# for generating secret_key
import os

app = Flask(__name__)

# 使用 session 必須要設定 secret_key
# In order to use sessions you have to set a secret key
# set the secret key.  keep this really secret:
secret_key = os.urandom(24).hex()
app.secret_key = secret_key

</t>
<t tx="yen.20210606091714.2">@app.route("/")
def hello():
    return "&lt;h1 style='color:blue'&gt;Hello There!&lt;/h1&gt;"

</t>
<t tx="yen.20210606091717.1">@others

if __name__ == "__main__":
    
    if uwsgi:
        application = fossilapp.app
    else:
        fossilapp.app.run()
        
@language python
@tabwidth -4
</t>
<t tx="yen.20210606091727.1">import fossilapp

uwsgi = True

application = fossilapp.app


</t>
<t tx="yen.20210606092616.1">@app.route('/genAccount', methods=['POST'])
def genAccount():

    """Generate Fossil SCM account
    """
    # get user input account and password
    account = request.form["account"]
    password = request.form["password"]
    return "account:" + account+"&lt;br /&gt;" \
    + "password:" + password</t>
<t tx="yen.20210606092715.1">@app.route('/form')
def form():
    """Create form routine"""
    
    return "&lt;html&gt;&lt;body&gt;&lt;h1&gt;Create Fossil SCM Repository&lt;/h1&gt;&lt;form method='post' action='genAccount'&gt; \
     Account:&lt;input type='text' name='account'&gt;&lt;br \&gt; \
     Password:&lt;input type='password' name='password'&gt;&lt;br \&gt; \
    &lt;input type='submit' value='genAccount'&gt;&lt;/form&gt; \
    &lt;/section&gt;&lt;/div&gt;&lt;/body&gt;&lt;/html&gt;"
    
    
</t>
</tnodes>
</leo_file>
