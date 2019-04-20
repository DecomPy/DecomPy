from decompy.reinforcementlearning.actionchooser.ActionChooser import ActionChooser
from decompy.reinforcementlearning.model.Decision import Decision


class Model:
    """
    Model is the memory of the system.
    The Model is a Singleton Instance.
    decision_history might be good as a database using the repository pattern.
    First example from: https://python-3-patterns-idioms-test.readthedocs.io/en/latest/Singleton.html
    """

    # static instance of model
    instance = None

    class Model:
        """
        Singleton instance of Model.
        """
        # TODO: where is decision_history coming from?
        def __init__(self, decision_history):
            """
            Creates a new singleton with the decision_history info.
            :param decision_history: a list of Decisions.
            """
            self.decision_history = decision_history
            pass

        def get_past_info(self, summary_of_current_state, possible_actions):
            """
            get a list of decisions based off of the summary of the current state and the list of possible actions to take.
            :param summary_of_current_state: the current state summary
            :type: LLVMSummary
            :param possible_actions:
            :type: list<Action>
            :return: a list of decisions.
            :rtype: list<Decision>
            """
            pass

        def update_model(self, decision):
            """
            Updates the model based off a decision.
            :param decision: the decision to update the model
            :type: Decision
            :return: nothing
            """
            pass

    def __init__(self, decision_history):
        """
        creates a new singleton with the decision_history info
        :param decision_history: a list of Decisions.
        """
        if not Model.instance:
            Model.instance = Model.__Model(decision_history)
        else:
            Model.instance.decision_history = decision_history

    def __getattr__(self, name):
        """
        gets the singleton instance
        :param name: the name of the instance
        :return:
        """
        return getattr(self.instance, name)


