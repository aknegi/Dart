void main(List<String> args) {
  
  var arr=[4,15,3,7,0];
  
  var leaders=[];
  int i=arr.length-1;
  int j=0;
  int max=0;
  while(i>=0)
  {
    if(arr[i]>=max)
    {
      leaders.add(arr[i]);
      max=arr[i];
      j++;
    }
    i--;
  }

  for(int k=j-1;k>=0;k--)
  {
    print(leaders[k]);
  }

}

