void main() {
  String a = 'test';
  int b = 1;
  double c = 1.2;
  num d = 1;
  bool check = true;

  List<int> qw = [1, 2, 3, 4];
  List<int> a1 = [];
  a1.addAll(qw);
  a1[1];
  a1.removeAt(1);
  // print(qw);

  var testMap = <String, int>{
    'firstKey': 1,
    'secondKey': 2,
  };

  testMap.values;
  final containKey = testMap.keys.contains('secondKe');

  if (containKey) {
    print('wow');
  }

  var v = testMap['firstKe'];

  // var o = int.tryParse('') ?? 0;
  var o = int.tryParse('');

  const a12 = 1;

  final a123 = 1;

  // var u = () {
  //   var i = int.tryParse('');
  //
  //   if (i == null) return 0;
  //
  //   return i;
  // };

  // print(v ?? 0);
  print(o);

  final asd = true ? 1 : 2;

  final c1 = 1 > 3;
  final c2 = 1 < 3;
  final c3 = 1 >= 3;
  final c4 = 1 <= 3;
  final c5 = 1 != 3;
  final c6 = !c5;

  if (2 == 1) {
    print(1);
  } else if (false) {
    print(2);
  } else {
    print(3);
  }

  for (var j = 0; j < 2; j++) {
    print(j);
  }

  for (var item in [1, 2, 4, 5]) {
    print(item);
  }

  var a1123 = -1;

  final value = 'pvz';

  final e = switch (value) {
    'pvz' => 'Пункт выдачи заказов',
    _ => 'Почта',
  };

  print(e);

  switch (a1123) {
    case 1:
      print('yes');
      break;
    default:
      print('no');
      break;
  }

  final taskStatus = TaskStatus.taken;

  switch (taskStatus) {
    case TaskStatus.done:
      break;
    case TaskStatus.progress:
      break;
    case TaskStatus.taken:
      break;
  }
}

enum TaskStatus {
  done,
  progress,
  taken,
}
