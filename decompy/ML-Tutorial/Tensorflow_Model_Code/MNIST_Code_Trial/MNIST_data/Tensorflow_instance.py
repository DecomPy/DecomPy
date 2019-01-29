
# Importing TensorFlow and defining the session.
import tensorflow as tf
sess = tf.Session()

# Defining placeholder in order to feed data into it.
x = tf.placeholder(tf.float32, shape=[None, 784])

# Defining placeholder for the Y-train.
y_ = tf.placeholder(tf.float32, shape=[None, 10])

# Defining the weights and bias variables.
W = tf.Variable(tf.zeros([784,10]))
b = tf.Variable(tf.zeros([10]))

# Y is the classifier function.
y = tf.nn.softmax(tf.matmul(x,W) + b)

# Evaluating Y.
print(y)

Tensor("Softmax:0", shape=(?, 10), dtype=float32)

# Printing to the console an instance of train size of 3.
x_train, y_train = TRAIN_SIZE(3)
sess.run(tf.global_variables_initializer())
print(sess.run(y, feed_dict={x: x_train}))

sess.run(tf.nn.softmax(tf.zeros([4])))
sess.run(tf.nn.softmax(tf.constant([0.1, 0.005, 2])))

# This function measures how good or bad of a job the
# system is doing at classifying.
cross_entropy = tf.reduce_mean(-tf.reduce_sum(y_ * tf.log(y), reduction_indices=[1]))

k = [0,0,0,1,0,0,0,0,0,0]

np.log(j)
np.multiply(np.log(j),k)

k = [0,0,1,0,0,0,0,0,0,0]
np.sum(-np.multiply(np.log(j),k))

# Beginning of the training classifier.
x_train, y_train = TRAIN_SIZE(5500)
x_test, y_test = TEST_SIZE(10000)
LEARNING_RATE = 0.1
TRAIN_STEPS = 2500

# Initializing all the variables to be used by
# the TensorFlow graph.
init = tf.global_variables_initializer()
sess.run(init)

# Training the classifier using the gradient descent.
training = tf.train.GradientDescentOptimizer(LEARNING_RATE).minimize(cross_entropy)
correct_prediction = tf.equal(tf.argmax(y,1), tf.argmax(y_,1))
accuracy = tf.reduce_mean(tf.cast(correct_prediction, tf.float32))

# This loop repeats TRAIN_STEPS times.
for i in range(TRAIN_STEPS+1):
    sess.run(training, feed_dict={x: x_train, y_: y_train})
    if i%100 == 0:
        print('Training Step:' + str(i) + '  Accuracy =  ' + str(sess.run(accuracy, feed_dict={x: x_test, y_: y_test})) + '  Loss = ' + str(sess.run(cross_entropy, {x: x_train, y_: y_train})))

# This piece of code will be used for graph creation.
for i in range(10):
    plt.subplot(2, 5, i+1)
    weight = sess.run(W)[:,i]
    plt.title(i)
    plt.imshow(weight.reshape([28,28]), cmap=plt.get_cmap('seismic'))
    frame1 = plt.gca()
    frame1.axes.get_xaxis().set_visible(False)
    frame1.axes.get_yaxis().set_visible(False)

# Print the graph.
plt.show()

# Loading one example after
# obtaining the cheat sheet.
x_train, y_train = TRAIN_SIZE(1)
display_digit(0)

answer = sess.run(y, feed_dict={x: x_train})
print(answer)

# Returns the prediction value.
answer.argmax()

# This function makes predictions on
# random digits from the data set.
def display_compare(num):
    # THIS WILL LOAD ONE TRAINING EXAMPLE
    x_train = mnist.train.images[num,:].reshape(1,784)
    y_train = mnist.train.labels[num,:]
    # THIS GETS OUR LABEL AS A INTEGER
    label = y_train.argmax()
    # THIS GETS OUR PREDICTION AS A INTEGER
    prediction = sess.run(y, feed_dict={x: x_train}).argmax()
    plt.title('Prediction: %d Label: %d' % (prediction, label))
    plt.imshow(x_train.reshape([28,28]), cmap=plt.get_cmap('gray_r'))
    plt.show()

# Try out the function.
display_compare(ran.randint(0, 55000))
