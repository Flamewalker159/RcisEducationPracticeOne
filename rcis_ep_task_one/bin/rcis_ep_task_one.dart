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
//     nums.add(a); 
//     sum+=a; 
//     proiz*=a; 
//     arif++; 
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
//   if (a != '') { 
//     text.add(a); 
//   } 
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
//   int a = 0; 
//   int b = 0; 
//   for (int i = 1; i != 0; i++) { 
//     stdout.write("Введите минимальное число: "); 
//     try { 
//      a = int.parse(stdin.readLineSync()!); 
//     }
//     catch (formatException) { 
//       print('Error'); 
//       continue; 
//     } 
//     stdout.write('Введите максимальное число: '); 
//     try { 
//       b = int.parse(stdin.readLineSync()!); 
//     } 
//     catch (formatException) { 
//       print('Error'); 
//       continue; 
//     } 
//     i = -1; 
//   } 
//   rand(a, b, nums); 
//   for (int i = 0; i < nums.length; i++) { 
//     stdout.write('${nums[i]} '); 
//   } 
// } 

// List<int> rand(int a, int b, List<int> nums) { 
//   for (int x = 0; x < nums.length; x++) { 
//     nums[x] = (Random().nextInt(b - a) + a); 
//   } 
//   return nums; 
// } 





//Задание 5
// import 'dart:io'; 

// void main(){ 
//   stdout.write('Введите строку: '); 
//   String words = stdin.readLineSync()!; 
//   int a = 1;

//   for(int i = 0;i<words.length; i++){ 
//     if(words[i] == ' '){ 
//       a++; 
//     } 
//   } 

//   if(words == ''){ 
//     a = 0; 
//   } 
//   print(a); 
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

//  import 'dart:io';  

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





// Задание 4





// Задание 5