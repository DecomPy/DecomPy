class AnyNumberToken:
    def __init__(self):
        pass

    def __eq__(self, other):
        if isinstance(other, str):
            for char in other:
                if char not in "0123456789":
                    return False
            return True
        elif isinstance(other, int):
            return True
        return False

if __name__ == "__main__":
    a = AnyNumberToken()
    print("Should be:\n", True, True, True, False, False)
    print("Actually:\n",a==5, a=="5", a=="553524", a==44.4, a=="44.4")
