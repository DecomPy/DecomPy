from travis_examples import Queue


# test for first and last element
def test_first_last_dequeue_enqueue():
    q = Queue.Queue()

    q.enqueue("hi")
    q.enqueue(100)
    q.enqueue(300)
    q.enqueue("hello")

    assert q.first == "hi"
    q.dequeue()
    assert q.first == 100
    assert q.last == "hello"
    q.dequeue()
    q.dequeue()
    q.dequeue()
    assert q.first is None


# tests the length of the queue
def test_length():
    q = Queue.Queue()
    assert q.length == 0

    q.enqueue(1)
    assert q.length == 1

    # assert length for loop enqueues
    for i in range(20):
        q.enqueue(i)

    assert q.length == 21

    # assert length for loop dequeues
    for i in range(20):
        q.dequeue()

    assert q.length == 1

    # assert
    q.dequeue()
    assert q.length == 0


