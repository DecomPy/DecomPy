class Queue:
    """
    Queue
    =============

    This class provides very minimal functions of a queue simply
    for testing with travisCI and OOP with pytest.
    """

    def __init__(self):
        """
        init

        Initializes the Queue class by initializing an empty array.
        """
        self.items = []

    def enqueue(self, item):
        """
        Enqueue an item to the queue.

        :param item: the item to enqueue.
        :type: str or defined object.
        """
        self.items.append(item)

    def dequeue(self):
        """
        Dequeues an item from the queue by deleting it from the array.
        """
        del self.items[0]

    @property
    def first(self):
        """
        Gets the first element from the queue or returns None.

        :return: the first element of the queue or None.
        :rtype: None or defined element.
        """
        if not self.items:
            return None
        return self.items[0]

    @property
    def last(self):
        """
        Gets the last element from the queue or returns None.

        :return: the last element of the queue or None.
        :rtype: None or defined element.
        """
        if not self.items:
            return None
        return self.items[-1]

    @property
    def length(self):
        """
        Gets the length of the queue.

        :return: the length of the remaining queue.
        :rtype: int
        """
        return len(self.items)

    def __eq__(self, other):
        """
        Creates an equality metric by comparing the values of the two queues.

        :param other: the other queue.
        :return: false upon failure.
        :rtype: bool
        """
        # test for none
        if self.length == 0 and other is None:
            return False

        # test for same data type
        elif self.length == other.length:
            for i in range(self.length):
                if self.items[i] != other.items[i]:
                    return False
            return True
        return False

    def __ne__(self, other):
        """
        Creates a not equal metric by comparing the values of the two queues.

        :param other: the other queue.
        :return: false upon failure.
        :rtype: bool
        """
        return not self == other

