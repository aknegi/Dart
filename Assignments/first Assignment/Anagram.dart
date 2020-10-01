void main() {
  
var check="hello";
var meck="lleoh";
 if(check.length==meck.length)
 {
  var first=check.split("");
  var second=meck.split("");

  first.sort();
  second.sort();
  var flag=0;


  for(int i=0;i<first.length;i++)
  {
    if(first[i]!=second[i])
    {
      print("Strings are not anagram");
      flag=1;
      break;
    }
    
  }
  if(flag==0)
    {
      print("Strings are  anagram");
    }
 }
else
 {
  print("Strings are not anagram");
 }

}