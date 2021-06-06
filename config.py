import authomatic
from authomatic.providers import oauth2

CALLBACK_URL = "https://fossil.kmol.info:9443/menu"

# read client_id and client_secret from safe place other than put into script
# current setting only allow @gm user login
keyFile = open('./../scrum2_client_secret.txt', 'r')
with open('./../scrum2_client_secret.txt', 'r') as f:
    key = f.read().splitlines()

CONFIG = {
        'google': {
            'class_': oauth2.Google,
            'consumer_key': key[0],
            'consumer_secret': key[1],
            'scope': oauth2.Google.user_info_scope
        }
    }