from urllib.request import urlopen
from os import getenv

with open("gog_project_zomboid.torrent", "wb") as pz:
    pz.write(urlopen(getenv("PZTORRENT")).read())
    pz.close()

