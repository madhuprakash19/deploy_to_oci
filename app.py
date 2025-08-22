from fastapi import FastAPI
from fastapi.responses import JSONResponse

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Welcome to my FastAPI Madhu!"}

@app.get("/test")
def test_endpoint():
    return JSONResponse(status_code=200, content={"status": "ok", "message": "Test successful"})
