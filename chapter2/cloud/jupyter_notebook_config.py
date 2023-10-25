# JN config file 

# SSL ENCRYPTION
c.NotebookApp.certfile = u'/root/.jupyter/mycert.pem'
c.NotebookApp.keyfile = u'/root/.jupyter/mykey.key'

# IP ADDRESS and PORT
# set ip to '*' to bind on all interfaces (ips) of the cloud instance
c.NotebookApp.allow_origin = '*'
c.NotebookApp.ip = '0.0.0.0'
# it is a good idea to set a known, fixed default port for server access
c.NotebookApp.port = 8888

# Password protection
# here: 'jupyter' as password
# replace the hash bode with the one for your password 
c.NotebookApp.password = 'argon2:$argon2id$v=19$m=10240,t=10,p=8$UZtKw887Lq3siuLyTTedng$tmtlf6npG7z70V8KuG48cBFxRyaAkg9ZTJ4wzaVR41I'

# no browser by default
c.NotebookApp.open_browser = True

# Root access
# allow jupyter to run from the root user
c.NotebookApp.allow_root = True

# no token