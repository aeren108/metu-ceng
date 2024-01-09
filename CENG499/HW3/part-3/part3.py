import numpy as np
import matplotlib.pyplot as plt
from DataLoader import DataLoader
from sklearn.model_selection import StratifiedKFold, \
                                    RepeatedStratifiedKFold, \
                                    GridSearchCV
from sklearn.neighbors import KNeighborsClassifier
from sklearn.svm import SVC
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score, f1_score
from sklearn.preprocessing import MinMaxScaler
from sklearn.pipeline import Pipeline


data_path = "data/credit.data"
dataset, labels = DataLoader.load_credit_with_onehot(data_path)

outer_cross_validation = RepeatedStratifiedKFold(n_splits=3, n_repeats=5, random_state=np.random.randint(1, 1000))
inner_cross_validation = RepeatedStratifiedKFold(n_splits=5, n_repeats=5, random_state=np.random.randint(1, 1000))

knn_params = {"metric": ["cosine", "euclidean"],
              "n_neighbors": [4]}
svm_params = {"C": [1],
              "kernel": ["linear", "rbf"]}
dtree_params = {"criterion": ["gini", "entropy"]}
randforest_params = {"criterion": ["gini", "entropy"]}

# frequencies of each hyperparameter setting for each algorithm
knn_freq = {}
svm_freq = {}
dtree_freq = {}
randforest_freq = {}

def test_knn(train_dataset, train_label, test_dataset, test_label, knn_performance):
    for n_neighbor in knn_params["n_neighbors"]:
        for metric in knn_params["metric"]:
            knn = KNeighborsClassifier(metric=metric, n_neighbors=n_neighbor)
            pipe = Pipeline([("scaler", MinMaxScaler()), ("knn", knn)])
            pipe.fit(train_dataset, train_label)

            predicted = pipe.predict(test_dataset)
            if (metric, n_neighbor) not in knn_performance:
                knn_performance[(metric, n_neighbor)] = {"f1_score": [], "accuracy": []}
            knn_performance[(metric, n_neighbor)]["f1_score"].append(f1_score(test_label, predicted, average="micro"))
            knn_performance[(metric, n_neighbor)]["accuracy"].append(accuracy_score(test_label, predicted))
    return knn_performance

def test_svm(train_dataset, train_label, test_dataset, test_label, svm_performance):
    for C in svm_params["C"]:
        for kernel in svm_params["kernel"]:
            svm = SVC(C=C, kernel=kernel)
            pipe = Pipeline([("scaler", MinMaxScaler()), ("svm", svm)])
            pipe.fit(train_dataset, train_label)

            predicted = pipe.predict(test_dataset)
            if (C, kernel) not in svm_performance:
                svm_performance[(C, kernel)] = {"f1_score": [], "accuracy": []}
            svm_performance[(C, kernel)]["f1_score"].append(f1_score(test_label, predicted, average="micro"))
            svm_performance[(C, kernel)]["accuracy"].append(accuracy_score(test_label, predicted))

def test_dtree(train_dataset, train_label, test_dataset, test_label, dtree_performance):
    for criterion in dtree_params["criterion"]:
        dtree = DecisionTreeClassifier(criterion=criterion)
        pipe = Pipeline([("scaler", MinMaxScaler()), ("dtree", dtree)])
        pipe.fit(train_dataset, train_label)

        predicted = pipe.predict(test_dataset)
        if criterion not in dtree_performance:
            dtree_performance[criterion] = {"f1_score": [], "accuracy": []}
        dtree_performance[criterion]["f1_score"].append(f1_score(test_label, predicted, average="micro"))
        dtree_performance[criterion]["accuracy"].append(accuracy_score(test_label, predicted))

def test_randforest(train_dataset, train_label, test_dataset, test_label, randforest_performance):
    for criterion in randforest_params["criterion"]:
        randforest = RandomForestClassifier(criterion=criterion)
        pipe = Pipeline([("scaler", MinMaxScaler()), ("randforest", randforest)])
        pipe.fit(train_dataset, train_label)

        predicted = pipe.predict(test_dataset)
        if criterion not in randforest_performance:
            randforest_performance[criterion] = {"f1_score": [], "accuracy": []}
        randforest_performance[criterion]["f1_score"].append(f1_score(test_label, predicted, average="micro"))
        randforest_performance[criterion]["accuracy"].append(accuracy_score(test_label, predicted))

