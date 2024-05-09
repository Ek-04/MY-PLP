/*class Shirt{
String owner;
String color;
String type;
int size;
//constructor
Shirt(this.owner, this.color, this.type, this.size);

void displayShirtInfo()
{
    print('Owner:$owner');
    print('Color:$color');
    print('Type:$type');
    print('Size :$size');
}
}
void main ()
{
    var shirt = Shirt ("Esther", "black", "T-shirt", 20);//object it creates a copy of the class and uses it 
    shirt.displayShirtInfo();
}
*/
class Rectangle {
    int width;
    int height;
    //constructor
    Rectangle(this.width, this.height);

    void area(){
        print("area: $width, $height");
        print("area: $width * $height = $width * $height");
    }
}
void main ()
{
    var area_of_rectangle = Rectangle(30, 45);
    area_of_rectangle.area();
}