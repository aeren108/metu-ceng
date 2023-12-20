import pickle
import matplotlib.pyplot as plt
import umap
from sklearn.manifold import TSNE

dataset = pickle.load(open("data/part3_dataset.data", "rb"))

umap_reducer = umap.UMAP()
tsne_reducer = TSNE(n_components=2, learning_rate='auto', init='random', perplexity=3)

dataset_umap = umap_reducer.fit_transform(dataset)
dataset_tsne = tsne_reducer.fit_transform(dataset)

plt.title('Dataset t-SNE')
plt.scatter(dataset_tsne[:, 0], dataset_tsne[:, 1])
plt.show()

plt.title('Dataset UMAP')
plt.scatter(dataset_umap[:, 0], dataset_umap[:, 1])
plt.show()