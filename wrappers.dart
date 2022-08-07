void main(List<String> args) {
  int doller = 5;

  int total = 0;

  if (doller < 3) {
    total = doller;
  } else if (doller == 3) {
    total = doller + 1;
  } else {
    total = 4;
    doller = doller - 3;
    double cal = doller / 2;
    print(cal);
    print(total);
    total = (total + doller + cal).toInt();
  }

  print(total);
}
