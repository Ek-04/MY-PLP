

answer = int(input ("Enter your  number:"))
print("The answer is:",answer)
def  check(answer):
        result = answer % 10 

        if result  == 0:
            return "True"

        elif result != 0:
            return "false"

final = check (answer)
print(final)