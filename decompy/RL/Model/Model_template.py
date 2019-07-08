from decompy.RL.ActionChooser import ActionChooser
from decompy.RL.Model import Decision


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
            :param decision_history: a dictionary of Decisions.
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

        def get_decision_by_hash(self, hashed_llvm):
            """
            gets the decision by hashed_llvm summary.
            :param hashed_llvm: the hashed_llvm summary
            :return: a decision or None if not found.
            :rtype: Decision
            """
            return self.decision_history[hashed_llvm]

        def get_all_decisions_dictionary(self, hashed_llvm):
            """
            gets the decision by hashed_llvm summary.
            :param hashed_llvm: the hashed_llvm summary
            :return: a decision or None if not found.
            :rtype: Decision
            """
            dict_list = []
            # loop through all keys, add them to a new list
            for key, value in self.decision_history:
                if type(value) is list:
                    dict_list.extend(value)
                else:
                    dict_list.append(value)
            return self.decision_history[hashed_llvm]

        def get_all_decisions_list(self):
            """
            gets all decisions and puts them into a list.
            :return: a decision list
            :rtype: list<Decision>
            """
            return (for _ in self.decision_history.iteritems())

        def update_model(self, decision):
            """
            Updates the model based off a decision.
            :param decision: the decision to update the model
            :type: Decision
            :return: nothing
            """
            # get hash representation from llvm summary
            hashed = hash(decision.summary)

            # if it already exists, then add it to a list
            if hashed in self.decision_history:
                decision_list = self.decision_history[hashed]
                decision_list.append(decision)
                decision = decision_list  # for convenience

            self.decision_history[hashed] = decision

    def __init__(self, decision_history):
        """
        creates a new singleton with the decision_history info
        :param decision_history: a dictonary of Decisions.
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


