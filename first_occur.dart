void main() {
  List array = [1, 7, 4, 3, 4, 4, 8, 3, 7];
  Map<String, String> occurNumberPosition = {};

  Map<String, int> map = {};
  for (var a in array) {
    if (map.containsKey('$a')) {
      map.update('$a', (value) => value + 1);
      if (!(occurNumberPosition.containsKey('$a'))) {
        occurNumberPosition['$a'] = '${occurNumberPosition.length + 1}';
      }
    } else {
      map['$a'] = 1;
    }
  }
  print(occurNumberPosition);
}
