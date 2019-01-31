.. MNIST Tutorial Summary documentation master file, created by
   sphinx-quickstart on Wed Jan 30 15:11:47 2019.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to MNIST Tutorial Summary's documentation!
==================================================

In this tutorial, the machine learning library TensorFlow with Python3 on Ubuntu 14.04 was used.
In addition, numpy and matplotlib were also needed to be installed.

MNIST is the “Hello World” of Machine Learning. To start off, we need to open up python in our
terminal and import the MNIST data set. Next, define a couple of functions that will assign the
amount of training and test data that will be loaded from the data set. Also define some simple
functions for resizing and displaying the data.

Let’s build and train our model. First, we define variables with how many training and test examples
we would like to load. In the data set, there are 55,000 examples of handwritten digits from zero to
nine. Each example is a 28x28 pixel image flattened in an array with 784 values representing each
pixel’s intensity. The examples need to be flattened for TensorFlow to make sense of the digits linearly.

The next step is importing TensorFlow and defining our session. TensorFlow, in a sense, creates a
directed acyclic graph (flow chart) which will be later fed with data and run in a session. Next, a
placeholder may be defined. A placeholder, as the name suggests, is a variable used to feed data into.
The only requirement is that in order to feed data into this variable, its shape and type must be matched
exactly. When a “none” is assigned to a placeholder, it means the placeholder can be fed as many examples
as you want to give it. 

Next, we will define the weights W and bias b. These two values are the grunt workers of the classifier—they
will be the only values we will need to calculate our prediction after the classifier is trained. We will
now define y, which is our classifier function. This particular classifier is also known as multinomial
logistic regression. We make our prediction by multiplying each flattened digit by our weight and then
adding our bias. 

Next, we will create our cross_entropy function, also known as a loss or cost function. It measures
how good (or bad) of a job we are doing at classifying. The higher the cost, the higher the level of inaccuracy.

.. toctree::
   :maxdepth: 2
   :caption: Contents:



Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
