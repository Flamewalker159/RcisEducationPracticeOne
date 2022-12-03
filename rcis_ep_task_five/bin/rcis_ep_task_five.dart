// zadanie 1
// import 'dart:io';

// void main() {
//   List<int> nums = [];
//   List<String> filenums = [];
//   try {
//     filenums = File("numsTask1.txt").readAsLinesSync();
//     for (var i in filenums) {
//       filenums = i.split(' ');
//     }
//     try {
//       nums = filenums.map(int.parse).toList(); 
         
//       int min = nums[0];
//       int minIndex = 0;
//       for (int i = 0; i < nums.length; i++) {
//         if (nums[i] < min) {
//           min = nums[i];
//           minIndex = i;
//         }
//       }
//       int proiz = 1;
//       for (int i = minIndex; i < nums.length; i++) {
//         proiz *= nums[i];
//       }
//       print("Произведение чисел: $proiz");
//     } catch (e) {
//       print("В файле присутствует буква/Файл пустой. Программа завершена");
//       print(e);
//     }
//   } catch (e) {
//     print("Файл отсутствует. Программа завершена");
//     print(e);
//   }
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

//       double swap = 0;
//       for (var i = 0; i < nums.length - 1; ++i) {
//         for (var j = 0; j < nums.length - i - 1; ++j) {
//           if (nums[j] > nums[j + 1]) {
//             swap = nums[j];
//             nums[j] = nums[j + 1];
//             nums[j + 1] = swap;
//           }
//         }
//       }
//       String res = nums.toString();
//       var output = File('numsTask2.txt').writeAsString(res);
//     } catch (e) {
//       print("В файле присутствует буква/Файл пустой. Программа завершена");
//       print(e);
//     }
//   } catch (e) {
//     print("Файл отсутствует. Программа завершена");
//     print(e);
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
//       filenums = i.split(' ');
//     }
//     try {
//       nums = filenums.map(int.parse).toList();

//       int sum = 0;
//       double arif = 0;
//       int min = nums[0];
//       int minIndex = 0;
//       for (int i = 0; i < nums.length; i++) {
//         if (nums[i] < min) {
//           min = nums[i];
//           minIndex = i;
//         }
//       }
//       int n = 0;
//       for (int i = 0; i < minIndex; i++){
//         sum+=nums[i];
//         n++;
//       }
//       arif = sum / n;
//       print("Среднее арифметическоецелых чисел: $arif");
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
//   List<int> nums = [];
//   List<String> filenums = [];
//   try {
//     filenums = File("numsTask4.txt").readAsLinesSync();

//     for (var i in filenums) {
//       filenums = i.split(' ');
//     }
//     try {
//       nums = filenums.map(int.parse).toList();

//       int max = nums[0];
//       for (int i = 0; i < nums.length; i++) {
//         if (nums[i] > max) {
//           max = nums[i];
//         }
//       }
//       print("Максимальное число: $max");
//       int target = max - 1;
//       int n = 0;
//       int sum = 0;
//       for (int i = 0; i < nums.length; i++) {
//         if (target == nums[i]) {
//           sum += nums[i];
//           n++;
//         }
//       }

//       if (n == 0) {
//         print("Отсутствуют элеметны равные сумме $target");
//       }else{
//         print("Сумма чисел отличающихся от максимального на 1: $sum");
//       }
//     } catch (e) {
//       print("В файле присутствует буква/Файл пустой. Программа завершена");
//       print(e);
//     }
//   } catch (e) {
//     print("Файл отсутствует. Программа завершена");
//     print(e);
//   }
// }




// zadanie 5
// import 'dart:io';

// void main() {
//   List<int> nums = [];
//   List<String> filenums = [];
//   try {
//     filenums = File("numsTask5.txt").readAsLinesSync();

//     for (var i in filenums) {
//       filenums = i.split(' ');
//     }
//     try {
//       nums = filenums.map(int.parse).toList();

//       int sum = 0;
//       double arif = 0;
//       int min = nums[0];
//       int max = nums[0];
//       int minIndex = 0;
//       int maxIndex = 0;
//       int n = 0;
//       for (int i = 0; i < nums.length; i++) {
//         if (nums[i] < min) {
//           min = nums[i];
//           minIndex = i;
//         }
//         if (nums[i] > max) {
//           max = nums[i];
//           maxIndex = i;
//         }
//       }
//       for (int i = 0; i < nums.length; i++) {
//         if (i > minIndex && i < maxIndex) {
//           sum += nums[i];
//           n++;
//         } else if (i > maxIndex && i < minIndex) {
//           sum += nums[i];
//           n++;
//         }
//       }
//       if (n > 0) {
//         arif = sum / n;
//         print("Среднее арифметическоецелых чисел: $arif");
//       }
//       if (n == 0) {
//         print("Отсутствуют элеметны между минимальным и максимальным");
//       }
//     } catch (e) {
//       print("В файле присутствует буква/Файл пустой. Программа завершена");
//       print(e);
//     }
//   } catch (e) {
//     print("Файл отсутствует. Программа завершена");
//     print(e);
//   }
// }