def best_models(knn_perf, svm_perf, dtree_perf, randforest_perf, scoring="accuracy"):
    best_parameter_knn = None
    best_score_knn = -float('inf')

    for param_config in knn_perf:
        v = np.mean(knn_perf[param_config][scoring])
        if v > best_score_knn:
            best_score_knn = v
            best_parameter_knn = param_config

    knn = KNeighborsClassifier(n_neighbors=best_parameter_knn[1], metric=best_parameter_knn[0])
    knn_freq[best_parameter_knn] = 1 if best_parameter_knn not in knn_freq else knn_freq[best_parameter_knn] + 1
    
    best_parameter_svm = None
    best_score_svm = -float('inf')

    for param_config in svm_perf:
        v = np.mean(svm_perf[param_config][scoring])
        if v > best_score_svm:
            best_score_svm = v
            best_parameter_svm = param_config
    
    svm = SVC(C=best_parameter_svm[0], kernel=best_parameter_svm[1])
    svm_freq[best_parameter_svm] = 1 if best_parameter_svm not in svm_freq else svm_freq[best_parameter_svm] + 1

    best_parameter_dtree = None
    best_score_dtree = -float('inf')

    for param_config in dtree_perf:
        v = np.mean(dtree_perf[param_config][scoring])
        if v > best_score_dtree:
            best_score_dtree = v
            best_parameter_dtree = param_config

    dtree = DecisionTreeClassifier(criterion=best_parameter_dtree)
    dtree_freq[best_parameter_dtree] = 1 if best_parameter_dtree not in dtree_freq else dtree_freq[best_parameter_dtree] + 1

    best_parameter_randforest = None
    best_score_randforest = -float('inf')

    for param_config in randforest_perf:
        v = np.mean(randforest_perf[param_config][scoring])
        if v > best_score_randforest:
            best_score_randforest= v
            best_parameter_randforest = param_config

    randforest = RandomForestClassifier(criterion=best_parameter_randforest)
    randforest_freq[best_parameter_randforest] = 1 if best_parameter_randforest not in randforest_freq else randforest_freq[best_parameter_randforest] + 1

    return knn, svm, dtree, randforest

def nested_cross_validation():
    knn_overall = {"f1_score": [], "accuracy": []}
    svm_overall = {"f1_score": [], "accuracy": []}
    dtree_overall = {"f1_score": [], "accuracy": []}
    randforest_overall = {"f1_score": [], "accuracy": []}

    for train_indices, test_indices in outer_cross_validation.split(dataset, labels):
        current_training_part = dataset[train_indices]
        current_training_part_label = labels[train_indices]

        current_test_part = dataset[test_indices]
        current_test_part_label = labels[test_indices]

        knn_performance = {}
        svm_performance = {}
        dtree_performance = {}
        randforest_performance = {}

        for inner_train_indices, inner_test_indices in inner_cross_validation.split(current_training_part, current_training_part_label):

            inner_training_dataset = current_training_part[inner_train_indices]
            inner_training_label = current_training_part_label[inner_train_indices]

            inner_test_dataset = current_training_part[inner_test_indices]
            inner_test_label = current_training_part_label[inner_test_indices]

            test_knn(inner_training_dataset, inner_training_label, inner_test_dataset, inner_test_label, knn_performance)
            test_svm(inner_training_dataset, inner_training_label, inner_test_dataset, inner_test_label, svm_performance)
            test_dtree(inner_training_dataset, inner_training_label, inner_test_dataset, inner_test_label, dtree_performance)
            
            # train and test random forest 5 times
            for _ in range(5):
                test_randforest(inner_training_dataset, inner_training_label, inner_test_dataset, inner_test_label, randforest_performance)
            
            # compute the average scores of 5 tests for accuracy and f1 score
            for criterion in randforest_params["criterion"]:
                avg_f1s = np.mean(randforest_performance[criterion]["f1_score"][-5:])
                avg_acc = np.mean(randforest_performance[criterion]["accuracy"][-5:])

                del randforest_performance[criterion]["f1_score"][-5:]
                del randforest_performance[criterion]["accuracy"][-5:]

                randforest_performance[criterion]["f1_score"].append(avg_f1s)
                randforest_performance[criterion]["accuracy"].append(avg_acc)

        best_knn, best_svm, \
        best_dtree, best_randforest = best_models(knn_performance, svm_performance,\
                                                  dtree_performance, randforest_performance, scoring="f1_score")

        scaler = MinMaxScaler()
        scaled_training_part = scaler.fit_transform(current_training_part)
        scaled_test_part = scaler.transform(current_test_part)

        best_knn.fit(scaled_training_part, current_training_part_label)
        knn_predicted = best_knn.predict(scaled_test_part)
        knn_overall["accuracy"].append(accuracy_score(current_test_part_label, knn_predicted))
        knn_overall["f1_score"].append(f1_score(current_test_part_label, knn_predicted, average="micro"))

        best_svm.fit(scaled_training_part, current_training_part_label)
        svm_predicted = best_svm.predict(scaled_test_part)
        svm_overall["accuracy"].append(accuracy_score(current_test_part_label, svm_predicted))
        svm_overall["f1_score"].append(f1_score(current_test_part_label, svm_predicted, average="micro"))

        best_dtree.fit(scaled_training_part, current_training_part_label)
        dtree_predicted = best_dtree.predict(scaled_test_part)
        dtree_overall["accuracy"].append(accuracy_score(current_test_part_label, dtree_predicted))
        dtree_overall["f1_score"].append(f1_score(current_test_part_label, dtree_predicted, average="micro"))

        # Test random forest 5 times
        for _ in range(5):
            best_randforest.fit(scaled_training_part, current_training_part_label)
            randforest_predicted = best_randforest.predict(scaled_test_part)
            randforest_overall["accuracy"].append(accuracy_score(current_test_part_label, randforest_predicted))
            randforest_overall["f1_score"].append(f1_score(current_test_part_label, randforest_predicted, average="micro"))

        # Compute the average of last 5 scores
        avg_f1s = np.mean(randforest_overall["f1_score"][-5:])
        avg_acc = np.mean(randforest_overall["accuracy"][-5:])

        del randforest_overall["f1_score"][-5:]
        del randforest_overall["accuracy"][-5:]

        randforest_overall["f1_score"].append(avg_f1s)
        randforest_overall["accuracy"].append(avg_acc)

    return knn_overall, svm_overall, dtree_overall, randforest_overall

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

