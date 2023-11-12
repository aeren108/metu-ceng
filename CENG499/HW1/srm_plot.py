import matplotlib.pyplot as plt


def plot_confidence_interval(x, top, bottom, color='#2187bb', horizontal_line_width=0.25):
    mean = (top + bottom ) / 2
    left = x - horizontal_line_width / 2
    right = x + horizontal_line_width / 2
    
    plt.plot([x, x], [top, bottom], color=color)
    plt.plot([left, right], [top, top], color=color)
    plt.plot([left, right], [bottom, bottom], color=color)
    #plt.plot(x, mean, 'o', color='#f44336')


plt.xticks(range(1, 11), range(1,11))
plt.title("Test Accuracy Confidence Interval")
ax = plt.gca()
#ax.set_ylim([69, 89])

plot_confidence_interval(1, 87.72149595074815, 88.17086855120498)
plot_confidence_interval(2, 88.07379900381879, 88.54885114266558)
plot_confidence_interval(3, 85.15501839468617, 86.05147879769665)
plot_confidence_interval(4, 87.38810560975827, 88.41621567930423)
plot_confidence_interval(5, 87.91834139983338, 88.58425259430724)
plot_confidence_interval(6, 89.15454197639686, 89.50491236930627)
plot_confidence_interval(7, 86.44878020135907, 87.18467316778155)
plot_confidence_interval(8, 69.86620960675175, 71.82046641863887)
plot_confidence_interval(9, 86.73532654247073, 88.37270568409177)
plot_confidence_interval(10, 82.97981259916341, 83.80891420747722)
plt.show()