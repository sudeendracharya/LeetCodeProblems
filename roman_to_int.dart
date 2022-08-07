void main(List<String> args) {
  int I = 1;
  int V = 5;
  int x = 10;
  int L = 50;
  int C = 100;
  int D = 500;
  int M = 1000;

  Map<String, int> map = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  };

  String roman = 'MCMXCIV';
  int romanToInt = 0;
  int? result = map[roman[roman.length - 1]];

  for (int i = roman.length - 2; i >= 0; i--) {
    if (map[roman[i]]! < map[roman[i + 1]]!) {
      result = result! - map[roman[i]]!;
      print(result);
    } else {
      result = result! + map[roman[i]]!;
      print(result);
    }
  }
  print(result);
}
