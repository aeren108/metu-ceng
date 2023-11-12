import torch
import torch.nn as nn
import numpy as np
import pickle

# we load all the datasets of Part 3
x_train, y_train = pickle.load(open("data/mnist_train.data", "rb"))
x_validation, y_validation = pickle.load(open("data/mnist_validation.data", "rb"))
x_test, y_test = pickle.load(open("data/mnist_test.data", "rb"))

x_train = x_train / 255.0
x_train = x_train.astype(np.float32)

x_test = x_test / 255.0
x_test = x_test.astype(np.float32)

x_validation = x_validation / 255.0
x_validation = x_validation.astype(np.float32)

# and converting them into Pytorch tensors in order to be able to work with Pytorch
x_train = torch.from_numpy(x_train)
y_train_dec = torch.from_numpy(y_train).to(torch.long)
y_train = torch.nn.functional.one_hot(y_train_dec, num_classes=10).float()

x_validation = torch.from_numpy(x_validation)
y_validation_dec = torch.from_numpy(y_validation).to(torch.long)
y_validation = torch.nn.functional.one_hot(y_validation_dec, num_classes=10).float()

x_test = torch.from_numpy(x_test)
y_test_dec = torch.from_numpy(y_test).to(torch.long)
y_test = torch.nn.functional.one_hot(y_test_dec, num_classes=10).float()

# init model with different hp combinations
class HPModel():
    def __init__(self, model, lr, epoch):
        self.model = model
        self.lr = lr
        self.epoch = epoch
    
    def __str__(self) -> str:
        return f"Model: {self.model}, lr={self.lr}, eopch={self.epoch}"

def train(hpmodel: nn.Sequential):
    optimizer = torch.optim.SGD(hpmodel.model.parameters(), lr=model.lr)
    validation_accuracy = 0
    loss = nn.CrossEntropyLoss()

    for _ in range(model.epoch):
        for x, y in zip(x_train, y_train):
            optimizer.zero_grad()
            train_pred = hpmodel.model(x)
            
            ce_loss = loss(train_pred, y)
            ce_loss.backward()
            optimizer.step()

        with torch.no_grad():
            validation_pred = torch.argmax(torch.softmax(hpmodel.model(x_validation), dim=1), dim=1)            
            validation_accuracy = 100 * torch.sum((validation_pred == y_validation_dec).int()) / x_validation.shape[0]

        print("Validation accuracy: ", validation_accuracy)

    test_accuracy = 0
    
    with torch.no_grad():
        test_pred = torch.argmax(torch.softmax(hpmodel.model(x_test), dim=1), dim=1)
        test_accuracy = 100 * torch.sum((test_pred == y_test_dec).int()) / x_test.shape[0]
    
    print("Test accuracy: ", test_accuracy)

    return (test_accuracy, validation_accuracy)
        
#returns the 95% confidence interval for accuracy
def confidence_interval(hpmodel):
    validation_acc_arr = []
    test_acc_arr = []

    for _ in range(10):
        for layer in hpmodel.model.children():
            if hasattr(layer, 'reset_parameters'):
                    layer.reset_parameters()

        validation_acc, test_acc = train(hpmodel)
        validation_acc_arr.append(validation_acc)
        test_acc_arr.append(test_acc)
        
        for layer in hpmodel.model.children():
            if hasattr(layer, 'reset_parameters'):
                layer.reset_parameters()

    validation_acc_arr = np.asarray(validation_acc_arr)
    test_acc_arr = np.asarray(test_acc_arr)
    
    validation_mean = np.mean(validation_acc_arr)
    validation_std = np.std(validation_acc_arr)

    test_mean = np.mean(test_acc_arr)
    test_std = np.std(test_acc_arr)

    return {"test": (test_mean - 1.96 * test_std / np.sqrt(len(test_acc_arr)), test_mean + 1.96 * test_std / np.sqrt(len(test_acc_arr))),
            "validation": (validation_mean - 1.96 * validation_std / np.sqrt(len(validation_acc_arr)), validation_mean + 1.96 * validation_std / np.sqrt(len(validation_acc_arr)))} 


models = []

models.append(HPModel(model=nn.Sequential(nn.Linear(28*28, 16), nn.Sigmoid(), nn.Linear(16, 10)), lr=0.001, epoch=5))
models.append(HPModel(model=nn.Sequential(nn.Linear(28*28, 32), nn.Sigmoid(), nn.Linear(32, 10)), lr=0.001, epoch=5))
models.append(HPModel(model=nn.Sequential(nn.Linear(28*28, 16), nn.LeakyReLU(), nn.Linear(16, 10)), lr=0.001, epoch=5))
models.append(HPModel(model=nn.Sequential(nn.Linear(28*28, 16), nn.Tanh(), nn.Linear(16, 10)), lr=0.001, epoch=5))
models.append(HPModel(model=nn.Sequential(nn.Linear(28*28, 32), nn.LeakyReLU(), nn.Linear(32, 10)), lr=0.001, epoch=5))
models.append(HPModel(model=nn.Sequential(nn.Linear(28*28, 16), nn.Sigmoid(), nn.Linear(16, 10)), lr=0.001, epoch=8))
models.append(HPModel(model=nn.Sequential(nn.Linear(28*28, 16), nn.Sigmoid(), nn.Linear(16, 10)), lr=0.01, epoch=5))
models.append(HPModel(model=nn.Sequential(nn.Linear(28*28, 16), nn.Sigmoid(), nn.Linear(16, 16), nn.Sigmoid(), nn.Linear(16, 10)), lr=0.001, epoch=5))
models.append(HPModel(model=nn.Sequential(nn.Linear(28*28, 32), nn.Sigmoid(), nn.Linear(32, 32), nn.Sigmoid(), nn.Linear(32, 10)), lr=0.01, epoch=5))
models.append(HPModel(model=nn.Sequential(nn.Linear(28*28, 32), nn.Sigmoid(), nn.Linear(32, 32), nn.Sigmoid(), nn.Linear(32, 10)), lr=0.001, epoch=8))

if __name__ == "__main__":
    for model in models:
        confidence_intervals = confidence_interval(model)
        print(f"Test Confidence interval={confidence_intervals['test']}, Validation confidence intervals={confidence_intervals['validation']} {model}")

