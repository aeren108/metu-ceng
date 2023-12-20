import pickle
import matplotlib.pyplot as plt
import umap
from sklearn.manifold import TSNE

dataset1 = pickle.load(open("data/part2_dataset_1.data", "rb"))
dataset2 = pickle.load(open("data/part2_dataset_2.data", "rb"))

umap_reducer = umap.UMAP()
tsne_reducer = TSNE(n_components=2, learning_rate='auto', init='random', perplexity=3)

dataset1_tsne = tsne_reducer.fit_transform(dataset1)
dataset2_tsne = tsne_reducer.fit_transform(dataset2)

dataset1_umap = umap_reducer.fit_transform(dataset1)
dataset2_umap = umap_reducer.fit_transform(dataset2)

plt.title('Dataset 1 t-SNE')
plt.scatter(dataset1_tsne[:, 0], dataset1_tsne[:, 1])
plt.show()

plt.title('Dataset 1 UMAP')
plt.scatter(dataset1_umap[:, 0], dataset1_umap[:, 1])
plt.show()

plt.title('Dataset 2 t-SNE')
plt.scatter(dataset2_tsne[:, 0], dataset2_tsne[:, 1])
plt.show()

plt.title('Dataset 2 UMAP')
plt.scatter(dataset2_umap[:, 0], dataset2_umap[:, 1])
plt.show()