#!/bin/bash

cd ~/deploy_to_oci
source venv/bin/activate
pip install -r requirements.txt

# Find process using port 5000 and kill it (if any)
PID=$(sudo lsof -t -i:5002)

if [ -n "$PID" ]; then
    echo "Stopping process on port 5002 (PID: $PID)"
    kill $PID
fi

# Start the app
nohup venv/bin/uvicorn app:app --host 0.0.0.0 --port 5002 > app.log 2>&1 &
echo "Started new app with PID: $!"
