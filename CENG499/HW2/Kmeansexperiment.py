from Kmeans import KMeans
import matplotlib.pyplot as plt 
import pickle

dataset1 = pickle.load(open("data/part2_dataset_1.data", "rb"))
dataset2 = pickle.load(open("data/part2_dataset_2.data", "rb"))

def test_kmeans(k, dataset):
    kmeans = KMeans(dataset, K = k)
    min_loss = 999999
    for i in range(10):
        cluster_centers, clusters, loss = kmeans.run()
        if loss < min_loss:
            min_loss = loss

    
    return min_loss


losses = []
for k in range(2, 10):
    losses.append(test_kmeans(k, dataset2))

plt.plot(range(2, 10), losses, "bx-")
plt.xlabel('K')
plt.ylabel('Loss')
plt.title('The Elbow Method showing the optimal k')
plt.show()
