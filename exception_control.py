try:
    raise Exception("I am an exception")
except Exception as e:
    print(e)
finally:
    print("the final code")