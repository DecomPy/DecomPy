import tensorflow as tf


class SquareTest(tf.test.TestCase):
    """
    SquareTest
    ===========

    Basic test with TensorFlow. Squares a function and asserts equality.
    TensorFlow extends unittest, but pytest still runs it.
    """

    def testSquare(self):
        """
        Asserts equality for testing a square.

        :rtype: object
        """
        with self.test_session():
            x = tf.square([2, 3]) # squares
            self.assertAllEqual(x.eval(), [4, 9])  # asserts equality


# runs test
if __name__ == '__main__':
    tf.test.main()
