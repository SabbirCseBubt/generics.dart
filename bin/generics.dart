

void main(List<String> arguments) {
  //problems without generics
 PrintInteger obj =PrintInteger(10);
 PrintString obj1=PrintString("Sabbir");

 //benefits of using generic class different object but one generic class

 Printer<String> printer=Printer<String>("Haque"); //type must be same on right and left side
 Printer<int> printer1 =Printer<int>(10);
 Printer<double> printer2=Printer<double>(3.50);
 Printer<bool> printer3 =Printer<bool>(false);


 //Multiple type generic class calling

Print<String,int> obk=Print<String,int>("99");
obk.printData(99);

//user defined generic class type

Animal<Cat> obj4=Animal<Cat>(Cat());
Animal<Dog> obj5=Animal<Dog>(Dog());

//Bound Generics
Forest<Animals> obj6=Forest<Animals>();



}

//problems without generics
class PrintInteger
{
  PrintInteger(int value)
  {
    print( value);

  }



}
//We have to write different class for different types same code again and again
class PrintString
{
  PrintString(String value)
  {
    print( value);

  }



}


//To solve this problem we will use generics for type safety






//this is generic class

class Printer<T> //type must be match with constructor type
{


  //this is generic constructor
  Printer(T value)
  {
    print(value);


  }


}


//Multiple types of generic class

//We can  use multiple unique type parameter

class Print<T,K>
{


  //used in constructor
  Print(T value)
  {

    print(value);
  }


  //used in method

  printData(K data)
  {
    print(data);
  }




}

//User defined generic class



class Animal<T>
{
  Animal(T value)
  {

    print(value);
  }



}

class Cat
{
 Cat()
 {
   print("Black Cat");
 }

}

class Dog
{
  Dog()
  {
    print("white Dog");
  }

}


//Bound Generics

class Forest<T extends Animals>
{
  
  
}

class Animals
{
  
  
  
}

class Cat1 extends Animals
{
  Cat1()
  {
    
    print("Cat1 is yellow");
  }
  
  
}
class Dog1 extends Animals
{
  Dog1()
  {

    print("Cat1 is yellow");
  }


}

class Bird
{


}