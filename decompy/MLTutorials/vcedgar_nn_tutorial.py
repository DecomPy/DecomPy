#
#  Code from the following tutorial:
#  https://www.oreilly.com/learning/not-another-mnist-tutorial-with-tensorflow
#

from tensorflow.examples.tutorials.mnist import input_data
import tensorflow as tf
import matplotlib.pyplot as plt
import numpy as np
import random as ran

mnist = input_data.read_data_sets('MNIST_data', one_hot=True)

# The folllowing are helper functons for assigning the amount of training and testing data:
def TRAIN_SIZE(num):
    print ('Total Training Images in Dataset = ' + str(mnist.train.images.shape))
    print ('--------------------------------------------------')
    x_train = mnist.train.images[:num,:]
    print ('x_train Examples Loaded = ' + str(x_train.shape))
    y_train = mnist.train.labels[:num,:]
    print ('y_train Examples Loaded = ' + str(y_train.shape))
    print('')
    return x_train, y_train

def TEST_SIZE(num):
    print ('Total Test Examples in Dataset = ' + str(mnist.test.images.shape))
    print ('--------------------------------------------------')
    x_test = mnist.test.images[:num,:]
    print ('x_test Examples Loaded = ' + str(x_test.shape))
    y_test = mnist.test.labels[:num,:]
    print ('y_test Examples Loaded = ' + str(y_test.shape))
    return x_test, y_test

# The following are helper functions for displaying the data:
def display_digit(num):
    print(y_train[num])
    label = y_train[num].argmax(axis=0)
    image = x_train[num].reshape([28,28])
    plt.title('Example: %d  Label: %d' % (num, label))
    plt.imshow(image, cmap=plt.get_cmap('gray_r'))
    plt.show()

def display_mult_flat(start, stop):
    images = x_train[start].reshape([1,784])
    for i in range(start+1,stop):
        images = np.concatenate((images, x_train[i].reshape([1,784])))
    plt.imshow(images, cmap=plt.get_cmap('gray_r'))
    plt.show()

# The folllowing loads the data
x_train, y_train = TRAIN_SIZE(55000)
# Modify the training data to have an extra feature

print(x_train.shape[0]);
print("***********************\n")
# the following displays a random piece of data
# display_digit(ran.randint(0, x_train.shape[0]))
# create training session
session = tf.Session()

feature_num = 785
# create a placeholder (no data, just a type and shape) which the session will feed training data to
# '784' is the size of values we can feed x. 'None' means we can feed x however many of these we want
x = tf.placeholder(tf.float32, shape=[None, feature_num])
y_ = tf.placeholder(tf.float32, shape=[None, 10])

# the following defines weights and biases for the model
# Weights are a collection of 784 numbers, one collection for each digit
# These are, I think, the value of the likelyhood that the digit in question has a pixel at that place
# (recal that each picture has 784 pixels)
# biases influence the answer. Both of these topiccs are cconsidered outside the scope of the tutorial
W = tf.Variable(tf.zeros([feature_num, 10]))
b = tf.Variable(tf.zeros([10]))

# This defines the classifier function. This one is " multinomial logistic regression." The flattened digit is
# muliplied by the weight and the bias is added.
# Matmul is matrix multiplication
y = tf.nn.softmax(tf.matmul(x, W) + b)



# this runs the session and feeds it data. The model has so little data that it thinks there is equal probability of
# being any digit. Tensflow calculates the probabilities with the softmax func from above. Softmax makes all the
# values we give it sum up to one, which gives us the probability
x_train, y_train = TRAIN_SIZE(3)

print(x_train)

x_train = x_train.tolist()
for i in range(0,3):
    zeros = x_train[i].count(0)
    x_train[i].append(zeros)

x_train = np.asarray(x_train)
for i in range(0,3):
    x_train[i] = np.asarray(x_train[i])

session.run(tf.global_variables_initializer())
print(session.run(y, feed_dict={x: x_train}))

# this part makes a cost fnc to teach the model how good or bad it is doing. Higher cost, the less accurate.
# Accuracy calculated by comparing the predication for the y labels, with the actual y labels from y_train
cross_entropy = tf.reduce_mean(-tf.reduce_sum(y_ * tf.log(y), reduction_indices=[1]))

# New session w more data
x_train, y_train = TRAIN_SIZE(5500)
x_test, y_test = TEST_SIZE(10000)
# TODO: What are these?
LEARNING_RATE = 0.1
TRAIN_STEPS = 2500

# Initializing variables
init = tf.global_variables_initializer()
session.run(init)

# Performs gradient descent with learning rate to minimize cost function
training = tf.train.GradientDescentOptimizer(LEARNING_RATE).minimize(cross_entropy)

# TODO: What are these?
correct_prediction = tf.equal(tf.argmax(y,1), tf.argmax(y_,1))
# calculates accuracy. Will be used for testing
accuracy = tf.reduce_mean(tf.cast(correct_prediction, tf.float32))

# This loop runs TRAIN_STEPS number of times. Runs training every time by feeding it values from v_train and y_train
# using feed dict. accuracy is used with test data to see how good we are.Must Have Dif Data for testing.
print(x_train.shape)
x_train = x_train.tolist()
for i in range(0,5500):
    zeros = x_train[i].count(0)
    x_train[i].append(zeros)

x_train = np.asarray(x_train)
for i in range(0,5500):
    x_train[i] = np.asarray(x_train[i])

print(x_train.shape)
print(x_test.shape)

x_test = x_test.tolist()
for i in range(0, 10000):
    zeros = x_test[i].count(0)
    x_test[i].append(zeros)

x_test = np.asarray(x_test)
for i in range(0, 10000):
    x_test[i] = np.asarray(x_test[i])

print(x_test.shape)

for i in range(TRAIN_STEPS+1):
    session.run(training, feed_dict={x: x_train, y_: y_train})
    if i % 100 == 0:
        print('Training Step:' + str(i)
              + '  Accuracy =  ' + str(session.run(accuracy, feed_dict={x: x_test, y_: y_test})) #accuracy of training
              + '  Loss = ' + str(session.run(cross_entropy, {x: x_train, y_: y_train}))) #how bad we're doing
