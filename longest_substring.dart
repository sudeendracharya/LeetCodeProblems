//Given a string s, find the length of the longest substring without repeating characters.
void main(List<String> args) {
  String s = "a";
  // String s = "bpfbhmipx";
  String output = '';
  int count = 1;
  Map<String, dynamic> data = {};
  for (int i = 0; i < s.length; i++) {
    if (i == 0) {
      output = s[i];
    } else {
      if (output.contains(s[i])) {
        data['$i+1'] = output;
        String temp = '';
        for (int j = output.length - 1; j >= 0; j--) {
          if (output[j] != s[i]) {
            temp = temp + output[j];
          } else {
            // String reOrder = '';
            // for (int i = temp.length - 1; i >= 0; i--) {
            //   reOrder = reOrder + temp[i];
            // }
            data['$i'] = temp.split('').reversed.join() + s[i];
            output = temp.split('').reversed.join() + s[i];
            break;
          }
        }
      } else {
        output = output + s[i];
        if (i == s.length - 1) {
          data['$i'] = output;
        }
      }
    }
  }

  if (data.isNotEmpty) {
    data.forEach(
      (key, value) {
        if (count < value.length) {
          count = value.length;
        }
      },
    );
  } else {
    count = output.length;
  }

  print(count);

  print(data);
}
