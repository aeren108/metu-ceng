import matplotlib.pyplot as plt
import numpy as np

def square_wave(n):
    return 1 if n > 0 else -1
    
def sawtooth_wave(n):
    return -1 + 2*n if n > 0 else 1 + 2*n

time = np.arange(-0.5, 0.5, 1/1000)
sq = np.array([square_wave(n) for n in time])
sw = np.array([sawtooth_wave(n) for n in time])

def fourier_coeffs(signal, period, num):
    coeffs = []
    for k in range(num):
        ak = signal*np.exp(-1j*(2*np.pi / period)*time*k)
        coeffs.append(ak.sum() / time.size)
    return coeffs

def inverse_fourier(coeffs, period, n):
    signal = np.array([2*a*np.exp(1j*(2*np.pi / period)*k*n) for k,a in enumerate(coeffs)])
    return signal.sum()

n = [1, 5, 10, 50, 100]
for num in n:
    a = fourier_coeffs(sq, 1, num)
    sq2 = np.array([inverse_fourier(a, 1, n) for n in time])

    plt.plot(time, sq, "b")
    plt.plot(time, sq2, "y")
    plt.show()

for num in n:
    a = fourier_coeffs(sw, 1, num)
    sw2 = np.array([inverse_fourier(a, 1, n) for n in time])

    plt.plot(time, sw, "b")
    plt.plot(time, sw2, "y")
    plt.show()