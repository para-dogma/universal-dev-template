import uuid, hashlib, json
from .model import TokenConfig, VectorData
from .ml_validator import MLValidator

class SmartGenerator:
    def __init__(self):
        self.validator = MLValidator()
        
    def generate(self) -> TokenConfig:
        vectors = [
            VectorData(name=f"Vec_{i}", value=hashlib.sha256(uuid.uuid4().bytes).hexdigest())
            for i in range(5)
        ]
        
        # ML Quality Gate
        if not self.validator.validate(vectors):
            return self.generate() # Retry
            
        root = hashlib.sha256("".join([v.value for v in vectors]).encode()).hexdigest()
        return TokenConfig(token_id=str(uuid.uuid4()), vectors=vectors, merkle_root=root, is_validated=True)
