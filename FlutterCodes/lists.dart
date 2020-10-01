void main()
{
  List<int>list=[10,20,30,40,10,50];
  int e=list[0];
  list[1]=100;
  print(list);
  list.add(200);
  list.insert(2,4000);
  print(list.indexOf(200));
  list.remove(200);//it takes the element to remove

  print(list);
}