
// Importing dart:io file
import 'dart:io';

void main()
{
  int counter=1;
  int sum=0;
  // Asking for favourite number
  print("Enter number $counter:");
  int n1 = int.parse(stdin.readLineSync());
  counter++;
  print("Enter number $counter:");
  counter++;
  int n2 = int.parse(stdin.readLineSync());
  sum =n1+n2;
  while(true){
    print("You want to enter another number ? yes/no ");
    String choice =stdin.readLineSync();
    if(choice == "yes"){
      print("Enter number $counter:");
      int n = int.parse(stdin.readLineSync());
      counter++;
      sum+=n;
    }
    else if(choice == "no"){
      break;
    }
    else{
      print("Wrong Input");
      continue;
    }
  }
  print("your sum is $sum");
}