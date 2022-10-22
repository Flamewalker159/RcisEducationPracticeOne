/*_________________________Практичиеская 1.2__________________________________*/

//Задание 1
// void main() {
//   int a = 103;
//   List<int> mass = List.filled(100, 0);
//   for (int i = 0; i < mass.length; i++) {
//     mass[i] = a - 3;
//     a -= 3;
//   }
//   print(mass);
// }





// Задание 2
// void main() {
//   int a = -1;
//   List<int> mass = List.filled(100, 0);
//   for (int i = 0; i < mass.length; i++) {
//     //нечетные числа
//     mass[i] = a + 2;
//     a += 2;
//   }
//   print(mass);
// }





// Задание 3
// import 'dart:io';

// void main() {
//   List<List<int>> nums = List.generate(10, (i) => List.filled(10, 0));
//   for (int i = 0; i < nums.length; i++) {
//     for (int j = 0; j < nums.length; j++) {
//       if (i == 0 || j == 0) {
//         nums[i][j] = 1;
//       } else {
//         nums[i][j] = nums[i - 1][j] + nums[i][j - 1];
//       }
//       stdout.write("${nums[i][j]}\t");
//     }
//     print('');
//   }
// }





// Задание 4
// import 'dart:math';

// void main() {
//   List<List<int>> temperature = List.generate(12, (i) => List.filled(30, 0));
//   for (int i = 0; i < temperature.length; i++) {
//     for (int j = 0; j < temperature.length; j++) {
//       temperature[i][j] = (Random().nextInt(70) - 30);
//     }
//   }
//   List<int> temper = temp(temperature);
//   print('Средняя температура каждого месяца: $temper');
//   temper.sort();
//   print('Отсортировочная средняя температура каждого месяца: $temper');
// }

// List<int> temp(List<List<int>> nums) {
//   List<int> srtemp = [];
//   int sr = 0;

//   for (int i = 0; i < nums.length; i++) {
//     sr = 0;
//     for (int j = 0; j < nums.length; j++) {
//       sr += nums[i][j];
//     }
//     sr = sr ~/ 30;
//     srtemp.add(sr);
//   }
//   return srtemp;
// }





// Задание 5
// import 'dart:math';

// void main() {
//   int i = 0;
//   List<List<int>> temperature = List.generate(
//       12, (a) => List.generate((30), (b) => Random().nextInt(70) - 30));
//   var map = {
//     'Январь': temperature[i],
//     "Февраль": temperature[i + 1],
//     'Март': temperature[i + 2],
//     'Апрель': temperature[i + 3],
//     'Май': temperature[i + 4],
//     'Июнь': temperature[i + 5],
//     'Июль': temperature[i + 6],
//     'Август': temperature[i + 7],
//     'Сентябрь': temperature[i + 8],
//     'Октябрь': temperature[i + 9],
//     'Ноябрь': temperature[i + 10],
//     'Декабрь': temperature[i + 11]
//   };
//   temp(map, temperature);
// }

// Map temp(map, res) {
//   var srtemp = {
//     'Январь': 0,
//     "Февраль": 0,
//     'Март': 0,
//     'Апрель': 0,
//     'Май': 0,
//     'Июнь': 0,
//     'Июль': 0,
//     'Август': 0,
//     'Сентябрь': 0,
//     'Октябрь': 0,
//     'Ноябрь': 0,
//     'Декабрь': 0
//   };
//   for (var key in map.keys) {
//     double temp = 0;
//     for (int i = 0; i < 30; i++) {
//       temp += map[key]![i];
//     }
//     srtemp[key] = (temp ~/ 30);
//   }
//   for (var item in srtemp.entries) {
//     print("${item.key}: ${item.value}");
//   }
//   return srtemp;
// }
