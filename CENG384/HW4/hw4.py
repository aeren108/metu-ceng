from scipy.io import wavfile
import numpy as np
import matplotlib.pyplot as plt

sample_rate, data = wavfile.read("encoded.wav")

def fft(x):
    N = len(x)
    if N == 1:
        return [x[0]]

    X = np.zeros(N, dtype=np.complex128)
    x_e = x[0::2]
    x_o = x[1::2]

    X_e = fft(x_e)
    X_o = fft(x_o)


    for k in range(N//2):
        X[k] = X_o[k]*np.exp(-1j*2*np.pi*k/N) + X_e[k]
        X[k+N//2] = X_e[k] - X_o[k]*np.exp(-1j*2*np.pi*k/N)  
    
    return X

def ifft(X):
    return np.conjugate(fft(np.conjugate(X))) / len(X)

D = fft(data)

D1 = D[0:len(D)//2]
D2 = D[len(D)//2:len(D)]

D1 = D1[::-1]
D2 = D2[::-1]

R = np.concatenate((D1, D2))
r = ifft(R)

wavfile.write("decoded.wav", sample_rate, r.astype(np.int16))

time = np.arange(0, len(D))

plt.plot(time, data, "b")
plt.xlabel("Time (n)")
plt.ylabel("Encoded Signal")
plt.title("Encoded Signal in Time Domain")
plt.show()

plt.plot(time, abs(D), "b")
plt.xlabel("Frequency")
plt.ylabel("Fourier Transform of Encoded Signal")
plt.title("Encoded Signal Magnitude in Frequency Domain")
plt.show()

plt.plot(time, abs(R), "b")
plt.xlabel("Frequency")
plt.ylabel("Fourier Transform of Decoded Signal")
plt.title("Decoded Signal Magnitude in Frequency Domain")
plt.show()

plt.plot(time, r, "b")
plt.xlabel("Time (n)")
plt.ylabel("Decoded Signal")
plt.title("Decoded Signal in Time Domain")
plt.show()