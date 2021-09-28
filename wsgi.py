import fossilapp

uwsgi = False

application = fossilapp.app



if __name__ == "__main__":
    
    if uwsgi:
        application = fossilapp.app
    else:
        fossilapp.app.run(ssl_context = 'adhoc', host='140.130.17.34', port=8443)
        
