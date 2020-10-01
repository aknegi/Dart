void main()
{
  //anonymous functions
  var w=() {
    print("w is an anonymous function");
  };
  print(w);
  w();


  //we have a type Function which is a class like String
  Function fun=(){
    print("this is implicit way of a anonymous funtion");
  };
  fun();
  //this is same as we do with other datatypes
  //like var a=100 and int a=100

  //one liner function
  //(x,y are parameters) (x+y is what is to return)
  //add 2 is function name
  var add2=(x,y)=> x+y;
  print(add2(2,3));
}