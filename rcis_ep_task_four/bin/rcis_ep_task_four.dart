// zadanie 1 
// import 'dart:io';

// void main() {
//   int n = 0;
//   try {
//     stdout.write("Введите число n: ");
//     n = int.parse(stdin.readLineSync()!);
//   } catch (e) {
//     print("Вы не корректно ввели число. Программа завершена.");
//     print(e);
//   }

//   int proiz = 1;
//   for (int i = 1; i <= n; i++) {
//     if (i % 3 == 0) {
//       proiz *= i;
//     }
//   }
//   print("Произведение натуральных чисел кратные 3: $proiz");
// }






// zadanie 2
// import 'dart:io';

// void main() {
//   List<double> nums = [];
//   List<String> filenums = [];
//   try {
//     filenums = File("numsTask2.txt").readAsLinesSync();
//     for (var i in filenums) {
//       filenums = i.split(';');
//     }
//     try {
//       nums = filenums.map(double.parse).toList();

//       double sum = 0;
//       for (int i = 0; i < nums.length; i++) {
//         if (nums[i] > 0) {
//           sum += nums[i];
//         }
//         if (nums[i] == 0) {
//           break;
//         }
//       }
//       print(sum);
//     } catch (e) {
//       print("В файле присутствует буква/Файл пустой. Программа завершена");
//       print(e);
//     }
//   } catch (e) {
//     print("Файл отсутствует. Программа завершена");
//   }
// }




// zadanie 3
// import 'dart:io';

// void main() {
//   List<int> nums = [];
//   List<String> filenums = [];
//   try {
//     filenums = File("numsTask3.txt").readAsLinesSync();

//     for (var i in filenums) {
//       filenums = i.split(',');
//     }
//     try {
//       nums = filenums.map(int.parse).toList();

//       int max = nums[0];
//       int min = nums[0];

//       for (var i = 1; i < nums.length; i++) {
//         if (nums[i] == 0) {
//           break;
//         }
//         if (max < nums[i]) {
//           max = nums[i];
//         }
//         if (min > nums[i]) {
//           min = nums[i];
//         }
//       }
//       print(max);
//       print(min);
//       var ot = max / min;
//       print("$max больше $min в $ot раз");
//     } catch (e) {
//       print("В файле присутствует буква/Файл пустой. Программа завершена");
//       print(e);
//     }
//   } catch (e) {
//     print("Файл отсутствует. Программа завершена");
//     print(e);
//   }
// }





// zadanie 4
// import 'dart:io';

// void main() {
//   List<String> input = [];
//   try {
//     input = File("numsTask4.txt").readAsLinesSync();
//     for (var i in input) {
//       input = i.split(' ');
//     }
//     int res = 0;
//     try {
//       List<int> num = input.map(int.parse).toList();
//       for (var i = 0; i < num.length - 1; i++) {
//         if (num[i] == num[i + 1]) {
//           res++;
//         }
//       }
//       print('Количество одинаковых рядом стоящих чисел $res');
//     } catch (e) {
//       print("В файле присутствует буква/Файл пустой. Программа завершена");
//       print(e);
//     }
//   } catch (e) {
//     print("Файл отсутствует. Программа завершена");
//   }
// }




// zadanie 5
// import 'dart:io';

// void main() {
//   int a = 0;
//   int b = 0;
//   try {
//     stdout.write('Ввидите число a: ');
//     a = int.parse(stdin.readLineSync()!);
//     stdout.write('Ввидите число b: ');
//     b = int.parse(stdin.readLineSync()!);
//   } catch (e) {
//     print("Вы не корректно ввели число. Программа завершена.");
//     print(e);
//   }
//   if ((a <= 3) && (b <= 4) && (a >= -1) && (b >= -2)) {
//     print('Точки $a и $b принадлежит координатами заштрихованной области');
//   } else {
//     print('Точки $a и $b находятся за координатой');
//   }
// }



// zadanie 6
// import 'dart:io';

// void main() {
//   double a = 0;
//   double b = 0;
//   try {
//     stdout.write("Введите число a: ");
//     a = double.parse(stdin.readLineSync()!);
//     stdout.write("Введите число b: ");
//     b = double.parse(stdin.readLineSync()!);
//   } catch (e) {
//     print("Вы не корректно ввели число. Программа завершена.");
//     print(e);
//   }
//   double x = (-2 - a) * (2 - -3) - (0 - -2) * (-3 - b);
//   double y = (0 - a) * (-3 - 2) - (2 - 0) * (2 - b);
//   double z = (2 - a) * (-3 - -3) - (-2 - 2) * (-3 - b);

//   if ((x >= 0 && y >= 0 && z >= 0) || (x <= 0 && y <= 0 && z <= 0)) {
//     print('Точки принадлежат координатам заштрихованной области');
//   } else {
//     print('Точки находятся за координатой');
//   }
// }