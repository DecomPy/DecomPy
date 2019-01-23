# TensorFlow and tf.keras
import tensorflow as tf
from tensorflow import keras

# Helper libraries
import numpy as np
import matplotlib.pyplot as plt

# Load data
fashion_mnist = keras.datasets.fashion_mnist
(train_images, train_labels), (test_images, test_labels) = fashion_mnist.load_data()

# Convenient labels for later
class_names = ['T-shirt/top', 'Trouser', 'Pullover', 'Dress', 'Coat',
               'Sandal', 'Shirt', 'Sneaker', 'Bag', 'Ankle boot']

# Scale down values to between 0 and 1
train_images = train_images / 255.0
test_images = test_images / 255.0

model = keras.Sequential([
    keras.layers.Flatten(input_shape=(28, 28)),  # Converts 28x28 input (2D array) to a 1D 784 pixel input
    keras.layers.Dense(128, activation=tf.nn.relu),  # Fully connected layers of 128 nodes
    keras.layers.Dense(10, activation=tf.nn.softmax)    # output layer of 10 nodes where values sum up to 1
])

# Some more settings for the NN
model.compile(optimizer=tf.train.AdamOptimizer(),
              loss='sparse_categorical_crossentropy',
              metrics=['accuracy'])

# Training. I have no idea what's going on
model.fit(train_images, train_labels, epochs=5)