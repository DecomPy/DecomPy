# TensorFlow and tf.keras
import tensorflow as tf
from tensorflow import keras


# Helper libraries
import numpy as np
import matplotlib.pyplot as plt

fashion_mnist = keras.datasets.fashion_mnist
(train_images, train_labels), (test_images, test_labels) = fashion_mnist.load_data()


# label mapping 0-9
class_names = ['T-shirt/top', 'Trouser', 'Pullover', 'Dress', 'Coat',
               'Sandal', 'Shirt', 'Sneaker', 'Bag', 'Ankle boot']

# print all images and labels
print("train images", train_images.shape)
print("train labels", len(train_labels))


# matplot
plt.figure()
plt.imshow(train_images[0])
plt.colorbar()
plt.colorbar()
plt.show()

print(tf.__version__)

# color range want value between 0 and 1, divide by 255 (rgb 8bit color)
train_images = train_images / 255.0
test_images = test_images / 255.0


# 10 x 10 matplot
plt.figure(figsize=(10, 10))

# plot 25
for i in range(25):
    plt.subplot(5, 5, i+1)
    plt.xticks([])
    plt.yticks([])
    plt.grid(False)
    plt.imshow(train_images[i], cmap=plt.cm.binary)
    plt.xlabel(class_names[train_labels[i]])

# shows our graph
plt.show()

# setup the layers
# build the models by configuring the layers, then compile
# WARNING: DO NOT USE KERAS
model = keras.Sequential([

    # flatten the 2-d array to 1d array for input
    keras.layers.Flatten(input_shape=(28, 28)),

    # neural layers
    keras.layers.Dense(128, activation=tf.nn.relu),  # 128 nodes (neurons)
    keras.layers.Dense(10, activation=tf.nn.softmax) # 10 node softmax layer, probability array summing to 1, score belonging to each one.
])


# compiling the model
# loss function: how accurate the model is. Minimize this to "steer" the model in the right direction.
# Optimizer: how the model is updated based on the data it sees and its loss function.
# Metrics: Used to monitor the training and testing steps (accuracy)

model.compile(optimizer='adam',
              loss='sparse_categorical_crossentropy',
              metrics=['accuracy'])

# train the model
# feed data into model (train_images, train_labels)
# model learns to associate images and labels.
# we want to make predictions on the train_images array, then verify with the train_labels array.
model.fit(train_images, train_labels, epochs=25) # seeing about 89% accuracy at 5 epochs, 94% accuracy at 25 epochs.


# making predictions (once model is tested)
predictions = model.predict(test_images)

print('predictions:', predictions[0])  # show first prediction
print('max args:', np.argmax(predictions[0]))
print('test labels:', test_labels[0])




def plot_image(i, predictions_array, true_label, img):
    """
    graphs the full 10 channels of predictions.
    :param i: 
    :param predictions_array: 
    :param true_label: 
    :param img: 
    :return: 
    """
  predictions_array, true_label, img = predictions_array[i], true_label[i], img[i]
  plt.grid(False)
  plt.xticks([])
  plt.yticks([])

  plt.imshow(img, cmap=plt.cm.binary)

  predicted_label = np.argmax(predictions_array)
  if predicted_label == true_label:
    color = 'blue'
  else:
    color = 'red'

  plt.xlabel("{} {:2.0f}% ({})".format(class_names[predicted_label],
                                100*np.max(predictions_array),
                                class_names[true_label]),
                                color=color)

def plot_value_array(i, predictions_array, true_label):
    """
    plots the prediction in matplotlib.
    :param i: 
    :param predictions_array: 
    :param true_label: 
    :return: 
    """
  predictions_array, true_label = predictions_array[i], true_label[i]
  plt.grid(False)
  plt.xticks([])
  plt.yticks([])
  thisplot = plt.bar(range(10), predictions_array, color="#777777")
  plt.ylim([0, 1])
  predicted_label = np.argmax(predictions_array)

  thisplot[predicted_label].set_color('red')
  thisplot[true_label].set_color('blue')


# take a look at 0th image, predictions,
initial_image = 0
plt.figure(figsize=(6,3))
plt.subplot(1,2,1)
plot_image(initial_image, predictions, test_labels, test_images)
plt.subplot(1,2,2)
plot_value_array(initial_image, predictions,  test_labels)

# 13th image
i = 12
plt.figure(figsize=(6,3))
plt.subplot(1,2,1)
plot_image(i, predictions, test_labels, test_images)
plt.subplot(1,2,2)
plot_value_array(i, predictions,  test_labels)



# Plot the first X test images, their predicted label, and the true label
# Color correct predictions in blue, incorrect predictions in red
num_rows = 5
num_cols = 3
num_images = num_rows*num_cols
plt.figure(figsize=(2*2*num_cols, 2*num_rows))
for i in range(num_images):
  plt.subplot(num_rows, 2*num_cols, 2*i+1)
  plot_image(i, predictions, test_labels, test_images)
  plt.subplot(num_rows, 2*num_cols, 2*i+2)
  plot_value_array(i, predictions, test_labels)

# Grab an image from the test dataset
img = test_images[0]
print(img.shape)

# tf.kera models optimized to make predictions on a batch or collection of examples at once.
# Add the image to a batch where it's the only member.
img = (np.expand_dims(img,0))
print(img.shape)

# predict the image
predictions_single = model.predict(img)
print(predictions_single)


# plot the values using matplotlib
plot_value_array(0, predictions_single, test_labels)
_ = plt.xticks(range(10), class_names, rotation=45)

# predict
np.argmax(predictions_single[0])