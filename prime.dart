import 'dart:io';
import 'dart:math';

bool isPrime(N) {
  if (N <= 1) return false;
  final lowerBound = sqrt(N).floor();
  var divisiorsFound = 0;
  for (var i = 1; i <= lowerBound; i++) {
    if (N % i == 0) {
      divisiorsFound++;
    }

    if (divisiorsFound > 1) {
      return false;
    }
  }
  return true;
}

void main() {
  print('Enter N');

  List input = [2, 7, 8, 13, 15, 32, 49, 48];

  Map<String, dynamic> data = {};
  List prime = [];
  List even = [];
  List odd = [];

  for (int i = 0; i < input.length; i++) {
    if (isPrime(input[i])) {
      prime.add(input[i]);
      print(prime);
    } else {
      if (input[i].isEven) {
        even.add(input[i]);
      } else {
        odd.add(input[i]);
      }
    }
  }

  data['${prime}'] = prime.length;
  data['${even}'] = even.length;
  data['${odd}'] = odd.length;

  print(data);
}
