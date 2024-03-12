#declare variables name and ageaas dictionaries
names ={}
ages ={}
fav_colours = {}
#declaere a value of the range 
n = 3
#note that the  variable name for the dictionary shousld be different fromt hr names of the keys
# asssign a counter to loop over the rage 
for i in range(n):
#use the input function to allow the user to enter the values 
    name  = input("Enter your name:")
    age = input ("Enter your age:")
    Colour = input("Enter your favourite colour:")
#assign the values entered to the keys of the dictionary

names[i] = name
ages[i] = age 
fav_colours[i] = Colour


for key in names: 
    print("NAME:", names[key], "AGE:", ages[key] , "Favourite colour:", fav_colours[key])
