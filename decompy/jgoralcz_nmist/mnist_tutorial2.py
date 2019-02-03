
# import built in input_data
from tensorflow.examples.tutorials.mnist import input_data
import matplotlib.pyplot as plt
import numpy as np
import random as ran
import tensorflow as tf

mnist = input_data.read_data_sets('MNIST_data', one_hot=True)

num_input = 784  # MNIST data input
n_hidden_1 = 748  # 1st layer number of neurons
n_hidden_2 = 374  # 2nd layer number of neurons
n_hidden_3 = 187   # 3rd layer number of neurons
num_classes = 10  # MNIST number of classes


# def train_size(num):
#     # print('Total Training Images in Dataset = ' + str(mnist.train.images.shape))
#     # print('--------------------------------------------------')
#     x_train = mnist.train.images[:num, :]
#     # print('x_train Examples Loaded = ' + str(x_train.shape))
#     y_train = mnist.train.labels[:num, :]
#     # print('y_train Examples Loaded = ' + str(y_train.shape))
#     # print('')
#     return x_train, y_train


def test_size(num):
    print('Total Test Examples in Dataset = ' + str(mnist.test.images.shape))
    print('--------------------------------------------------')
    x_test = mnist.test.images[:num,:]
    print('x_test Examples Loaded = ' + str(x_test.shape))
    y_test = mnist.test.labels[:num,:]
    print('y_test Examples Loaded = ' + str(y_test.shape))
    return x_test, y_test


# training info
# x_test, y_test = test_size(10000)
LEARNING_RATE = 0.1  #### MY STUFF: lowered learning rate
TRAIN_STEPS = 2500

#
# def display_digit(num):
#     print(y_train[num])
#     label = y_train[num].argmax(axis=0)
#     image = x_train[num].reshape([28,28])
#     plt.title('Example: %d  Label: %d' % (num, label))
#     plt.imshow(image, cmap=plt.get_cmap('gray_r'))
#     plt.show()
#
#
# def display_mult_flat(start, stop):
#     images = x_train[start].reshape([1, 784])
#     for i in range(start+1, stop):
#         images = np.concatenate((images, x_train[i].reshape([1,784])))
#     plt.imshow(images, cmap=plt.get_cmap('gray_r'))
#     plt.show()


# 55000: all the data, will later change.
# x_train, y_train = train_size(55000)

# shows random image
# display_digit(ran.randint(0, x_train.shape[0]))

# shows the image flattened
# display_mult_flat(0, 400)

# now use tensorflow for data
# sess = tf.Session()

# create place holder to feed data into
# we use x to feed into our x_train data
# using None means we can feed any number of amount. In this case 784.
x = tf.placeholder(tf.float32, shape=[None, num_input])

# another placeholder to compare the "ground truths" to our predictions
y_ = tf.placeholder(tf.float32, shape=[None, num_classes])

# tensorflow optimizes these values when we 0 it out.
# "grunt workers" of the classifier.
weights = {
    'h1': tf.Variable(tf.random_normal([num_input, n_hidden_1])),  # 784 x 256 for first layer
    'h2': tf.Variable(tf.random_normal([n_hidden_1, n_hidden_2])),  # 256 x 256 matrix for 2nd layer, need to multiply
    'h3': tf.Variable(tf.random_normal([n_hidden_2, n_hidden_3])),
    'out': tf.Variable(tf.random_normal([n_hidden_3, num_classes]))   # the output value after it's done
}

biases = {
    'b1': tf.Variable(tf.random_normal([n_hidden_1])),  # first bias layer to match with weight layer
    'b2': tf.Variable(tf.random_normal([n_hidden_2])),  # 2nd bias layer to match with weight layer
    'b3': tf.Variable(tf.random_normal([n_hidden_3])),
    'out': tf.Variable(tf.random_normal([num_classes]))  # the output value after it's done
}


######## NEURAL NET (my stuff) #########
# get the values from each layer, add them into 1 layer
layer_1 = tf.add(tf.matmul(x, weights['h1']), biases['b1'])
layer_2 = tf.add(tf.matmul(layer_1, weights['h2']), biases['b2'])
layer_3 = tf.add(tf.matmul(layer_2, weights['h3']), biases['b3'])

# then cross multiply them with our output weights and biases
out_layer = tf.matmul(layer_3, weights['out']) + biases['out']


# model
logits = out_layer
prediction = tf.nn.softmax(logits)  # used to be y, badly named

# graphing
# Tensor("Softmax:0", shape=(?, 10), dtype=float32)
# must run a session and feed data.
# feed classifier 3 examples.
# can't just do sess.run(y) because we need feed it data.
# x_train, y_train = TRAIN_SIZE(3)
# sess.run(tf.global_variables_initializer())

# knows probabilities (0.1) because it took the softmax.
# softmax function takes a set of values and forces their sum to equal one between 0 - 1.
# sess.run(tf.nn.softmax(tf.zeros([4])))
# sess.run(tf.nn.softmax(tf.constant([0.1, 0.005, 2])))
# print(sess.run(y, feed_dict={x: x_train}))  # output = [[0.1 ... 0.1]] 10 x 3 matrix, equal 10%

