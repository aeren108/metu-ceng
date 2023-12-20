import pickle
import numpy as np
import matplotlib.pyplot as plt
from sklearn.model_selection import StratifiedKFold, train_test_split
from Distance import Distance
from Knn import KNN

dataset, labels = pickle.load(open("data/part1_dataset.data", "rb"))

knn1 = KNN(dataset=None, data_label=None, K=3, similarity_function=Distance.calculateCosineDistance, similarity_function_parameters=None)
knn2 = KNN(dataset=None, data_label=None, K=3, similarity_function=Distance.calculateMinkowskiDistance, similarity_function_parameters=2)
knn3 = KNN(dataset=None, data_label=None, K=5, similarity_function=Distance.calculateCosineDistance, similarity_function_parameters=None)
knn4 = KNN(dataset=None, data_label=None, K=5, similarity_function=Distance.calculateMinkowskiDistance, similarity_function_parameters=2)
knn5 = KNN(dataset=None, data_label=None, K=5, similarity_function=Distance.calculateMahalanobisDistance, similarity_function_parameters=np.linalg.inv(np.cov(dataset.T)))

models = [knn1, knn2, knn3, knn4, knn5]

def prepare_dataset():
    skf = StratifiedKFold(n_splits=10, shuffle=True)
    train_indices, test_indices = skf.split(dataset, labels)[0]

    train_x = dataset[train_indices]
    train_y = labels[train_indices]

    test_x = dataset[test_indices]
    test_y = labels[test_indices]

    return (train_x, train_y, test_x, test_y)

def cross_validate(train_x, train_y):
    skf = StratifiedKFold(n_splits=10, shuffle=True)

    avg_accuracies = [0, 0, 0, 0, 0]

    for train_index, test_index in skf.split(train_x, train_y):
        train_fold_x = train_x[train_index]
        train_fold_y = train_y[train_index]

        test_fold_x = train_x[test_index]
        test_fold_y = train_y[test_index]

        accuracies = []

        for i, model in enumerate(models):
            model.dataset = train_fold_x
            model.dataset_label = train_fold_y
        
            correct_count = 0
            for i, test_data in enumerate(test_fold_x):
                if model.predict(test_data) == test_fold_y[i]:
                    correct_count += 1

            accuracy = correct_count / len(test_fold_x)
            accuracies.append(accuracy)
    
        for i, acc in enumerate(accuracies):
            avg_accuracies[i] += acc

    for i, avg_acc in enumerate(avg_accuracies):
        avg_accuracies[i] = avg_acc / 10

    return avg_accuracies, np.argmax(np.asarray(avg_accuracies))

def confidence_interval(data):
    data = np.asarray(data)
    mean = np.mean(data)
    std = np.std(data)

    return mean - 1.96 * std / np.sqrt(len(data)), mean + 1.96 * std / np.sqrt(len(data))

def plot_confidence_interval(x, top, bottom, color='#2187bb', horizontal_line_width=0.2):
    mean = (top + bottom ) / 2
    left = x - horizontal_line_width / 2
    right = x + horizontal_line_width / 2
    
    plt.plot([x, x], [top, bottom], color=color)
    plt.plot([left, right], [top, top], color=color)
    plt.plot([left, right], [bottom, bottom], color=color)
    #plt.plot(x, mean, 'o', color='#f44336')

def test_accuracy(test_x, test_y, model):
    correct_count = 0
    for i, test_data in enumerate(test_x):
        if model.predict(test_data) == test_y[i]:
            correct_count += 1

    return correct_count / len(test_x)

model_accuracies = [[], [], [], [], []]
best_acc = 0
best_index = 0
for i in range(5):
    train_x, test_x, train_y, test_y = train_test_split(dataset, labels, test_size=0.2, shuffle=True)
    accuracies, best_index = cross_validate(train_x, train_y)
    best_model = models[best_index]
    best_acc = test_accuracy(test_x, test_y, best_model)
    
    print(accuracies)

    for i in range(len(accuracies)):
        model_accuracies[i].append(accuracies[i])

for i, accs in enumerate(model_accuracies):
    bottom, top = confidence_interval(accs)
    plot_confidence_interval(i+1, top, bottom)


print(best_index, best_acc)

plt.title("Confidence Intervals for Accuracies")
plt.show()
#print(dataset, labels)