

class Account{
String name;
int balance;

double withdraw(int amt){}
void Deposite(int amt){}
void displaymybalance(){}
double getROI(){}
}

// Saving Account Class
class SavingAccount implements Account{
  
  int limit=10000;
  @override
  String name;

  @override
  int balance;

  SavingAccount.con(String nam,int bal) //initializing with Saving account holder's name and balance
  {
    this.name=nam;
    this.balance=bal;
  }

  void Deposite(int bal)      //Depositing amount
  {
    this.balance=bal+this.balance;
    print("Amount Deposited Successfully");
  }  

  @override
  void displaymybalance() //Displaying the balance
  {
    print(this.name);
    print("Your Balance is:-");
    print(this.balance);
  }
  
  @override
  double getROI()   //returning blancewith Rate of interest
    {
      return this.balance*(0.04);
    }


  @override
  double withdraw(int amt) //withdrawing amount bolow than the limit
  {
    if(amt<=limit){
     if(amt<this.balance)
      { this.balance=this.balance-amt;
        print("amount deducted successfully");
        print("Your Balance is:");
        print(this.balance);
        return 1;
      }
      else
      {
        print("insufficient Balance");
      }
    }
    else
    {
      print("Limit exceeded");
    }
    return 0;
  }
}


//Current Account Class

class CurrentAccount implements Account{
  @override
  String name;
  @override
  int balance;

  int overdraft=100000;
 CurrentAccount.con(String nam, int bal) //initializing with Current account holder's name and balance
 {
   this.name=nam;
   this.balance=bal;
 }
  @override
  void Deposite(int amt) {   // depositing amount
      this.balance=amt+this.balance;
      print("Amount Deposited Successfully");
    }
  
    @override
    void displaymybalance() { // displaying balance
      print(this.name);
      print("Your Balance is:-");
      print(this.balance);
    }
  
    @override
    double getROI() {       //returning balance with Rate of interest
      return this.balance*(0.05);
    }

    @override
    double withdraw(int amt)    //deducting amount
    { var temp=amt+this.balance;
      if(amt<this.balance)      //checking for the balance
      {
        this.balance=this.balance-amt;
        print("amount deducted successfully");
        print("Your Balance is:");
        print(this.balance);
        return 1;
      }
      
      else if(temp<overdraft) //if the balance is insufficient then deducting the amount from overdraft
      {
        this.overdraft=this.overdraft-temp;
        print("Your Balance is 0.00");
        print("amount deducted successfully from overdraft amount");
        print("Your remaining overdraft amount is= $overdraft");
        return 1;
      }
      else
      {
        print("insufficient balance");
      }
      return 0;
    }
}

//Fixed Account
class Fixed_deposit implements Account{
  @override
  String name;
  Map<DateTime,int> AllFDs={};
  @override
  int balance;

  Fixed_deposit.con(String nam)   //initializing Fixed Deposit account holder's name
  {
    this.name=nam;
  }

  @override
  void Deposite(int amt) // Fixing the amount for two years.
  {
    var CurDate=DateTime.now();
    var finDate=CurDate.add(new Duration(days:365));
    this.AllFDs[finDate]=amt;
    print("Amount Deposited Successfully");
  }

    @override
    double withdraw(int amt) {  //withdrawing the amount if FD is matured

    var key= this.AllFDs.keys.firstWhere((k) => AllFDs[k]==amt,orElse:()=>null);  //checking for the maturity date of the given amount
    if(key!=null)
    {
      var today= DateTime.now();
      Duration diff=key.difference(today);
      var days=diff.inDays;
      if(days<0)  //checking weather Fixed deposite is matured or not.
        {
        double withd=this.AllFDs[key]*0.07;
        this.AllFDs.remove(key);
        return withd;
       }
      else{
        print("Sorry can't withdraw $days days left for your FD to mature");
      }
    }
    else{
      print("No FD with $amt Rupees");
    }
    return 0;
  }

  @override
  void displaymybalance() {     // Displaying all the FDs of the account holder.
    print("All Fixed Deposits by You");
    this.AllFDs.forEach((key, value) { print("Maturity date= $key, Amount= $value ");});
  }

  @override
  double getROI() {
    // TODO: implement getROI
    throw UnimplementedError();
  }
}


void main()
{

SavingAccount Satyam= new SavingAccount.con("Satyam",12000);  
Satyam.Deposite(50000);
Satyam.displaymybalance();
Satyam.getROI();
Satyam.withdraw(20000);

CurrentAccount Shivam=new CurrentAccount.con("Shivam",19000);
Shivam.Deposite(1000);
Shivam.displaymybalance();
Shivam.withdraw(15000);
Shivam.withdraw(50000);


Fixed_deposit Sunderam=new Fixed_deposit.con("Sunderam");
Sunderam.Deposite(100000);
Sunderam.displaymybalance();
Sunderam.Deposite(200000);
Sunderam.displaymybalance();
Sunderam.withdraw(100000);
Sunderam.displaymybalance();





}