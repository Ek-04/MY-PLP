#user enters the list of integers 
integers = input ("enter a list of  integers:")

#the list is split into smaller strings ans stored in  integers_str
integers_str = integers.split()

#the ssmall sttrigs are converted into integers and stored in integers_str_int
integers_str_int = [int(num_str) for num_str in integers_str]

#the sum of integers is computed 
sum = sum(integers_str_int)

#the sum is printed 
print (sum) 





personal_info_list = [] 
while True:
    PERSONAL_INFO = {}
name = input ("Enter your name (or type 'quuit too stop):")

age = input ("Enter yur age:")   

if name.lower() == 'quit':
   break 


PERSONAL_INFO ['name '] = name
PERSONAL_INFO ['age'] = age23 
personal_info_list .append(PERSONAL_INFO)

print("people's information:")
for index, info in enumerate(personal_info_list, start = 1):
 print(f"person{1}: {info}")