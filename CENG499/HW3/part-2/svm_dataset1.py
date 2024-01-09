import pickle
import numpy as np
import matplotlib.pyplot as plt
from sklearn.svm import SVC
from sklearn.metrics import accuracy_score, f1_score

dataset, labels = pickle.load(open("data/part2_dataset1.data", "rb"))

svms = [ SVC(C = 0.5, kernel='poly'), \
         SVC(C = 0.5, kernel='rbf'), \
         SVC(C = 2, kernel='poly'), \
         SVC(C = 2, kernel='rbf') ]

def model_display_boundary(X, model, label):
    h = .01  # step size in the mesh, we can decrease this value for smooth plots, i.e 0.01 (but ploting may slow down)
    # create a mesh to plot in
    x_min, x_max = X[:, 0].min() - 3, X[:, 0].max() + 3
    y_min, y_max = X[:, 1].min() - 3, X[:, 1].max() + 3
    xx, yy = np.meshgrid(np.arange(x_min, x_max, h),
                         np.arange(y_min, y_max, h))

    aa = np.c_[xx.ravel(), yy.ravel()]
    Z = model.predict(aa)
    print(Z, set(Z))
    Z = Z.reshape(xx.shape)
    # plt.contour(xx, yy, Z, cmap=plt.cm.Paired)
    plt.contourf(xx, yy, Z, c=Z,  alpha=0.25) # cmap="Paired_r",
    # plt.contour(xx, yy, Z, colors='k', linewidths=0.7)
    plt.scatter(X[:, 0], X[:, 1], c=label, cmap="Paired_r", edgecolors='k');
    x_ = np.array([x_min, x_max])

    plt.xlim([-2, 2])
    plt.ylim([-2, 2])
    plt.show()

accuracies = []
max_acc = 0
max_acc_index = None

for i,svm in enumerate(svms):
    svm.fit(dataset, labels)
    predictions = svm.predict(dataset)

    acc = accuracy_score(labels, predictions)
    accuracies.append(acc)

    if acc > max_acc:
        max_acc = acc
        max_acc_index = i

print("All accuracies: ", accuracies)
print("Max accuracy: ", max_acc, " with C=", svms[max_acc_index].C, " kernel=", svms[max_acc_index].kernel)

for svm in svms:
    model_display_boundary(dataset, svm, labels)