part of 'library_1.dart';

const String name = 'part_1';

String getName() {
  return name;
}

void testNum() {
  num a = 1;
  a = 1.1;
  int b = 2;
}

class User {
  // const String data1 = 'data1'; // error
  static const String data2 = 'data2'; // 가능

  void some() {
    List<int> list = List<int>.filled(3, 0);
    var list3 = List<int>.generate(3, (i) => i*10);

    list[0] = 1;
    list.removeAt(0);
    list.add(10);
    list.add(100);

    final String data;
    data = "";
    const String data3 = 'data3';
    print(data);
  }

  final String finalA;
  User(this.finalA);
}

