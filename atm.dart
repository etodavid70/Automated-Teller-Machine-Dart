import 'dart:io';

class Bank {

    dynamic name;
    dynamic account_number;
    int type = 10;
    int amount= 0;
    int tot = 0;
    dynamic av_balance;
    dynamic full_name;
    dynamic acc_selection;
    bool acc_type_savings = true;
    dynamic acc_number=101010;  // generate a random account number
    dynamic password;
    
    


    open_account (){

        print("welcome to Etos Bank\n enter your full name");
        full_name= stdin.readLineSync();
        print("select account type\n 1. savings \n 2. current");
        acc_selection= stdin.readLineSync();
         
         switch (acc_selection){
          case "1":
          acc_type_savings= false;

          print("your account is registered\n your account ${acc_number}\n your account is a current account");
          break;
          case "2":
          acc_type_savings= true;
          print("your account is registered\n your account ${acc_number}\n your account is a savings account");
          break;

          default:
          print("invalid input");

         }
        print("enter your password");
          password= stdin.readLineSync();

          //there should be password validation here

          print("welcome  $full_name \n your account has been successfully created");

        
    }

    // account balance

     show_balance (){
        
        print("\n  welcome $full_name \n total amount is ${av_balance}");
     }

     //to deposit

     deposit (){

        print("enter the amount to be deposited");
         
        var b= stdin.readLineSync();
        var b2= num.parse(b!);
        av_balance=tot + b2;
        print("available balance is ${av_balance}");


     }

// to withdraw
     withdraw (){

        
        print("enter the amount to withdraw");
        var a= stdin.readLineSync();
        var a2= num.parse(a!);
        av_balance=tot - a2;
        print("available balance is ${av_balance}");


     }
}


void main(){
    var choice;
    
var password2;
    var eto = new Bank();

    var pass = eto.password;
    
    
    print("welcome to Etos Bank\n enter your password");
    password2= stdin.readLineSync();

    if (password2==pass){
        print("wrong password"); //password validation with 3 attepmts
    }

    else {

        print("enter your preffered choice");
         print("1. Open account \n 2. show balance \n 3. deposit \n 4. withdraw");
         
         choice = stdin.readLineSync();

         switch(choice){
            case "1":
            eto.open_account();
            break;
            case "2":
            eto.show_balance();
            break;
            case "3":
            eto.deposit();
            break;
            case "4":
            eto.withdraw();
            break;
            default:
            print("invalid command");

         }
    }
}