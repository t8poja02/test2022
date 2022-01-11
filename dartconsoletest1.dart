import 'dart:math';
import 'dart:io';

void printInteger(int aNumber) {
  double aSqrt = sqrt(aNumber);
  int aSqrtInt = aSqrt.round();
  // print('The number is $aNumber.'); // Print to console.
  // print('The sqrt number is $aSqrt.'); // Print to console.
  print('The sqrt number rounded as int is $aSqrtInt.'); // Print to console.
}

// This is where the app starts executing.
void main() {
  // var number = 777; // Declare and initialize a variable.
  // var number = 100; 
  print("Enter the value:");
  int? tmp_num = int.parse(stdin.readLineSync()!);
  var number = tmp_num;
  for( var i = 1 ; i <= 5; i++ ) { 
      printInteger(number);
	  number = number + 50;
   } 
  // printInteger(number); // Call a function.
}