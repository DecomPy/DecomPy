Current Suggestion and Closing Remarks
**************************************

++++++++++++++++++
Current Suggestion
++++++++++++++++++

Rule based decompilation -- or essentially hand coding a list of options
for the ML agent to choose from and letting it choose only combinations
of those actions seems to be holistically impossible. Other ideas that
the team has begun to explore show much more promise and hopefully will
be of more use. I suggest whole heartedly that we pursue such endeavors.


+++++++++++++++
Closing Remarks
+++++++++++++++

My suggestion not withstanding, some of the ideas that we discovered
might come of use. While concrete, invariable rules are not only likely
beyond us but would not be very successful, on a small scale, they might
be of aid during the decompilation process. Borrowing the ideas of many 
other decompilers and providing the simpler actions at the very least
would give the ML agent a step up into being able to handle complex
decompilation.

For example, one idea that the team has been exploring has been an
episodic RL agent which essentially has a lookup table of semantically
equivalent copies of small snippets. The agent would be able to search
for occurences and perform substituions throughout the code. This would
allow a decompiler which does it's job quite lazilly -- perhaps generating
goto style statements instead of while loops for example -- to be fixed
to produce readable, ellegant code. If the ML agent were able to perform
substituions and then, after performing some substitions, run llvm passes
to clean the results before continuing, it is possible it might learn
quicker.
