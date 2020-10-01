void main() {
  var PartyMembers=[2,4,5,94,90,3,12,22];

  Map<int,int> store={};

  for(int i=0;i<PartyMembers.length;i++)
  {
    if(store.containsKey(PartyMembers[i]))
   {
     store[PartyMembers[i]]=    store[PartyMembers[i]] +1;

   } 
   else{
        store[PartyMembers[i]]=1;
   }
  }
var count=0;
 store.forEach((key, value) 
 { 
   if(value>1)
   {
     count=count+1;
   }
 });

 if(count>1)
 {
   print("BOYS");
 }
 else{
   print("GIRLS");
 }
  
}