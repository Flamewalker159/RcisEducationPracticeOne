/*_________________________Практическая работа 1.1____________________________*/

// Задание 1
// import 'dart:io';
// import 'dart:math';

// void main() {
//   List<int> nums= List.generate(10, (i)=>Random().nextInt(100)+0);
//   int res=0;
//   for(int i=1; i < nums.length; i++){
//     if(nums[i]<nums[res]){
//       res=i;
//     }
//   }
//   print(nums);
//   print(res);
// }

//Задание 2
// import 'dart:io';
// import 'dart:math';

// void main() {
//   List<int> nums=[];
//   int a=-1;
//   int sum=0;
//   int proiz=1;
//   int arif=0;

//   fynction(a, sum, proiz, arif, nums);
// }

// void fynction(int a,int sum, int proiz, int arif, List<int> nums){
//   while(a!=0){
//     try{
//       stdout.write('Введите число: ');
//       a= int.parse(stdin.readLineSync()!);
//     }catch(formatExceprion){
//       print('Вы не ввели число!');
//       continue;
//     }

//     if(a!=0){
//       nums.add(a);
//       sum+=a;
//       proiz*=a;
//       arif++;
//     }
//   }

//   arif= sum ~/ arif;
//   print('Массив: $nums');
//   print('Сумма чисел массива равна - $sum');
//   print('Произведение чисел равна - $proiz');
//   print('Среднее арифметическое чисел равна - $arif');
// }

//Задание 3
// import 'dart:io';
// import 'dart:math';

// void main() {
//   String a = '0';
//   List<String> text = [];

//   while (a != '') {
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
//   print(max);
//   print(min);
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
//     }
//     catch (formatException) {
//       print('Error');
//       continue;
//     }
//     i = -1;
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
//       a++;
//     }
//   }
//   if (words == '') {
//     a = 0;
//   }
//   print('Всего слов в строке: $a');
// }

/*_________________________Практичиеская 1.2__________________________________*/

//Задание 1
// import 'dart:io';

// void main(){
//   int a = 103;
//   List<int> mass =List.filled(100, 0);
//   for(int i = 0;i<mass.length; i++){
//     mass[i] = a - 3;
//     a-= 3;
//   }
//   print(mass);
// }

// Задание 2

// import 'dart:io';

// void main(){
//   int a = -1;
//   List<int> mass =List.filled(100, 0);
//   for(int i = 0;i<mass.length; i++){
//     mass[i] = a + 2;
//     a+= 2;
//   }
//   print(mass);
// }

// Задание 3
// import 'dart:io';
// import 'dart:math';

// void main() {
//   List<List<int>> nums = List.generate(10, (i) => List.filled(10, 0));
//   for (int i = 0; i < nums.length; i++) {
//     for (int j = 0; j < nums.length; j++) {
//       if(i == 0 || j == 0){
//         nums[i][j] = 1;
//       }else {
//         nums[i][j] = nums[i-1][j] + nums[i][j-1];
//       }
//       stdout.write("${nums[i][j]}\t");
//     }
//     print('');
//   }
// }

// Задание 4
// import 'dart:io';
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
// import 'dart:io';
// import 'dart:math';

// void main() {
//   int i = 0;
//   List<List<int>> temperature = List.generate(12, (a) => List.generate((30), (b) => Random().nextInt(70) - 30));
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

/*_________________________Практичиеская 1.3__________________________________*/

// Задание 1


// Задание 2





// Задание 3