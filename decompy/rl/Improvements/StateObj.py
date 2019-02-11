class StateObj:
    '''Object contains all state related information'''

    def __init__(self, features, available_actions, action_values, visit_count):
        self.features = features
        self.available_actions = available_actions
        self.action_values = action_values
        self.visit_count = visit_count

    def __eq__(self, other):
        """Override the default Equals behavior"""
        if isinstance(other, self.__class__):
            return self.features == other.features
        elif self.features == other:
            return True
        return NotImplemented

    def __ne__(self, other):
        """Define a non-equality test"""
        if isinstance(other, self.__class__):
            return not self.__eq__(other)
        return NotImplemented
