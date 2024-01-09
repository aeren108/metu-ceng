import numpy as np
import matplotlib.pyplot as plt
from DataLoader import DataLoader
from sklearn.preprocessing import MinMaxScaler
from sklearn.pipeline import Pipeline
from sklearn.svm import SVC

dataset, labels = DataLoader.load_credit_with_onehot("data/credit.data")
svm = SVC()
svm.fit(dataset, labels)
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(arr[5:6])

np.set_printoptions(threshold=99999)

positive_sv = svm.support_vectors_[svm.dual_coef_.ravel() > 0]
negative_sv = svm.support_vectors_[svm.dual_coef_.ravel() < 0]

def undo_onehot(sv):
    attr_len = [4, 1, 5, 10, 1, 5, 5, 1, 5, 3, 1, 4, 1, 3, 3, 1, 4, 1, 2, 2]
    sv_new = []
    for row in sv:
        features = []

        min_i = 0
        max_i = 0

        for length in attr_len:
            max_i += length
            if max_i > min_i + 1:
                features.append(np.argmax(row[min_i:max_i]))
            else:
                features.append(row[min_i])
            min_i = max_i

        row = features
        sv_new.append(features)

    return sv_new

positive_sv = np.asarray(undo_onehot(positive_sv))
negative_sv = np.asarray(undo_onehot(negative_sv))

# print(svm.support_vectors_)
# print(svm.support_)
# print(svm.n_support_)
# print(svm.dual_coef_.ravel())
# print(svm.support_vectors_.shape)
# print(dataset.shape)
# print(positive_sv.shape)
# print(negative_sv.shape)

file_path = 'positive_vectors.txt'
with open(file_path, 'w') as file:
    for vector in positive_sv:
        file.write(','.join(map(str, vector)) + '\n')

file_path = 'negative_vectors.txt'

with open(file_path, 'w') as file:
    for vector in negative_sv:
        file.write(','.join(map(str, vector)) + '\n')