if __name__ == "__main__":
    knn_overall, svm_overall, dtree_overall, randforest_overall = nested_cross_validation()
    print("KNN Performance: ", knn_overall, "\n")
    print("SVM Performance: ", svm_overall, "\n")
    print("Decision Tree Performance: ", dtree_overall, "\n")
    print("Random Forest Performance: ", randforest_overall, "\n")

    print("KNN Freq: ", knn_freq)
    print("SVM Freq: ", svm_freq)
    print("Decision Tree Freq: ", dtree_freq)
    print("Random Forest Freq: ", randforest_freq)

    knn_acc_ci = confidence_interval(knn_overall["accuracy"])
    svm_acc_ci = confidence_interval(svm_overall["accuracy"])
    dtree_acc_ci = confidence_interval(dtree_overall["accuracy"])
    randforest_acc_ci = confidence_interval(randforest_overall["accuracy"])

    knn_f1s_ci = confidence_interval(knn_overall["f1_score"])
    svm_f1s_ci = confidence_interval(svm_overall["f1_score"])
    dtree_f1s_ci = confidence_interval(dtree_overall["f1_score"])
    randforest_f1s_ci = confidence_interval(randforest_overall["f1_score"])

    plot_confidence_interval(1, knn_acc_ci[0], knn_acc_ci[1])
    plot_confidence_interval(2, svm_acc_ci[0], svm_acc_ci[1])
    plot_confidence_interval(3, dtree_acc_ci[0], dtree_acc_ci[1])
    plot_confidence_interval(4, randforest_acc_ci[0], randforest_acc_ci[1])
    
    plt.title("Accuracy Confidence Intervals of Each Method")
    plt.xticks(np.arange(1, 4+1, 1.0))
    plt.show()

    plot_confidence_interval(1, knn_f1s_ci[0], knn_f1s_ci[1])
    plot_confidence_interval(2, svm_f1s_ci[0], svm_f1s_ci[1])
    plot_confidence_interval(3, dtree_f1s_ci[0], dtree_f1s_ci[1])
    plot_confidence_interval(4, randforest_f1s_ci[0], randforest_f1s_ci[1])

    plt.title("F1 Score Confidence Intervals of Each Method")
    plt.xticks(np.arange(1, 4+1, 1.0))
    plt.show()

    plt.bar([str(item) for item in knn_freq.keys()], list(knn_freq.values()), width=0.5)
    plt.xlabel("Number of times chosen as the best hyperparameter config")
    plt.ylabel("Hyperparameter configs")
    plt.title("KNN best hyperparameters")
    plt.show()

    plt.bar([str(item) for item in svm_freq.keys()], list(svm_freq.values()), width=0.5)
    plt.xlabel("Number of times chosen as the best hyperparameter config")
    plt.ylabel("Hyperparameter configs")
    plt.title("SVM best hyperparameters")
    plt.show()

    plt.bar([str(item) for item in dtree_freq.keys()], list(dtree_freq.values()), width=0.5)
    plt.xlabel("Number of times chosen as the best hyperparameter config")
    plt.ylabel("Hyperparameter configs")
    plt.title("Decision Tree best hyperparameters")
    plt.show()

    plt.bar([str(item) for item in randforest_freq.keys()], list(randforest_freq.values()), width=0.5)
    plt.xlabel("Number of times chosen as the best hyperparameter config")
    plt.ylabel("Hyperparameter configs")
    plt.title("Random Forest best hyperparameters")
    plt.show()

    #Decision tree feature importance


    dataset, labels = DataLoader.load_credit("data/credit.data")
    tree = DecisionTreeClassifier(criterion="gini")
    tree.fit(dataset, labels)

    print(tree.feature_importances_)

    #Support vector analysis
    dataset, labels = DataLoader.load_credit_with_onehot("data/credit.data")
    svm = SVC()
    svm.fit(dataset, labels)

    positive_sv = svm.support_vectors_[svm.dual_coef_.ravel() > 0]
    negative_sv = svm.support_vectors_[svm.dual_coef_.ravel() < 0]

    positive_sv = np.asarray(undo_onehot(positive_sv))
    negative_sv = np.asarray(undo_onehot(negative_sv))
    
    file_path = 'positive_vectors.txt'
    with open(file_path, 'w') as file:
        for vector in positive_sv:
            file.write(','.join(map(str, vector)) + '\n')

    file_path = 'negative_vectors.txt'

    with open(file_path, 'w') as file:
        for vector in negative_sv:
            file.write(','.join(map(str, vector)) + '\n')
