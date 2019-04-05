
    """
    Need to import the Decision class in order to access the methods defined in that class.
    """

class model:
    """
    A Model class that accepts decision from the Decision class.
    """

    retrieveDecision = Decision()
    """
    A retrieveDecision instance of the Decision() class is being instantiated here.
    """

    retrieveDecision.getPastSummary()
    """
    A getPastSummary() method needs to be defined in the Decision class.
    This method will return self.summary. Its parameter should be self.    
    """

    retrieveDecision.getReward()
    """
    A getReward() method needs to be defined in the Decision class.
    This method will return self.reward. Its parameter should be self.    
    """
    retrieveDecision.getAction()
    """
    A getAction() method needs to be defined in the Decision class.
    This method will return self.action. Its parameter should be self.    
    """