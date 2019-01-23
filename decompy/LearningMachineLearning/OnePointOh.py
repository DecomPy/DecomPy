# This code is to help me understand neural networks. It won't go into development or master
# Tutorial from https://www.python-course.eu/neural_network_mnist.php
# The lines of code are not from me, unless otherwise specified.
# The comments are from me.

import numpy as np
import matplotlib.pyplot as plt


image_size = 28 # width and length
no_of_different_labels = 10 #  i.e. 0, 1, 2, 3, ..., 9
image_pixels = image_size * image_size

#Loads data. Pretty straightforward
data_path = "data/mnist/"
train_data = np.loadtxt(data_path + "mnist_train.csv",
                        delimiter=",")
test_data = np.loadtxt(data_path + "mnist_test.csv",
                       delimiter=",")

# Divide image data such that each "pixel" is between 0 and 1
# Because each pixel has a value between 0 and 255 for different grayscale values,
# divide each value by a value that is almost 255
fac = 255 * 0.99 + 0.01
train_imgs = np.asfarray(train_data[:, 1:]) / fac
test_imgs = np.asfarray(test_data[:, 1:]) / fac
train_labels = np.asfarray(train_data[:, :1])
test_labels = np.asfarray(test_data[:, :1])

# One-hot representation? What is that?
# OK, so it looks like it just means that every category (label?)
# has a unique binary number where the number only has one 1 among
# it's digits e.g.:
# 1 = 00001
# 2 = 00010
# 3 = 00100
# 4 = 01000
# 5 = 10000
lr = np.arange(10)
for label in range(10):
    one_hot = (lr==label).astype(np.int)
    print("label: ", label, " in one-hot representation: ", one_hot)

# OK I think this creates a range of different labels,
# creates an array of floats that are 0.0 or 1.0 for training and testing data,
# converts those 0.0 to 0.1 and 1.0 to 0.99. Why is this done?
lr = np.arange(no_of_different_labels)
# transform labels into one hot representation
train_labels_one_hot = (lr==train_labels).astype(np.float)
test_labels_one_hot = (lr==test_labels).astype(np.float)
# we don't want zeroes and ones in the labels neither:
train_labels_one_hot[train_labels_one_hot==0] = 0.01
train_labels_one_hot[train_labels_one_hot==1] = 0.99
test_labels_one_hot[test_labels_one_hot==0] = 0.01
test_labels_one_hot[test_labels_one_hot==1] = 0.99

