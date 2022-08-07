void main(List<String> args) {
  String input = "hey hello how are you";
  List data = [];
  String temp = '';
  Map<String, dynamic> output = {};
  for (int i = 0; i < input.length; i++) {
    if (input[i] != " ") {
      temp = temp + input[i];
    } else {
      data.add(temp);
      temp = '';
    }

    if (i == input.length - 1) {
      data.add(temp);
    }
  }

  for (int i = 0; i < data.length; i++) {
    output[data[i]] =
        '${data[i].toString().split('').reversed.join()},  ${data[i].length}, ${i % 2 != 0 ? i * i : i}';
  }

  print(data);
  print(output);
}
