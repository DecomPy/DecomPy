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

The following are models which roughly fit this criteria
* Temporal Difference Learning
* Temporal Difference Learning with Back Prop
* Monte Carlo learning


Modeling the World - Part 2
===========================

After further reading, and based on a discussion during a meeting with our project
sponsor, I came up with another model which I believe would be much more effective
and possible given our time frame. Essentially it is as follows:

S  (unchanged) - The current state of the program
R  (unchanged) - The delta representing improvement in similarity
S' (unchanged) - The new state of the program after the action
A  (changed)   - This part is more complicated.... see below

The action part of the RL agent in our case is the real uncertainty in this project.
Whatever actions we provide are the actions that the ML agent will be able to take to
modify the code. Too much choice and we are left with incorrect code most of the time
and an almost impossible to train model. Too much consrtiction and it will be unable to
learn anything of value. The real issue is figuring out how to provide the freedom to
manipulate the program without losing semantics from the program during the process.
Anything we have come up with thus far is based around constricting its changes through
hand written rules -- rules that in my opinion counteract what we set out to do. Our
sponsor's goal is to avoid having to write rules for a specific compiler. Sure, writing
general rules and letting an ML agent decide which apply is a way to do this, but the
true aim in my opinion should be to avoid writing the rules in general. To this aim
I have the following solution.

Rather than provide rules that allow the ML agent to make passes through the code,
we can go back to the idea of free text based manipulation (or an LLVM module equivalent
there of). We would provide a database of short patterns broken down into basic equivalency
classes. Ignoring how we would make this database for now, if we had such a database,
providing the ML Agent freedom while mainting semantics is easy. Simply allow the
agent to swap out any values interchangably between the equivalency classes.

To generate this "database of equivalency classes", we could put clang (or more specifically,
"opt" which is the part of clang that handles llvm optimization) to work. Since opt
is capable of specifically targeting passes, we can take a simple piece of unoptimized
llvm and generate as many equivalent versions of it as we desire (well, as many as there
are different opt passes which will actually result in a distinct version of the code).
By doing this, we ensure that the decompilation process will maintain semantic correctness,
but still give it a wide range of freedom.

Swapping out values interchangably between the equivalency classes is only possible if the decompiled code contains
values that are inside of our database. It is possible that the decpompiled code will contain values which are
behaviorally equivalent to an equivaleny class, but are not textually the  same as any value that we have in our
database. Thus, behavioral analysis could be performed to find code that belongs in an equivalency class,which
increases the number of swaps that could be performed. This gives the agent more choices and flexibility


Modeling the World - Part 3
===========================

A third option for actions that the RL agent could perform involves replicating the processes and algorithms that
would normally be written by a human programmer. Decompilers generally do three types of analysis on code to
rewrite it as a higher level language. In our case, we would perform this analysis to transform the low level
constructs in LLVM, such as gotos, into higher level constructs, like while-loops and if-elses.

The three types of analysis are Data Flow Analysis, Control Flow Analysis, and Type Analysis. This idea would require
research into how these are performed and what kind of transformations may be made on code that under goes them.
Them, the transformations are encoded as our actions and the RL agent uses these actions to learn how to
perform analyses to transform one piece of code into another that is behaviorally equivilant (ie, transform
decompiled LLVM into Clang generated unoptimized LLVM.)

This idea will not be feasable with the limited time the team has, and no further research was done on the types of
actions performed during Data Flow Analysis, Control Flow Analysis, and Type Analysis