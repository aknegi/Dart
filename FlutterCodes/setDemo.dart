void main()
{
  // Set don't have duplicate elements
var set={"Dog","Cat","Horse","Dog","Cat"};
print(set);
Set<int> set2= new Set();

set2.add(23);
set2.add(45);
set2.add(66);
set2.add(90);
set2.add(008);
print(set2);

//PROPERTIES
print(set2.first);
print(set2.last);
print(set2.length);

//methods
set2.contains(45);
set2.elementAt(1);

set2.clear();

var s={10,20,30,40,50,100};
var s2={10,20,70,60,90};
print(s.difference(s2));

print(s.intersection(s2));

print(s.any((element) => element >30));

print(s.skipWhile((value) => value>50));
//it will run while the values  are>50
//if any vlue comes whose value is <50
//then it will print the rest of the values as it is
//this works till the condition true




//set to list
var f=s.toList();








}