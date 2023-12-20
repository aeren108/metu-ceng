from Distance import Distance
import numpy as np

class KMedoids:
    def __init__(self, dataset, K=2, distance_metric="cosine"):
        """
        :param dataset: 2D numpy array, the whole dataset to be clustered
        :param K: integer, the number of clusters to form
        """
        self.K = K
        self.dataset = dataset
        # each cluster is represented with an integer index
        # self.clusters stores the data points of each cluster in a dictionary
        # In this dictionary, you can keep either the data instance themselves or their corresponding indices in the dataset (self.dataset).
        self.clusters = {i: [] for i in range(K)}
        # self.cluster_medoids stores the cluster medoid for each cluster in a dictionary
        # # In this dictionary, you can keep either the data instance themselves or their corresponding indices in the dataset (self.dataset).
        self.cluster_medoids = {i: None for i in range(K)}
        # you are free to add further variables and functions to the class

        if distance_metric == "cosine":
            self.distance_metric = Distance.calculateCosineDistance
            self.dist_param = None
        elif distance_metric == "mahalanobis":
            self.distance_metric = Distance.calculateMahalanobisDistance
            self.dist_param = np.linalg.inv(np.cov(dataset.T))
        elif distance_metric == "minkowski":
            self.distance_metric = Distance.calculateMinkowskiDistance
            self.dist_param = 2

    def calculateLoss(self):
        loss = 0
        for key in self.clusters:
            cluster_data = self.clusters[key]
            for data in cluster_data:
                loss += self.distance_metric(data, self.cluster_medoids[key], self.dist_param)
        
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
                    dist = self.distance_metric(data, center, self.dist_param)
                    if dist < min_dist:
                        min_dist = dist

                if min_dist > max_mindist:
                    max_mindist = min_dist
                    max_mindata = data

            return max_mindata

        for i in range(1, self.K):
            centers.append(furthest_data())
        
        for i, center in enumerate(centers):
            self.cluster_medoids[i] = center

    def run(self):
        self.init_centers()

        def assign_closest():
            for key in self.clusters:
                self.clusters[key] = []
            
            for data in self.dataset:
                # find closest center
                min_dist = 999999
                min_center = None
                for key in self.cluster_medoids:
                    dist = self.distance_metric(data, self.cluster_medoids[key], self.dist_param)
                    if dist < min_dist:
                        min_dist = dist
                        min_center = key

                self.clusters[min_center].append(data)
        
        def single_loss(cluster, medoid):
            loss = 0
            for data in cluster:
                loss += self.distance_metric(data, medoid, self.dist_param)
            
            return loss

        def update_centers():
            for key in self.clusters:
                min_loss = 999999
                min_medoid = None
                for data in self.clusters[key]:
                    loss = single_loss(self.clusters[key], data)
                    if loss < min_loss:
                        min_loss =  loss
                        min_medoid = data
                
                self.cluster_medoids[key] = min_medoid

        while True:
            assign_closest()
            prev_centers = self.cluster_medoids.copy()
            update_centers()

            #check if previous centers are same with the current ones
            same = True
            for key in self.cluster_medoids:
                if not (prev_centers[key] == self.cluster_medoids[key]).all():
                    same = False
                    break

            if same:
                break

        return self.cluster_medoids, self.clusters, self.calculateLoss()

