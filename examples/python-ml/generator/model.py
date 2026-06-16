from pydantic import BaseModel, Field
from typing import List, Optional

class VectorData(BaseModel):
    name: str
    value: str
    metadata: Optional[dict] = None

class TokenConfig(BaseModel):
    token_id: str
    vectors: List[VectorData]
    merkle_root: str
    is_validated: bool = False
