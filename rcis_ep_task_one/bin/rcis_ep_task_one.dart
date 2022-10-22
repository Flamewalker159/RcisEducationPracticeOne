/*_________________________Практическая работа 1.1____________________________*/

// Задание 1
// import 'dart:math';

// void main() {
//   List<int> nums = List.generate(10, (i) => Random().nextInt(100) + 0);
//   int res = 0;
//   for (int i = 1; i < nums.length; i++) {
//     if (nums[i] < nums[res]) {
//       //есть ли в массиве наименьшее число
//       res = i;
//     }
//   }
//   print(nums);
//   print(res);
// }





//Задание 2
// import 'dart:io';

// void main() {
//   List<int> nums = [];
//   int a = -1;
//   int sum = 0;
//   int proiz = 1;
//   int arif = 0;

//   while (a != 0) {
//     //пока пользователь не введет 0, цикл будет работать
//     try {
//       stdout.write('Введите число: ');
//       a = int.parse(stdin.readLineSync()!);
//     } catch (formatExceprion) {
//       print('Вы не ввели число!');
//       continue;
//     }

//     if (a != 0) {
//       nums.add(a);
//       sum += a;
//       proiz *= a;
//       arif++;
//     }
//   }

//   arif = sum ~/ arif;
//   print('Массив: $nums');
//   print(
//       '$sum - сумма \n$proiz - произведение \n$arif - среднее арифметическое');
// }





//Задание 3
// import 'dart:io';

// void main() {
//   String a = '0';
//   List<String> text = [];

//   while (a != '') {
//     //если пользователь ничего не введет, то цикл прекращается
//     stdout.write('Введите текст: ');
//     a = stdin.readLineSync()!;

//     if (a != '') {
//       text.add(a);
//     }
//   }
//   int max = 0;
//   int min = 0;

//   for (int i = 1; i < text.length; ++i) {
//     if (text[i].length < text[min].length) {
//       min = i;
//     }
//     if (text[i].length > text[max].length) {
//       max = i;
//     }
//   }
//   print(text);
//   print('Индекс длинного элемента: $max');
//   print('Индекс короткого элемента: $min');
// }





//Задание 4
// import 'dart:io';
// import 'dart:math';

// void main() {
//   List<int> nums = List.filled(10, 0);
//   int num1 = 0;
//   int num2 = 0;

//   for (int i = 1; i != 0; i++) {
//     try {
//       stdout.write("Введите минимальное число: ");
//       num1 = int.parse(stdin.readLineSync()!);
//       stdout.write('Введите максимальное число: ');
//       num2 = int.parse(stdin.readLineSync()!);
//     } catch (a) {
//       //если пользователь введет текст
//       print('Error');
//       continue;
//     }
//     i = -1; //чтобы завершился цикл
//   }
//   rand(num1, num2, nums);
//   for (int i = 0; i < nums.length; i++) {
//     stdout.write('${nums[i]} ');
//   }
// }

// List<int> rand(int num1, int num2, List<int> nums) {
//   for (int x = 0; x < nums.length; x++) {
//     nums[x] = (Random().nextInt(num2 - num1) + num1);
//   }
//   return nums;
// }





//Задание 5
// import 'dart:io';

// void main() {
//   stdout.write('Введите строку: ');
//   String words = stdin.readLineSync()!;
//   print('Start $words End.');
//   int a = 1;
//   for (int i = 0; i < words.length; i++) {
//     if (words[i] == ' ') {
//       //если в строке есть пробел, то он считае слово
//       a++;
//     }
//   }
//   if (words == '') {
//     //если пользователь ничего не ввел
//     a = 0;
//   }
//   print('Всего слов в строке: $a');
// }
