/* 

void main(List<String> arguments) {
  print('Hello world!');
}
*/

/* 
void main() {
  var year = 1998;

  if (year <= 2000) {
    print('Year $year is equal or before 2000');
    // } else if (year > 2000) {
  } else {
    print('Year $year is after 2000');
  }

  for (int month = 1; month <= 12; month = month + 2) {
    print('Odd month: $month');
    print('Even month: ${month + 1}');
  }

  var maxYear = year + 5;
  while (year < maxYear) {
    year++;
    if (year <= 2000) {
      print('Year $year is equal or before 2000');
    } else if (year > 2000) {
      print('Year $year is after 2000');
    }
  }
} 
*/

/* 
import 'dart:math';

main() {
  var randomNumber = Random();
  for (var i = 0; i < 5; i++) {
    print(randomNumber.nextInt(100));
  }
}
*/

// Lotto number generator
import 'dart:math';

class LottoNumbers {
  final int numbers = 7; // how many numbers
  final int maxLottoNumber = 38; // max value for random

  List<int> getRandoms() {
    var randomNumber = Random();
    var allNumbers = <int>[];
    for (var i = 0; i < numbers; i++) {
      int randomizedNumber = randomNumber.nextInt(maxLottoNumber) + 1;
      // do not generate same number twice
      if (allNumbers.contains(randomizedNumber) == false) {
        allNumbers.add(randomizedNumber);
      } else {
        print('Note: $randomizedNumber was already picked. Ignoring...');
      }
    }
    return allNumbers;
  }
}

void main(List<String> arguments) {
  List<int> numbers = LottoNumbers().getRandoms();
  numbers.sort();
  numbers.forEach((element) => print(element));
}
