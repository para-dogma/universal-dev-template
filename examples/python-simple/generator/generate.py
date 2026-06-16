import uuid, hashlib, json
from .model import SimpleToken, VectorData

def generate_simple_token():
    vectors = [VectorData(name=f"Vec_{i}", value=hashlib.sha256(uuid.uuid4().bytes).hexdigest()) for i in range(5)]
    root = hashlib.sha256("".join([v.value for v in vectors]).encode()).hexdigest()
    token = SimpleToken(token_id=str(uuid.uuid4()), vectors=vectors, merkle_root=root)
    
    with open("simple_token.json", 'w') as f: json.dump(token.model_dump(), f, indent=2)
    print(f"✅ Simple token generated: {token.token_id[:8]}...")
    return token

if __name__ == "__main__": generate_simple_token()
