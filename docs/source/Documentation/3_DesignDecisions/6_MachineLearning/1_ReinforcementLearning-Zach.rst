Reinforcement Learning
======================


Types of RL
-----------

Model free vs. Model based learning
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Model free and model based learning are simple in concept.
In model based learning, the RL agent generates a model of the
world as it learns. In model free learning, the agent learns
"notions" of general things to avoid and things to try for.

I don't believe that a model based learning would be as useful
for what we are trying to do. I think it makes more sense to
model each set of code as an environment and have the agent
learn how to optimize in that environment with the notion that
improvements done in one environment apply to others.


On-policy vs. Off-policy
~~~~~~~~~~~~~~~~~~~~~~~~

Off-policy learning is essentially the idea of having the RL
agent perform actions completely independently of what it is
learning.

In contrast, on policy learning has the agent perform tasks,
learn from the results, and then perform new actions based
on what it learnt.

The advantage of off-policy learning (since it is likely not
self evident) is that by using off-policy learning, an RL agent
does not become biased into avoiding the choices from which it
could learn from. For example, if an agent was trying to solve
a maze, and it learned early on that going right gave good
results, it might never learn that going left at that turn
may have bad results at first but later on have a massive
reward that was "hidden" so to speak.

I think that despite off-policy learning's advantages, on-policy
learning is still a better choice for what we are doing, mostly
due to the fact that off-policy learning tends to be much slower.

RL vs. Neural Nets
------------------

Neural Net based learning uses a simple idea. The neural network
guesses what output should come from a given input. Using the
correct output, and a technique called backpropogation, the error
is "brough back" into what features caused it. These weights given
to these features can then be adjusted until the AI is able to more
correctly guess the outputs.

Reinforcement learning revolves around an "agent" making decisions
in an "environment". Essentially, the agent makes choices and by
doing so receives a reward. The magnitude of this reward (possibly
negative) helps it to learn what actions to take.

Both NN and RL try to get a machine learning agent to move closer
to a desired result. NN do so through using a scalar output and
a desired scalar output and determining the cause of the difference.
RL uses a "reward function" which could be but does not have to be
derived from the desired output.

Less simply, in RL, there are 4 major factors. These are the state
of the environment, the set of actions available for the agent to
choose from. 
