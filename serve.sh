#!/bin/bash
#
# local python web server on default port (8000)
#

cd /local/davmdoc/output && python -m pelican.server &

sleep 2

konqueror http://127.0.0.1:8000
