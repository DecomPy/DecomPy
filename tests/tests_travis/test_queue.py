import unittest
from travis_examples import queuetest as q


# queue test
class TestQueue(unittest.TestCase):

    def setUp(self):
        """
        initializes and sets up the queues.
        """
        self.queue1 = q.Queue()
        self.queue2 = q.Queue()

    def test_init_enqueue_dequeue(self):
        """
        Tests a dequeue and enqueue on the queue using pytest and asserts None if no element is found.
        """
        self.assertEqual(self.queue1, self.queue2)

        self.queue1.enqueue("hello")

        # not equal
        self.assertNotEqual(self.queue1, self.queue2)

        # are equal
        self.queue2.enqueue("hello")
        self.assertEqual(self.queue1, self.queue2)

        # assert equal
        self.assertEqual(self.queue1, self.queue2)

    def test_length(self):
        """
        Tests the length of the queue.
        """
        self.assertEqual(self.queue1.length, 0)

        # enqueue 1 element
        self.queue1.enqueue("hi")
        self.assertEqual(self.queue1.length, 1)

        # assert length for loop enqueues
        for i in range(20):
            self.queue1.enqueue(i)

        self.assertEqual(self.queue1.length, 21)

        # assert length for loop dequeues
        for i in range(20):
            self.queue1.dequeue()

        # assert length
        self.assertEqual(self.queue1.length, 1)

        # assert length is same for 2nd queue
        self.queue2.enqueue("different")
        self.assertEqual(self.queue2.length, 1)


if __name__ == '__main__':
    unittest.main()
