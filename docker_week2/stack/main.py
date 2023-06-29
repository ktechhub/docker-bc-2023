import os
from fastapi import FastAPI

app = FastAPI()

db_password = os.getenv("DB_PASSWORD", "default-pass")

@app.get("/")
def read_root():
    return {"message": "Database password: " + db_password}
