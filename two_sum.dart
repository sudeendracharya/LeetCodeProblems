import 'dart:io';

//Two Sum
void main() {
  List list = [0, 4, 3, 0];
  var target = 0;
  List result = [];

  for (int i = 0; i < list.length; i++) {
    for (int j = i; j < list.length; j++) {
      if (i != j) {
        if (list[i] + list[j] == target) {
          result.add(i);
          result.add(j);
          break;
        }
      }
    }
    if (result.isNotEmpty) {
      break;
    }
  }

  print(result);
}
