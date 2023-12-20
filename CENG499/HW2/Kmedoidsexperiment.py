from Kmedoids import KMedoids
import matplotlib.pyplot as plt
import pickle

dataset1 = pickle.load(open("data/part2_dataset_1.data", "rb"))
dataset2 = pickle.load(open("data/part2_dataset_2.data", "rb"))

def test_kmedoids(k, dataset):
    kmedoids = KMedoids(dataset, K = k, distance_metric="cosine")
    min_loss = 999999
    for i in range(5):
        cluster_medoids, clusters, loss = kmedoids.run()
        if loss < min_loss:
            min_loss = loss

    return min_loss


losses = []
for k in range(2, 8):
    losses.append(test_kmedoids(k, dataset2))
    print(losses[-1])

plt.plot(range(2, 8), losses, "bx-")
plt.xlabel('K')
plt.ylabel('Loss')
plt.title('The Elbow Method showing the optimal k')
plt.show()