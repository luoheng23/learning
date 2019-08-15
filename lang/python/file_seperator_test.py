



def file_seperator_test1():
    # output
    with open("medical.txt", "w") as f:
        f.write("I am a\r good\n boy.\r\n")
    #input
    with open("medical.txt", "r", newline="\r\n") as f:
        print(list(f))

def file_seperator_test2():
    # output
    with open("medical.txt", "w", newline="") as f:
        f.write("I am a\r good\n boy.\r\n")
    with open("medical2.txt", "w", newline="\n") as f:
        f.write("I am a\r good\n boy.\r\n")

    #input
    with open("medical.txt", "r", newline="\r\n") as f:
        print(list(f))
    with open("medical2.txt", "r", newline="\r\n") as f:
        print(list(f))

def file_seperator_test3():
    # output
    with open("medical.txt", "w", newline="\r") as f:
        f.write("I am a\r good\n boy.\r\n where should\r\n I change the line ?\r\n")
        f.write("I can't stop\r\n")
    with open("medical2.txt", "w", newline="\r\n") as f:
        f.write("I am a\r good\n boy.\r\n")

    #input
    with open("medical.txt", "r", newline="\r\n") as f:
        print(list(f))
    with open("medical2.txt", "r", newline="\r\n") as f:
        print(list(f))

def file_seperator_test4():
    # output
    with open("medical.txt", "w", newline="") as f:
        f.write("I am a\r good\n boy.\r\n")
    #input
    with open("medical.txt", "r") as f:
        print(list(f))

def file_seperator_test5():
    # output
    with open("medical.txt", "w", newline="") as f:
        f.write("I am a\r good\n boy.\r\n")
    #input
    with open("medical.txt", "r", newline="") as f:
        print(list(f))

def file_seperator_test6():
    # output
    with open("medical.txt", "w", newline="") as f:
        f.write("I am a\r good\n boy.\r\n where should\r\n I change the line ?\r\n")
        f.write("I can't stop\r\n")
    with open("medical2.txt", "w", newline="") as f:
        f.write("I am a\r good\n boy.\r\n where should\r\n I change the line ?\r\n")
        f.write("I can't stop\r\n")
    with open("medical3.txt", "w", newline="") as f:
        f.write("I am a\r good\n boy.\r\n where should\r\n I change the line ?\r\n")
        f.write("I can't stop\r\n")

    #input
    with open("medical.txt", "r", newline="\r") as f:
        print(list(f))
    with open("medical2.txt", "r", newline="\n") as f:
        print(list(f))
    with open("medical3.txt", "r", newline="\r\n") as f:
        print(list(f))

if __name__ == "__main__":
    file_seperator_test1()
    file_seperator_test2()
    file_seperator_test3()
    file_seperator_test4()
    file_seperator_test5()
    file_seperator_test6()