# cost function (cross entropy): how good or bad we are doing.
# higher cost = higher inaccuracy
# calculates by comparing y_train true values to the result of our predicted y.

# take the log of our predicted y (range from 0 to 1) and "element wise multiply" by the true value y_.
# if log function for each value is close to 0, it will make the value a large negative number (-np.log(0.01) = 4.6)
# if the log function for each value is close to 1, it will make the value a small negative number (-np.log(0.99) = 0.1)
# essentially penalizing the classifier with a large number if the prediction is confidently incorrect and
# a very small number if it is confidently correct.


# training

# train using gradient descent.
# var training = gradient descent optimizer
# LEARNING_RATE = chosen to minimize our loss function.
# cross_entropy: loss function
cross_entropy = tf.reduce_mean(tf.nn.softmax_cross_entropy_with_logits(logits=logits, labels=y_))  # loss operation
optimizer = tf.train.AdamOptimizer(learning_rate=LEARNING_RATE)
train_op = optimizer.minimize(cross_entropy)  # loss operation to minimize

# how to evaluate the model
correct_prediction = tf.equal(tf.argmax(prediction, 1), tf.argmax(y_, 1))
accuracy = tf.reduce_mean(tf.cast(correct_prediction, tf.float32))

# loop to define TRAIN_STEPS to run training, feeding in values from x_train and y_train using feed_dict.
# accuracy will calculate accuracy by seeing unseen data in x_test and compare it to y and y_test.
# it is IMPORTANT that our test data was unseen and not used for training data. (think of like a teacher giving answers to a test)
# for each step in the loop, depending on how large the cross_entropy is, the classifier will move a LEARNING_RATE step
# toward where it thinks cross_entropy's value will be smaller. The lower point is calculated by Tensorflow using the
# derivative of the cross_entropy, which gives the slope of the tangent line at a given point.
# As it moves towards this new point, the values W (weight) and b (bias) change and the slope decreases. As in the case
# of y = x^2, you can think of this as moving toward X = 0 (minimum).
# if the learning rate is too small, the classifier takes very small steps when learning.
# if the learning rate is too high, the classifier takes very large steps, and may "overshoot" the true minimum.


# intialize all variables to be used by our graph.
init = tf.global_variables_initializer()

with tf.Session() as sess:

    # start initializer session
    sess.run(init)

    for step in range(1, 4000+1):
        batch_x, batch_y, = mnist.train.next_batch(2000)  # other guide shows train_size(num)

        # optimization (backprop)
        sess.run(train_op, feed_dict={x: batch_x, y_: batch_y})

        if step % 100 == 0 or step == 1:
            # print('Training Step:' + str(i) + '  Accuracy =  ' +
            #       str(sess.run(accuracy, feed_dict={x: x_test, y_: y_test})) +
            #       '  Loss = ' + str(sess.run(cross_entropy, {x: x_train, y_: y_train})))

            # same as above
            loss, acc = sess.run([cross_entropy, accuracy], feed_dict={x: batch_x, y_: batch_y})
            print('Training Step: ' + str(step) + ' Total Accuracy = ' + str(acc) + ' Minibatch Loss = ' + str(loss))

    print('Optimization Finished!')

    print("Testing Accuracy:", sess.run(accuracy, feed_dict={x: mnist.test.images, y_: mnist.test.labels}))
#
# # graph our findings
# for i in range(10):
#     plt.subplot(2, 5, i+1)
#     weight = sess.run(weights['out'])[:, i]
#     plt.title(i)
#     plt.imshow(weight.reshape([28, 28]), cmap=plt.get_cmap('seismic'))
#     frame1 = plt.gca()
#     frame1.axes.get_xaxis().set_visible(False)
#     frame1.axes.get_yaxis().set_visible(False)
#
# plt.show()
#
# # have our "cheatsheet", load one example and apply our classifier to that example.
# x_train, y_train = TRAIN_SIZE(1)
# display_digit(0)
# # look at predictor y
# answer = sess.run(y, feed_dict={x: x_train})
# print(answer)
#
# # get the highest value from that array.
# print(answer.argmax())
#
#
# # make predictions on random digit in this set
# def display_compare(num):
#     # THIS WILL LOAD ONE TRAINING EXAMPLE
#     x_train = mnist.train.images[num, :].reshape(1, 784)
#     y_train = mnist.train.labels[num, :]
#     # THIS GETS OUR LABEL AS A INTEGER
#     label = y_train.argmax()
#     # THIS GETS OUR PREDICTION AS A INTEGER
#     prediction = sess.run(y, feed_dict={x: x_train}).argmax()
#     plt.title('Prediction: %d Label: %d' % (prediction, label))
#     plt.imshow(x_train.reshape([28, 28]), cmap=plt.get_cmap('gray_r'))
#     plt.show()


# display_compare(ran.randint(0, 55000))









