import numpy as np
import matplotlib.pyplot as plt
from DataLoader import DataLoader
from sklearn.preprocessing import MinMaxScaler
from sklearn.pipeline import Pipeline
from sklearn.tree import DecisionTreeClassifier

dataset, labels = DataLoader.load_credit("data/credit.data")
tree = DecisionTreeClassifier(criterion="gini")
tree.fit(dataset, labels)

print(tree.feature_importances_)