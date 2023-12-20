import numpy as np
from Distance import Distance

class KMeans:
    def __init__(self, dataset, K=2):
        """
        :param dataset: 2D numpy array, the whole dataset to be clustered
        :param K: integer, the number of clusters to form
        """
        self.K = K
        self.dataset = dataset
        # each cluster is represented with an integer index
        # self.clusters stores the data points of each cluster in a dictionary
        self.clusters = {i: [] for i in range(K)}
        # self.cluster_centers stores the cluster mean vectors for each cluster in a dictionary
        self.cluster_centers = {i: None for i in range(K)}
        # you are free to add further variables and functions to the class

    def calculateLoss(self):
        loss = 0
        for key in self.clusters:
            cluster_data = self.clusters[key]
            for data in cluster_data:
                loss += Distance.calculateMinkowskiDistance(data, self.cluster_centers[key]) ** 2
        
        return loss

    # kmeans++ initialization
    def init_centers(self):
        centers = []
        centers.append(self.dataset[np.random.randint(0, len(self.dataset))])
        
        def furthest_data():
            max_mindist = 0
            max_mindata = None
            for data in self.dataset:
                min_dist = 999999
                for center in centers:
                    dist = Distance.calculateMinkowskiDistance(data, center)
                    if dist < min_dist:
                        min_dist = dist

                if min_dist > max_mindist:
                    max_mindist = min_dist
                    max_mindata = data

            return max_mindata

        for i in range(1, self.K):
            centers.append(furthest_data())
        
        for i, center in enumerate(centers):
            self.cluster_centers[i] = center

    def run(self):
        self.init_centers()

        def assign_closest():
            for key in self.clusters:
                self.clusters[key] = []
            
            for data in self.dataset:
                # find closest center
                min_dist = 999999
                min_center = None
                for key in self.cluster_centers:
                    dist = Distance.calculateMinkowskiDistance(data, self.cluster_centers[key])
                    if dist < min_dist:
                        min_dist = dist
                        min_center = key

                self.clusters[min_center].append(data)
        
        def update_centers():
            for key in self.clusters:
                center = np.zeros(shape=(self.dataset.shape[1],), dtype=np.float32)
                for data in self.clusters[key]:
                    center += data
                
                self.cluster_centers[key] = center / len(self.clusters[key])

        while True:
            assign_closest()
            prev_centers = self.cluster_centers.copy()
            update_centers()

            #check if previous centers are same with the current ones
            same = True
            for key in self.cluster_centers:
                if not (prev_centers[key] == self.cluster_centers[key]).all():
                    same = False
                    break

            if same:
                break

        return self.cluster_centers, self.clusters, self.calculateLoss()
