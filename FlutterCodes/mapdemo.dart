

void main()
{
  Map<String,List> phoneMap={"Amirt":[222,444],"Ram":[3333],"Shyam":[5555],
  "Anuj":[666]};
 // int phoneNo=phoneMap["Ram"];
  //print("Ram Phone $phoneNo");
  
  //Properites

  print(phoneMap.length);
  print(phoneMap.keys);
  print(phoneMap.values);
  print(phoneMap.isEmpty);

  print(phoneMap["Amirt"][0]);
 
}