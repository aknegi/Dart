

void main() {
  
var input=[1,2,3,4,5,6,8,9];
int len=input.length+1;

int sum=0;
int arSum=0;
int z=0;
for( z=0;z<input.length;z++)
{
  arSum= arSum + input[z];
  sum=sum+(z+1);
}
sum=sum+(z+1);
print(sum-arSum);


}


