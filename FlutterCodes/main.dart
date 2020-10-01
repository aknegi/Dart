
import 'dart:io';
void main(){
  var a=1200;
  var b="akshay";
   print(" a is $a");
  print("b is $b");
  print("Hello world");

 
//print does not print in same line
//hence we use write function.
//we need to import this method from 
//import 'dart: io';

stdout.write("enter the first Number");
int firstnum=int.parse(stdin.readLineSync());
stdout.write("enter the second Number");
int secondnum=int.parse(stdin.readLineSync());
int result=firstnum+secondnum;
print("result is $result");
//{it understands the expressions}
print("sum is ${firstnum+secondnum}");

} 