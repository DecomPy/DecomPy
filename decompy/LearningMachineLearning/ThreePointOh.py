# TensorFlow and tf.keras
import tensorflow as tf
from tensorflow import keras

# Helper libraries
import numpy as np
import matplotlib.pyplot as plt

# Load data
mnist = keras.datasets.mnist
(train_images, train_labels), (test_images, test_labels) = mnist.load_data()

train_images = train_images.flatten()

# Convenient labels for later
class_names = ['Zero', 'One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine']

# Scale down values to between 0 and 1
train_images = train_images / 255.0
test_images = test_images / 255.0

model = keras.Sequential([
    keras.layers.Flatten(input_shape=(784, 1)),  # 785 feature input layer
    keras.layers.Dense(128, activation=tf.nn.relu),  # Fully connected layers of 128 nodes
    keras.layers.Dense(10, activation=tf.nn.softmax)    # output layer of 10 nodes where values sum up to 1
])

keras.layers.Fl

# Some more settings for the NN
model.compile(optimizer=tf.train.AdamOptimizer(),
              loss='sparse_categorical_crossentropy',
              metrics=['accuracy'])

# Training. I have no idea what's going on
model.fit(train_images, train_labels, epochs=5)

# See what the network predicts are some images
predictions = model.predict(test_images)

