.. Applying RL to the Adaptive Decompiler documentation master file, created by
   sphinx-quickstart on Wed Feb 13 22:56:48 2019.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to Applying RL to the Adaptive Decompiler's documentation!
==================================================================

        Simple Reinforcement Learning with TensorFlow

  Link: https://medium.com/@awjuliani/super-simple-reinforcement-learning-tutorial-part-1-fd544fab149

  Reinforcement learning provides the capacity for us not only to teach an artificial
  agent how to act, but to allow it to learn through its own interactions with an environment.

  RL algorithms must enable the agent to learn the correct pairings itself through the use
  of observations, rewards, and actions. This can be applied to the adaptive decompiler’s
  machine learning agent.

  Since a piece of code can range anywhere from, for instance, a simple for-loop to complex ADTs,
  feeding user selected information to the agent would not be an ideal way for machine learning.
  We must implement a RL algorithm that allows the code to learn correct pairings itself through
  the use of observations, rewards, and actions.

  Different actions yield different rewards. Selecting the if condition, for example, in a program
  may lead to the user specified correct answer. Conversely, selecting the else condition may lead
  to the user specified incorrect answer.

  Rewards are delayed over time. Even if selecting the if condition may be the right choice,
  the result may not be known until the program is finished executing.

  Reward for an action is conditional on the state of the environment. Selecting the if condition
  may be the right decision sometimes. However, it may not be the correct decision in some other
  circumstances.

  An RL algorithm allows us to increase the weight for actions that yields a positive reward and
  decrease them for actions that yields a negative reward. In this way the agent will be more or
  less likely to pick that action in the future.

  In the ML agent component of the Adaptive decompiler, a RL algorithm can be used. If a piece of
  low-level code is successfully translated to C source code, the weight that yielded that outcome
  might be high. Conversely, the weight might be low for an action that does a poor job in translating
  the low-level code to C code. Using these weights and the differences between them, the ML agent
  can learn what actions to take in the future so that it can achieve outcomes that are high. 

.. toctree::
   :maxdepth: 2
   :caption: Contents:



Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
