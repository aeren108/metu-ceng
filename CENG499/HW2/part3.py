import pickle
import numpy as np
from matplotlib import pyplot as plt
from scipy.cluster.hierarchy import dendrogram
from sklearn.metrics import silhouette_samples, silhouette_score
from sklearn.cluster import AgglomerativeClustering

dataset = pickle.load(open("data/part3_dataset.data", "rb"))

single_euclidean = AgglomerativeClustering(linkage="single", metric="euclidean", distance_threshold=0, n_clusters=None).fit(dataset)
single_cosine = AgglomerativeClustering(linkage="single", metric="cosine", distance_threshold=0, n_clusters=None).fit(dataset)
complete_euclidean = AgglomerativeClustering(linkage="complete", metric="euclidean", distance_threshold=0, n_clusters=None).fit(dataset)
complete_cosine = AgglomerativeClustering(linkage="complete", metric="cosine", distance_threshold=0, n_clusters=None).fit(dataset)

def cluster(linkage, metric, k):
    clusterer = AgglomerativeClustering(linkage=linkage, metric=metric, n_clusters=k)
    labels = clusterer.fit_predict(dataset)

    return silhouette_score(dataset, labels)

def plot_dendrogram(model, **kwargs):
    # Create linkage matrix and then plot the dendrogram

    # create the counts of samples under each node
    counts = np.zeros(model.children_.shape[0])
    n_samples = len(model.labels_)
    for i, merge in enumerate(model.children_):
        current_count = 0
        for child_idx in merge:
            if child_idx < n_samples:
                current_count += 1  # leaf node
            else:
                current_count += counts[child_idx - n_samples]
        counts[i] = current_count

    linkage_matrix = np.column_stack(
        [model.children_, model.distances_, counts]
    ).astype(float)

    # Plot the corresponding dendrogram
    dendrogram(linkage_matrix, **kwargs)

single_euclidean_avgs = []
single_cosine_avgs = []
complete_euclidean_avgs = []
complete_cosine_avgs = []

for k in range(2, 6):
    single_euclidean_avgs.append(cluster("single", "euclidean", k))
    single_cosine_avgs.append(cluster("single", "cosine", k))
    complete_euclidean_avgs.append(cluster("complete", "euclidean", k))
    complete_cosine_avgs.append(cluster("complete", "cosine", k))

plt.title("Single linkage - euclidean distance dendrogram")
plot_dendrogram(single_euclidean)
plt.show()

plt.title("Single linkage - cosine distance dendrogram")
plot_dendrogram(single_cosine)
plt.show()

plt.title("Complete linkage - euclidean distance dendrogram")
plot_dendrogram(complete_euclidean)
plt.show()

plt.title("Complete linkage - complete distance dendrogram")
plot_dendrogram(complete_cosine)
plt.show()

plt.title("Silhouette score vs K (Single linkage - euclidean distance)")
plt.plot(range(2, 6), single_euclidean_avgs, "bx-")
plt.show()

plt.title("Silhouette score vs K (Single linkage - cosine distance)")
plt.plot(range(2, 6), single_cosine_avgs, "rx-")
plt.show()

plt.title("Silhouette score vs K (Complete linkage - euclidean distance)")
plt.plot(range(2, 6), complete_euclidean_avgs, "gx-")
plt.show()

plt.title("Silhouette score vs K (Complete linkage - cosine distance)")
plt.plot(range(2, 6), complete_cosine_avgs, "bx-")
plt.show()