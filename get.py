import urllib
import urllib.request
import os
url=os.getenv("PZTORRENT")
req = urllib.request.urlopen(url)
with open("gog_project_zomboid.torrent", "wb") as pz:
    pz.write(req.read())
    pz.close()

