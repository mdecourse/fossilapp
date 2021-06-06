import fossilapp

uwsgi = True

application = fossilapp.app



if __name__ == "__main__":
    
    if uwsgi:
        application = fossilapp.app
    else:
        fossilapp.app.run()
        
