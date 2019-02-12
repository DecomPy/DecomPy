Overview
**************************

This is a log of major design decisions and reasoning for the Data Gathering portion of Decompy.

-----------------------------------------------------------------------------------------------------------------

Why is this necessary?
=========================
Machine Learning requires a substantial amount of data to train off of. Additionally, machine learning needs the best,
valid data (in our case it compiles and filtered out a few header files; see other sections). Lastly, the Decompy team
has aimed to make this modular so that other users can build off of and use this for gathering their own data for their
own parameters like a language or filter.

-----------------------------------------------------------------------------------------------------------------

What is the process?
=========================
.. image:: hierarchy_flow.png
   :scale: 50%
   :alt: heirarchy flow.
   :align: center

The above image displays the general flow for gathering data for our ML agent. We first utilize GitHub's API to search for
our specific language (in our case C language) and generate metadata for the repo.
In stage two, we then filter out the C files from that repo and store them into an Unfiltered folder.
Once that has finished, the third stage reads from the Unfiltered folder and looks to see what is good data for our ML agent.
This stage looks to make sure we have compilable data, and data that pass our filters (correct headers, file size, not too complex).
Finally, in stage 4, we compile the filtered (valid) C files into unoptimized and optimized files which will prepare us to bulk load into the database.

-----------------------------------------------------------------------------------------------------------------

How to use
=========================
Depending on which stage you want, you can run the various methods that match their stage in the CreateLocalData.py class.
There is a .stage1() method which grabs the repos and generates metadata. There is a .stage2() method that grabs the C files from the repo.
There is a .stage3() method which filters out the data. There is a .stage4() method that compiles into unoptimized and optimized LLVM.
Finally, there is an all_stages() method which will run all stages. To see more information regarding each stage,
continue reading this documentation.

