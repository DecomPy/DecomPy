Action Choosing
***************

+++++++++++++++
General Process
+++++++++++++++

The RL agent will need to choose the best action to perform, ie, the action that will bring us closer to the goal.
Actions are performed on the code to modify the code and "clean" it, producing unoptimized code. To choose the next
action, the action chooser will need to consider the current state that the code is in. It will analyze the current
state of the code, picking out features of the code that are important for decision making. Then, it will look at
past history. It will analyze the actions that it chose in the past. The action chooser will consider past states
that are similar to the current state, and choose an action that, in the past, was successful. So, if we currently
have a state A, and in the past, states similar to A benefited from action X, then it is a good bet that action X
will be good for state A. So, to choose the next action, the action chooser requires several things: The current
state to be modified, a list of similar previous states, the list of actions that were performed on those previous
states, and how good each of those actions actually were. The following describes how this will be immplemented.

++++++++++++
LLVM Summary
++++++++++++

The action chooser will analyze the important features of the current state of the code. It cannot analyze every
feature of the current state because that will cause over fitting, that is, the RL Agent might detect patterns in
things that don't actually matter. For this reason, we want to simplify the state of the code, so we do not analyze
the entire text of the code. We want to make a "summary" of the code that encapsulates the important features. This
is where the LLVM Summarizer and LLVM Summary come in. The LLVM Summary will hold all of the important features of
the code, while the summarizer creates this summary. The LLVM Summary will then be used by the action chooser.

+++++++++++++++++++++++
The Model and Decisions
+++++++++++++++++++++++

Upon receiving the LLVM Summary of the current state, the action chooser will search for similar states in the past.
This means that it will want to look for past LLVM Summaries with similar features. These similar LLVM Summaries,
however, are not all that is needed. We will also want to see what action was taken on those states, and how good
that action was. This is where the Decision object comes in. A decision will contain: The LLVM Summary of the past
code state, the action that was done on that state, and the reward (ie how good the action was.) This Decision
object then holds all of the information necessary to choose the next action. The Model will contain all of the
Decision objects from the past, so the Action Chooser can query the Model. When the Action Chooser finds past
Decisions which contain LLVM Summaries that are similar to the current summary, it can use the information about the
Action and the Action's Reward to choose the next Action.