

def calculate_discount():
    final_price = price - (price * discount/100)
    return final_price
def check (discount):
    
    if discount >= 20:
        return True
       
    
    else:
        return False
    
price = int(input("Enter the price:"))
discount = int(input("Enter the dicount:"))

if check(discount):
    final_price = calculate_discount()
    print("Final price after discunt", final_price)
else:
    print("Discount is less than 20%, the price is therefore:",price)




