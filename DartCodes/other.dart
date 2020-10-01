void main()
{
  List<int> arr=[10,23,43,53,244,533];
  print(arr);

//this is iterator, it don't have end point
//hece we use iterator
  for (int i in arr)
  {
    print(i);
  }

//one liner
 arr.forEach((element) => print(element));


List<int>list=[1333,12,35,44,2234,1,1,523];
List<int>sublist=list.sublist(3,4);//to store sublist

//PROPERTIES

print(list.length);
print(list.isEmpty);
print(list.isNotEmpty);
print(list.first);
print(list.last);

//OPERATORS

print(list+sublist);


}