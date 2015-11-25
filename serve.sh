#!/bin/bash
#
# local python web server on default port (8000)
#

cd /local/davmdoc/output && python -m pelican.server &

sleep 2

konqueror http://127.0.0.1:8000

# this is how you can open another url in a new tab of an existing konqueror
# qdbus `qdbus | grep -m1 konqueror` /konqueror/MainWindow_1 org.kde.Konqueror.MainWindow.newTab http://uts.edu.au False
