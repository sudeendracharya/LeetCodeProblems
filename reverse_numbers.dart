void main(List<String> args) {
  int input = 85845874;
  int reminder = 0;
  int result = 0;
  int n = 0;
  int a = 0;
  while (input > 0) {
    a = input % 10;
    input = input - a;
    input = input ~/ 10;
    print(a);
    n = n + 1;
  }

  print(n);
}
