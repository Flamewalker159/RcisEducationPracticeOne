// zadanie 1
// import 'dart:io';

// void main() {
//   List<String> filetext = [];
//   try {
//     filetext = File("numsTask1.txt").readAsLinesSync();
//     for (var i in filetext) {
//       filetext = i.split(' ');
//     }
//     int word = 0;
//     List<String> words = [];
//     for (int i = 0; i < filetext.length; i++) {
//       word = filetext[i].length;
//       if (word % 2 != 0) {
//         words.add(filetext[i]);
//       }
//     }
//     print(words);
//   } catch (e) {
//     print("Файл отсутствует. Программа завершена");
//     print(e);
//   }
// }



// zadanie 2
// import 'dart:io';

// void main() {
//   List<String> filetext = [];
//   try {
//     filetext = File("numsTask2.txt").readAsLinesSync();
//     String text = "";
//     for (var i in filetext) {
//       text += "$i ";
//     }
//     print(text);
//   } catch (e) {
//     print("Файл отсутствует. Программа завершена");
//     print(e);
//   }
// }



// zadanie 3
// import 'dart:io';

// void main() {
//   int a = 0;
//   try{
//     stdout.write("Введите число: ");
//     a = int.parse(stdin.readLineSync()!);  
//   }catch(e){
//     print("Вы не корректно ввели число. Программа завершена.");
//     print(e);
//   }
//   if (a % 10 == 0 && a % 2 == 0){
//     print("Число $a - четное и кратна 10");
//   }else{
//     print("Число $a - не четная и не кратна 10");
//   }
// }




// zadanie 4
// import 'dart:io';

// void main() {
//   int b = 0;
//   List<int> nums = [];
//   stdout.write('Введите число а: ');
//   int a = int.parse(stdin.readLineSync()!);
//   while (0 == 0) {
//     try {
//       stdout.write("Введите число b, напишите отрицательное число, чтобы завершить работу: ");
//       b = int.parse(stdin.readLineSync()!);
//     } catch (e) {
//       print("Вы не корректно ввели число. Попробуйте ещё раз.");
//       continue;
//     }
//     if (b < 0){
//       break;
//     }else{
//       nums.add(b);
//     }
//   }
//   int sum = 0;
//   for(int i = 0; i < nums.length; i++){
//     if(nums[i] % a == 0){
//       sum+= nums[i];
//     }
//   }
//   print("Сумма чисел $a = $sum");
// }





// zadanie 5
// import 'dart:io';
// import 'dart:math';

// void main() {
//   int n = 0;
//   int m = 0;
//   try {
//     stdout.write("Введите число n: ");
//     n = int.parse(stdin.readLineSync()!);
//     stdout.write("Введите число m: ");
//     m = int.parse(stdin.readLineSync()!);
//   } catch (e) {
//     print("Вы не корректно ввели число. Программа завершена.");
//     print(e);
//   }
//   List<List<int>> nums =
//       List.generate(n, (i) => List.generate(m + 1, (i) => Random().nextInt(2)));

//   for (int i = 0; i < n; i++) {
//     int a = 0;
//     for (int j = 0; j < m; j++) {
//       if (nums[i][j] == 1) {
//         a++;
//       }
//     }
//     if (a % 2 != 0) {
//       nums[i][m] = 1;
//     } else {
//       nums[i][m] = 0;
//     }
//   }
//   for (int i = 0; i < n; i++) {
//     for (int j = 0; j < m + 1; j++) {
//       stdout.write('${nums[i][j]} ');
//     }
//     print('');
//   }
// }



// zadanie 6
// import 'dart:math';
// void main()  {
//   List<double> nums = List.generate(Random().nextInt(5) + 1, (i) => (Random().nextDouble() * (20) + -10));
//   List<double> pol = [];
//   List<double> otr = [];
//   for(int i = 0; i < nums.length; i++){
//     if(nums[i] < 0){
//       otr.add(nums[i]);
//     }
//     else{
//       pol.add(nums[i]);
//     }
//   }
//   print(nums);
//   print('положительные числа - $pol');
//   print('отрицательные числа - $otr');
// }