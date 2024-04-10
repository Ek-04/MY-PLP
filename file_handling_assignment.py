
#creating a new text file in write mode
file = open("my_file.txt", "w")
file.close ()
try:
#writting lines of text into the file 
    file = open("my_file.txt", "a")
    file.write ("line1\nline2\nline3\n")
    file.close()
#readng and displayig contents of the file
    file = open("my_file.txt")
    print(file.read())
    file.close ()
#appending my text file 
    file = open("my_line.txt","a")
    file.write ("Hey there!\n How are you?")
    file.close ()
#readng and displayig contents of the file
    file = open("my_line.txt")
    print(file.read())
    file.close ()
#error handling 
except Exception as e: 
    print("Error occurred...", e) 
