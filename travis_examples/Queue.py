class Queue:
    def __init__(self):
        self.items = []

    def enqueue(self, item):
        self.items.append(item)

    def dequeue(self):
        del self.items[0]

    def first(self):
        return self.items[0]

    def last(self):
        return self.items[-1]

    @property
    def length(self):
        return len(self.items)

