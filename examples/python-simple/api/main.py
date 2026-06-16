from fastapi import FastAPI
from pydantic import BaseModel
import uuid

app = FastAPI(title="Universal Template Example")

class HealthCheck(BaseModel):
    status: str
    version: str

@app.get("/health", response_model=HealthCheck)
async def health():
    return {"status": "healthy", "version": "1.2.0"}

@app.get("/token-id")
async def generate_id():
    return {"id": str(uuid.uuid4())}
