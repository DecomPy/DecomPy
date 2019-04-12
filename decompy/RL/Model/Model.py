from decompy.RL.ActionChooser import ActionChooser
from decompy.RL.Model import Decision
    """
    Need to import the Decision class in order to access the methods defined in that class.
    """

class Model:
    """
    A Model class that accepts decision from the Decision class.
    """

    retrieveDecision = Decision()
    """
    A retrieveDecision instance of the Decision() class is being instantiated here.
    """

    retrieveDecision.get_summary()
    """
    A get_summary() method needs to be defined in the Decision class.
    This method will return self.summary. Its parameter should be self.    
    """

    retrieveDecision.get_reward()
    """
    A get_reward() method needs to be defined in the Decision class.
    This method will return self.reward. Its parameter should be self.    
    """

    retrieveDecision.get_action()
    """
    A get_action() method needs to be defined in the Decision class.
    This method will return self.action. Its parameter should be self.    
    """