#!/bin/bash

cd ~/my-fastapi-app
source venv/bin/activate
pip install -r requirements.txt
nohup uvicorn app:app --host 0.0.0.0 --port 8000 --reload > output.log 2>&1 &