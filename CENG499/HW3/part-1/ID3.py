import numpy as np

# In the decision tree, non-leaf nodes are going to be represented via TreeNode
class TreeNode:
    def __init__(self, attribute):
        self.attribute = attribute
        # dictionary, k: subtree, key (k) an attribute value, value is either TreeNode or TreeLeafNode
        self.subtrees = {}

# In the decision tree, leaf nodes are going to be represented via TreeLeafNode
class TreeLeafNode:
    def __init__(self, data, label):
        self.data = data
        self.labels = label

class DecisionTree:
    def __init__(self, dataset: list, labels, features, criterion="information gain"):
        """
        :param dataset: array of data instances, each data instance is represented via an Python array
        :param labels: array of the labels of the data instances
        :param features: the array that stores the name of each feature dimension
        :param criterion: depending on which criterion ("information gain" or "gain ratio") the splits are to be performed
        """
        self.dataset = dataset
        self.labels = labels
        self.features = features
        self.criterion = criterion
        # it keeps the root node of the decision tree
        self.root = None

        # further variables and functions can be added...
        self.feature_num = len(self.features)
        self.class_num = np.max(labels) + 1
        self.feature_indices = { self.features[i]: i for i in range(self.feature_num) }
        self.criterion_func = self.calculate_information_gain__ if criterion == "information gain" else self.calculate_gain_ratio__ 

    def calculate_entropy__(self, dataset, labels):
        """
        :param dataset: array of the data instances
        :param labels: array of the labels of the data instances
        :return: calculated entropy value for the given dataset
        """
        entropy_value = 0.0
        total_count = len(labels)

        for c in range(self.class_num):
            p_c = len(labels[labels == c]) / total_count
            if not p_c == 0:
                entropy_value -= p_c * np.log2(p_c)

        return entropy_value

    def attribute_values__(self, dataset, labels, attribute):
        value_occurences = {}
        attr_index = np.where(self.features == attribute)[0][0]

        for i, instance in enumerate(dataset):
            attr_val = instance[attr_index]
            if attr_val in value_occurences:
                value_occurences[attr_val].append(i)
            else:
                value_occurences[attr_val] = [i]

        return value_occurences

    def calculate_average_entropy__(self, dataset, labels, attribute):
        """
        :param dataset: array of the data instances on which an average entropy value is calculated
        :param labels: array of the labels of those data instances
        :param attribute: for which attribute an average entropy value is going to be calculated...
        :return: the calculated average entropy value for the given attribute
        """
        average_entropy = 0.0
       
        value_occurences = self.attribute_values__(dataset, labels, attribute)
        total_count = len(dataset)
        
        for attr_val in value_occurences:
            attr_labels = labels[value_occurences[attr_val]]
            average_entropy += (len(attr_labels) / total_count) * self.calculate_entropy__(None, attr_labels)

        return average_entropy

    def calculate_information_gain__(self, dataset, labels, attribute):
        """
        :param dataset: array of the data instances on which an information gain score is going to be calculated
        :param labels: array of the labels of those data instances
        :param attribute: for which attribute the information gain score is going to be calculated...
        :return: the calculated information gain score
        """
      
        information_gain = self.calculate_entropy__(None, labels) - self.calculate_average_entropy__(dataset, labels, attribute)
        return information_gain

    def calculate_intrinsic_information__(self, dataset, labels, attribute):
        """
        :param dataset: array of data instances on which an intrinsic information score is going to be calculated
        :param labels: array of the labels of those data instances
        :param attribute: for which attribute the intrinsic information score is going to be calculated...
        :return: the calculated intrinsic information score
        """
        intrinsic_info = 0.0
        total_count = len(dataset)
        value_occurences = self.attribute_values__(dataset, labels, attribute)

        for attr_val in value_occurences:
            attr_labels = labels[value_occurences[attr_val]]
            intrinsic_info -= (len(attr_labels) / total_count) * np.log((len(attr_labels) / total_count))

        return intrinsic_info
    
    def calculate_gain_ratio__(self, dataset, labels, attribute):
        """
        :param dataset: array of data instances with which a gain ratio is going to be calculated
        :param labels: array of labels of those instances
        :param attribute: for which attribute the gain ratio score is going to be calculated...
        :return: the calculated gain ratio score
        """
        return self.calculate_information_gain__(dataset, labels, attribute) / self.calculate_intrinsic_information__(dataset, labels, attribute)

    def ID3__(self, dataset, labels, used_attributes):
        """
        Recursive function for ID3 algorithm
        :param dataset: data instances falling under the current  tree node
        :param labels: labels of those instances
        :param used_attributes: while recursively constructing the tree, already used labels should be stored in used_attributes
        :return: it returns a created non-leaf node or a created leaf node
        """
        unique_labels = np.unique(labels)
        if len(unique_labels) == 1:
            return TreeLeafNode(None, unique_labels[0])
        
        min_gr = float('inf')
        min_f = None
        for feature in self.features:
            if feature in used_attributes:
                continue

            f_gr = self.criterion_func(dataset, labels, feature)
            if f_gr < min_gr:
                min_gr = f_gr
                min_f = feature

        if min_f == None:
            unique_values, counts = np.unique(labels, return_counts=True)
            index_of_max_count = np.argmax(counts)
            most_recurring_label = unique_values[index_of_max_count]
            return TreeLeafNode(data=None, label=most_recurring_label)
        
        root = TreeNode(attribute=min_f)
        feature_vals = self.attribute_values__(dataset, labels, min_f)

        for val in feature_vals:
            val_dataset = dataset[feature_vals[val]]
            val_labels = labels[feature_vals[val]]

            root.subtrees[val] = self.ID3__(val_dataset, val_labels, used_attributes + [min_f])

        return root
    
    def predict(self, x):
        """
        :param x: a data instance, 1 dimensional Python array 
        :return: predicted label of x
        
        If a leaf node contains multiple labels in it, the majority label should be returned as the predicted label
        """
        predicted_label = None
        
        current_node = self.root

        while not type(current_node) == type(TreeLeafNode(0, 0)):
            attr_to_test = current_node.attribute
            current_node = current_node.subtrees[x[self.feature_indices[attr_to_test]]]
        
        predicted_label = current_node.labels

        return predicted_label

    def train(self):
        self.root = self.ID3__(self.dataset, self.labels, [])
        print("Training completed")