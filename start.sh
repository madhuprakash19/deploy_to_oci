#!/bin/bash

cd ~/deploy_to_oci
source venv/bin/activate
pip install -r requirements.txt
pkill -f uvicorn || true
nohup venv/bin/uvicorn app:app --host 0.0.0.0 --port 5002 > app.log 2>&1 &
