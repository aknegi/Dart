

void main()
{
 

var CustAddress= [[{"Gaziabad","PushpVihar"},{"Dwarka","Rohini"}],[{"Pitampura"},{"Dwarka"}],[{"Saket"},
{"Gurugram"}],[{"Rk Puram","NehruPlace"},{"Noida","Banglore"}]];

var NameOfCustomers=["Amit","Suraj","Kapil","Sachin"];


Map<String,List> Customer={NameOfCustomers[0]:CustAddress[0],NameOfCustomers[1]:CustAddress[1],
NameOfCustomers[2]:CustAddress[2],NameOfCustomers[0]:CustAddress[3]};


var OrderList=[{"101":[["Samsung TV",30000],["Boat Airdrops",2250]]} ,{"102":[["ASUS",4022],["PUMA",500]] },
    {"103":[["HP Laptop",55500],["shoe",900]]},{"104":[["Casio",6000],["Almond Oil",300]]}];

Map<String,List> CustomerOrders={NameOfCustomers[0]:[OrderList[1],OrderList[0]],NameOfCustomers[1]:[OrderList[2]],
NameOfCustomers[2]:[OrderList[3]]};


for(int i=0;i<OrderList.length;i++)
  {
    var map=OrderList[i];
    
    map.forEach((k,v)
    {
      var temp=[];
        for(int j=0;j<v.length;j++)
        {
          temp.add(v[j][1]);
        }
      temp.sort((a,b)=> a-b);
    
      int tem=0;
      for(int k=0;k<temp.length;k++)
      {
        for(int z=0;z<v.length;z++)
        {
          if(temp[k]==v[z][1])
          {
            var t=v[z];
            v[z]=v[tem];
            v[tem]=t;
            tem++;
          }
        }
      }
    });
  }
 
 print(CustomerOrders);
}
