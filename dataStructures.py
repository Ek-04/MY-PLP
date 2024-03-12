my_list = []
print ("my_list contains:", my_list)
my_list.append(10)
print ("my_list contains:", my_list)
my_list.append(20)
print ("my_list contains:", my_list)
my_list.append(30)
print ("my_list contains:", my_list)
my_list.append(40)
print ("my_list contains:", my_list)
my_list[1] = (15)
print ("my_list contains:", my_list)

another_list = [50, 60, 70]
my_list.extend(another_list)
print ("my_list after extending:", my_list)
del(my_list[6])
print("my list after deleting:", my_list)
my_list.sort()
print("Mylist after sorting:", my_list)
my_list.sort(reverse= True)
print("my list in descending order:", my_list)

print("index value of 30 is:", my_list.index(30))


