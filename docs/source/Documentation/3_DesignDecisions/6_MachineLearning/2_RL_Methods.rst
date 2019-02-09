Reinforcement Learning Ideas
****************************

++++++++++++++++++++++++++++
Applying What I have Learned
++++++++++++++++++++++++++++

Modelling the world
===================

If we choose to go with RL learning, we have to choose how to model our problem.
There are 4 components that we would have to decide when modelling our problem.
These are:
S  - The state
A  - The set of actions which can be chosen at a given point
R  - The reward from performing action 'a' from set A
S' - The new state after action 'a'

I propose the following environment:
S  - The current "state" of the program which starts from freshly raised LLVM
A  - The set of optimization passes which we have written to be used
R  - The delta between the current similarity of the program to the original 
     and the similarity after applying the optimization pass, action 'a', from
     our set of optimizations, "A"
S' - The new state of the program after the optimization

What type of RL
===============

In order to use the model I mention in the previous section, the algorithm we choose
would need to be able to handle problems that are "episodic" in nature. That is to say,
each time that we start learning, we pick a single program (llvm module, function, whatever)
and perform the learning on that. Then we use the new information learned from that
to improve results on the next section of code when we begin again. (Or do some level
of hybrid batch based learning where we are slightly off policy as we learn a large batch
and perform computations based on the average result. This could cause faster learning
by smoothing the results. This is why most neural nets used batch based learning)

I concluded that the best choice of RL learning would be a model free on-policy
based algorithm which is episodic in nature and has a finite space horizon. I also noted
that it would be nice to find a learning model which is able to learn well from
similarities amongst states. Data efficiency is less of an issue as I believe we
have a good amount of data.

Temporal Difference Learning
----------------------------

Temporal Difference Learning with Back Prop
-------------------------------------------

Monte Carlo learning
--------------------

