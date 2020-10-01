void main()
{
  //datatypes i dart
  /* the base type is _Type
  basic and advance
  basic:
  int double bool String 

  three kind of int
  smallint(32bit) mint(64bit) bigint(based on RAM)


  Advance:
  */

  
  //int to string
  int a=2434334;
  String str=a.toString();

  //String to int
  String s="300";
  int b=int.parse(s);

  //int.parse(s,radix:10); 10 is for decimal 16 is for hexa
  print(s.runtimeType.runtimeType);
  String name="Akshay";

  //codUnitAt print ascii unit
  print("${name.codeUnitAt(0)}");
  print("checkin by is keyword ${name is String}");

}