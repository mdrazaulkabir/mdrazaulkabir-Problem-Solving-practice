 import 'dart:io';
import 'dart:math';
// void main(){
//   print("print enter theree number ");
//   int num1=int.parse(stdin.readLineSync()!);
//     int num2=int.parse(stdin.readLineSync()!);
//   int num3=int.parse(stdin.readLineSync()!);
// // if(num1<num2)? num1:if(num2<num3)? num2:num3;
//  if(num1<num2 && num1<num3){
// print(num1);
//  }
// else if (num2<num1&& num2<num3){
//   print(num2);

// }
// else{
//   print(num3);
// }
// }



//1.solve it for minimum number of three
// import 'dart:io';

// void main(){
//   print("Enter three number");
//   String treeNumber=stdin.readLineSync()!;
//   List<String>threeNum=treeNumber.split(' ');
//   if(threeNum.length != 3){
//     print("Error! Enter theree number one time by using space");
//     return;
//   }
//   int num1=int.parse(threeNum[0]);
//   int num2=int.parse(threeNum[1]);
//   int num3=int.parse(threeNum[2]);
//   int minmum=num1;
//   if(num2<minmum) minmum=num2;
//   if(num3<minmum) minmum=num3;
//   print(minmum);
//   }


//2.this problem is for traiangle problem for area finding

// void main(){
//   String twoNum=stdin.readLineSync()!;
//   List<String>twoNumber=twoNum.split(' ');
//   double num1=double.parse(twoNumber[0]);
//   double num2=double.parse(twoNumber[1]);
//   double area=0.5*num1*num2;
//   print(area.toInt());
// }

//3. this problem is farenheit to celsius conversion
// void main(){
//   double celsius=double.parse(stdin.readLineSync()!);
//   double farenheit=(celsius*9/5)+32;
//   print("The temperature in Fahrenheit is: ${farenheit.toStringAsFixed(2)}");
// }



//4.this problem is ged  

// int Gedfuntion(int a,int b){
//   while(b!=0){
//     int temp=b;
//     b=a%b;
//     a=temp;
//   }
//   return a;
// }

// void main(){

//   List<String>numbers=stdin.readLineSync()!.split(' ');
//   int num1 =int.parse(numbers[0]);
//   int num2 =int.parse(numbers[1]);
//   int result=Gedfuntion(num1, num2);
//   print(result);

// }


//5. this problem is prime number checking 
// void main(){
//   int num=int.parse(stdin.readLineSync()!);
//   bool isPrime=true;
//   if(num<=1){
//     isPrime=false;
//   }
//   else{
//     for(int i=2; i<=sqrt(num);i++){
//       if(num%i==0){
//         isPrime=false;
//         break;
//       }
//     }
//   }

//   if(isPrime){
//     print("$num is a prime number.");
//   }
//   else{
//     print("$num is not a prime number.");
//   }
// }


//6. this problem is fibonacci number
void main(){
  const int mod=1000000007;
  int n=int.parse(stdin.readLineSync()!);
  if(n==0){
    print(n);
    return;
  }
  if(n==1){
    print(n);
    return;
  }

  int a=0;
  int b=1;
  int fib=0;
  for(int i=2; i<=n; i++){
    fib=(a+b)%mod;
    a=b;
    b=fib;
  }
  print(fib);
}