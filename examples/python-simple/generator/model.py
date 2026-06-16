from pydantic import BaseModel, Field
from typing import List

class VectorData(BaseModel):
    name: str = Field(..., description="Vector name")
    value: str = Field(..., description="Hashed value")

class SimpleToken(BaseModel):
    token_id: str
    vectors: List[VectorData]
    merkle_root: str
