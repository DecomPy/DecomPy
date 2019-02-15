
# Simple RL model in TensorFlow:
# This model builds a policy-gradient based agent.
# An agent takes an action; A policy gradient network produces explicit outputs.

# Importing tensorflow and numpy
import tensorflow as tf
import numpy as np

# Using a five-armed bandit. The pullB function generates a random number
# from a normal distribution with a mean of 0. The lower the bandit number, the
# more likely a positive reward will be returned.

# Five bandits are being defined here.
five_b = [0.2,0,-0.2,1,-5]

# Getting the lengths of the five bandits.
num_b = len(five_b)

# This pullB function only gets called when the agent is being trained.
def pullB(ban):
    #Get a random number.
    result = np.random.randn(1)
    if result > ban:
        #return a positive reward.
        return 1
    else:
        #return a negative reward.
        return -1

# The agent is being defined here.

# Choosing part is done here:
wts = tf.Variable(tf.ones([num_b]))
c_action = tf.argmax(wts,0)

# Training procedure:
action = tf.placeholder(shape=[1],dtype=tf.int32)
res_weight = tf.slice(wts,action,[1])
reward = tf.placeholder(shape=[1],dtype=tf.float32)
ls = -(tf.log(res_weight)*reward)
opt = tf.train.GradientDescentOptimizer(learning_rate=0.001)
update = optimizer.minimize(ls)
