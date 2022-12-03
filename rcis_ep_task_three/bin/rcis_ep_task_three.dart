/*_________________________Практичиеская 1.3__________________________________*/

// Задание 1
// import 'dart:io';

// void main() async {
//   String filenums = "";
//   int i = 1;
//   String res = "";
//   int l = 0;
//   List<int> masswt = [];
//   var tickets = {};
//   File file = File("");

//   try {
//     file = File('input.txt');
//   } catch (a) {
//     print("Отсутсвует файл");
//   }
//   List<String> infiles = file.readAsLinesSync();
//   int sumLines = 0;
//   for (String infile in infiles) {
//     if (sumLines == 0) {
//       infile += " ";
//       for (int i = 0; i < infile.length; ++i) {
//         if (infile[i] != " ") {
//           filenums += infile[i];
//         } else {
//           masswt.add(int.parse(filenums));
//           filenums = "";
//         }
//       }
//     }
//     if (sumLines == 1) {
//       l = int.parse(infile);
//     }
//     if (sumLines >= 2) {
//       infile += " ";
//       List<int> lots = [];
//       for (int j = 0; j < infile.length; ++j) {
//         if (infile[j] != " ") {
//           filenums += infile[j];
//         }
//         if (infile[j] == " ") {
//           lots.add(int.parse(filenums));
//           filenums = "";
//         }
//       }
//       tickets.addAll({i: lots});
//       i++;
//     }
//     sumLines++;
//   }
//   for (int j = 1; j <= l; ++j) {
//     int wintickets = 0;
//     for (int f = 0; f < tickets[j]!.length; ++f) {
//       for (int k = 0; k < masswt.length; ++k) {
//         if (tickets[j]![f] == masswt[k]) {
//           wintickets++;
//         }
//       }
//       if (wintickets >= 3) {
//         res += "Lucky\n";
//         break;
//       }
//     }
//     if (wintickets < 3) {
//       res += "Unlucky\n";
//     }
//   }
//   File('output.txt').writeAsString(res);
// }

// Задание 2
// import 'dart:io';

// void main() {
//   String nums = '';
//   String res = '';
//   File file = File("");
//   try {
//     file = File('nums.txt');
//   } catch (a) {
//     print("Отсутсвует файл");
//   }
//   List<String> filenum = file.readAsLinesSync();
//   for (int k = 0; k < filenum.length; k++) {
//     for (int i = 0; i < filenum[k].length; i++) {
//       if (filenum[k][i] != " ") {
//         nums += filenum[k][i];
//       }
//       if (filenum[k][i] == " ") {
//         try {
//           if (int.parse(nums) % 2 != 0) {
//             res += "$nums ";
//           }
//           nums = "";
//         } catch (a) {
//           print('Это не число - $nums');
//           continue;
//         }
//       }
//     }
//     File('nums.txt').writeAsString(res);
//   }
// }

// Задание 3

// void main() {
//   List<int> height = [1, 8, 6, 2, 5, 4, 8, 3, 7];

//   int left = 0;
//   int right = height.length - 1;
//   int max = 0;

//   while (left != right) {
//     int distance = (left - right).abs();
//     int area = 0;
//     if (height[left] < height[right]) {
//       area = height[left] * distance;
//       left++;
//     } else {
//       area = height[right] * distance;
//       right--;
//     }

//     if (area > max) {
//       max = area;
//     }
//   }
//   print(max);
// }