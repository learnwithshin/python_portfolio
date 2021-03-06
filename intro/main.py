from helloworld import say_hello_world
from my_other_dir.greetings import say_hi


def main():
    res_1 = say_hello_world()
    res_2 = say_hi("Bob")
    return f"{res_1} and {res_2}"


if __name__ == "__main__":
    print(main())
