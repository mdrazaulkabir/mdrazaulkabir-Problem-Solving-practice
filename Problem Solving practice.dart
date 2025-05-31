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
// void main(){
//   const int mod=1000000007;
//   int n=int.parse(stdin.readLineSync()!);
//   if(n==0){
//     print(n);
//     return;
//   }
//   if(n==1){
//     print(n);
//     return;
//   }

//   int a=0;
//   int b=1;
//   int fib=0;
//   for(int i=2; i<=n; i++){
//     fib=(a+b)%mod;
//     a=b;
//     b=fib;
//   }
//   print(fib);
// }





////Start to module 12

//1.check vowel in string 
// void main(){
//   String vowel1=stdin.readLineSync()!;
//   String vowel=vowel1.toLowerCase();
//   if(vowel.contains('a')||vowel.contains('e')||vowel.contains('i')||vowel.contains('o')||vowel.contains('u')){
//     print("The string contains a vowel.");
//   }
//   else{
//     print("The string does not contain any vowel.");
//   }
// }



//2. String Transform
/*Problem Statement
You are tasked with writing a program that takes a string S as input and transforms it in such a way 
that after every two characters, the following character is converted to uppercase.

Input
A string S containing alphanumeric and/or special characters.

Output
The transformed string where every third character (counting from the beginning) is in uppercase, while the rest of the characters remain in lowercase.

Constraints

3≤∣S∣≤100
Example 1:
Input:
hello123world
Output:
heLlo123WorLd
Example 2:
Input:
abcdefg
Output:
abCdeFg
Notes:
The uppercase transformation should apply only to alphabetic characters; non-alphabetic characters should remain unchanged.
 
 */
// void main() {
//   //stdout.write("Enter a string: ");
//   String? input = stdin.readLineSync();

//   if (input == null || input.isEmpty) {
//     print("No input provided.");
//     return;
//   }

//   StringBuffer result = StringBuffer();

//   for (int i = 0; i < input.length; i++) {
//     String char = input[i];

//     if ((i + 1) % 3 == 0) {
//       // Every 3rd character
//       if (RegExp(r'[a-zA-Z]').hasMatch(char)) {
//         result.write(char.toUpperCase());
//       } else {
//         result.write(char); // Keep non-letters unchanged
//       }
//     } else {
//       // 🔥 Keep all other characters exactly as they are
//       result.write(char);
//     }
//   }

//   print(result.toString());
// }




//4. Code validation
/*Problem Statement
Write a program to create a function that determines whether a string is a valid code. 
A code must begin with a pound key # and is exactly 6 characters in length. Each character 
must be a digit from 0-9 or an alphabetic character from A-F. All alphabetic characters may 
be uppercase or lowercase.

Input
The program will take a string S as input.

Output
The output will print either "true" or "false"

Constraints
0 ≤ |S| ≤ 1000
Example:
Enter string

Input:
#CD5C5C
Output:
true
 */
//solve:


// bool isValidCode(String code) {
//   // Check if string length is exactly 7 and starts with #
//   if (code.length != 7 || !code.startsWith('#')) {
//     return false;
//   }

//   // Check if all characters after # are in 0-9 or A-F or a-f
//   for (int i = 1; i < 7; i++) {
//     String ch = code[i];
//     if (!RegExp(r'[0-9a-fA-F]').hasMatch(ch)) {
//       return false;
//     }
//   }

//   return true;
// }

// void main() {
//   //stdout.write("Enter string: ");
//   String? input = stdin.readLineSync();

//   if (input == null) {
//     print("false");
//     return;
//   }

//   print(isValidCode(input));
// }
