import pickle
import numpy as np
import matplotlib.pyplot as plt
from sklearn.svm import SVC
from sklearn.metrics import accuracy_score, f1_score
from sklearn.model_selection import StratifiedKFold, RepeatedStratifiedKFold, GridSearchCV, cross_val_score
from sklearn.pipeline import Pipeline
from sklearn.preprocessing import StandardScaler

dataset, labels = pickle.load(open("data/part2_dataset2.data", "rb"))

params = {
    "C": [0.5, 2],
    "kernel": ["poly", "rbf"]
}

accuracy_log = {}

kfold = StratifiedKFold(n_splits=10, shuffle=True)

def cross_validate():
    accuracy_log = {}

    for train_indices, test_indices in kfold.split(dataset, labels):
        current_train = dataset[train_indices]
        current_train_label = labels[train_indices]

        current_test = dataset[test_indices]
        current_test_label = labels[test_indices]

        for c in params["C"]:
            if c not in accuracy_log:
                accuracy_log[c] = dict()

            for kernel in params["kernel"]:
                if kernel not in accuracy_log[c]:
                    accuracy_log[c][kernel] = []

                svm = SVC(C=c, kernel=kernel)
                pipeline = Pipeline(steps=[("scaler", StandardScaler()), \
                                            ("svc", svm)])
                pipeline.fit(current_train, current_train_label)

                predicted = pipeline.predict(current_test)
                acc = accuracy_score(current_test_label, predicted)
                accuracy_log[c][kernel].append(acc)

    for c in accuracy_log:
        for kernel in accuracy_log[c]:
            accuracy_log[c][kernel] = np.mean(accuracy_log[c][kernel])

    return accuracy_log

# returns 95% confidence interval
def confidence_interval(data):
    data = np.asarray(data)
    mean = np.mean(data)
    std = np.std(data)

    return mean - 1.96 * std / np.sqrt(len(data)), mean + 1.96 * std / np.sqrt(len(data))

def plot_confidence_interval(x, top, bottom, color='#2187bb', horizontal_line_width=0.1):
    mean = (top + bottom ) / 2
    left = x - horizontal_line_width / 2
    right = x + horizontal_line_width / 2

    plt.plot([x, x], [top, bottom], color=color)
    plt.plot([left, right], [top, top], color=color)
    plt.plot([left, right], [bottom, bottom], color=color)
    #plt.plot(x, mean, 'o', color='#f44336')

if __name__ == "__main__":
    accuracies = {}
    for c in params["C"]:
        accuracies[c] = dict()
        for k in params["kernel"]:
            accuracies[c][k] = []

    for i in range(5):
        acc_i = cross_validate()

        for c in acc_i:
            for k in acc_i[c]:
                accuracies[c][k].append(acc_i[c][k])

    i = 1
    for c in params["C"]:
        for k in params["kernel"]:
            accuracies[c][k] = confidence_interval(accuracies[c][k])
            plot_confidence_interval(i, accuracies[c][k][0], accuracies[c][k][1])
            i += 1

plt.title("Confidence Intervals for Accuracies")
plt.xticks(np.arange(1, 4+1, 1.0))
plt.show()

# gridscv = GridSearchCV(estimator=pipeline, param_grid=params, scoring="accuracy", cv=cross_validation, verbose=True, refit=True)
# gridscv.fit(dataset, labels)

# print(gridscv.cv_results_)
