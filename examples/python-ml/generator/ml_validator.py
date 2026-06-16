import numpy as np
from sklearn.ensemble import IsolationForest
from typing import List
from .model import VectorData

class MLValidator:
    def __init__(self):
        self.model = IsolationForest(contamination=0.1, random_state=42)
        
    def validate(self, vectors: List[VectorData]) -> bool:
        # Упрощенная логика для примера
        features = [[len(v.value), len(str(v.metadata or {}))] for v in vectors]
        X = np.array(features)
        preds = self.model.fit_predict(X)
        return -1 not in preds
