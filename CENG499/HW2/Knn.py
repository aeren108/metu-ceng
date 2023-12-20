class KNN:
    def __init__(self, dataset, data_label, similarity_function, similarity_function_parameters=None, K=1):
        """
        :param dataset: dataset on which KNN is executed, 2D numpy array
        :param data_label: class labels for each data sample, 1D numpy array
        :param similarity_function: similarity/distance function, Python function
        :param similarity_function_parameters: auxiliary parameter or parameter array for distance metrics
        :param K: how many neighbors to consider, integer
        """
        self.K = K
        self.dataset = dataset
        self.dataset_label = data_label
        self.similarity_function = similarity_function
        self.similarity_function_parameters = similarity_function_parameters

    def predict(self, instance):
        k_list = []

        for _ in range(self.K):
            min_dist = 99999999
            min_data = 0
            for i, data in enumerate(self.dataset):
                if i in k_list:
                    continue

                dist = self.similarity_function(instance, data, self.similarity_function_parameters)
                
                if dist < min_dist:
                    min_dist = dist
                    min_data = i
            
            k_list.append(min_data)

        # majority voting
        counts = [0, 0, 0, 0]
        max_class = 0

        for i in k_list:
            counts[int(self.dataset_label[i])] += 1
            if (counts[int(self.dataset_label[i])] > counts[max_class]):
                max_class = int(self.dataset_label[i])
        
        return max_class



