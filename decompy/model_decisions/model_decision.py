
# This program demonstrates a simple decision making model using
# a while loop.  

# import the random module

import random



# This first instance of i stores the first decision.
i = random.randint(0,9)

# While a certain condition holds, make a decision.
while i < 5:
  print(i)
  # The following instance of i becomes a new decision making number.
  # If the value of i becomes greater than or equal to 5, the decision
  # to take would be to stop the while loop. Else, the decision to take
  # would be to continue the while loop.
  i = random.randint(0,9)
