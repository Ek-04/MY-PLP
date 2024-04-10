file = open("python script")
print(file.read())
for line in file:
    print(line)
file.close()
try:
        file = open("name.txt")
        print(file.read())
except:
      print("the file you want to read doe not exist! ")
finally:
      file = open("name.txt", "a")
      file.write("new")
      file.close()

      file = open("name.txt")
      print(file.read())
      file.close()

file = open("dummy.dart" , "w")
file.write("AMEN")
file.close()

file = open("dummy.dart")
print(file.read())
file.close()
#howto create a new file 
file = open("myinfo.txt", "w")
file.close()

      