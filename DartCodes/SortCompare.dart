void main()
{
  List<int>list=[1333,12,35,44,2234,1,1,523];
List<int>sublist=list.sublist(3,4);//to store sublist

list.skip(3).forEach((element) =>print(element));
String str=list.join("=>");
print("join $str");

list.sort((a,b)=> a-b);
print("sorted list $list");



var names=["Ramit","Ram","Amil","Sumil","Bheem","karam","Ajaym"];
names.sort((a,b) => a.compareTo(b));
print("Names are $names");


//"every" method checks for a condition for all and returns true and false

print(names.every((ele)=>ele.startsWith("A")));//checking all names starts with A or not
print(names.every((ele)=>ele.contains("m")));

//check for first acc. to the condition
var x1=names.firstWhere((element) => element.startsWith("A"));
print("First One $x1");

var array=[23,434,556,45,564,35];
int sum=array.fold(0, (previousValue, element)=>previousValue+element);
//initial value of previosvalue will be 0
//initial value of element will be first element(23)
//after adding the value will be stored in previosValue
//and in element next element's value will be stored
print(sum);






}