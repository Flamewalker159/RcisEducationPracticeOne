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

// import 'dart:io';

// void main() {
//   var num = '';
//   var res = '';
//   List<int> nums = [];
//   File file = File("");

//   try {
//     file = File('nums.txt');
//   } catch (a) {
//     print("Отсутсвует файл");
//   }

//   List<String> filenum = file.readAsLinesSync();
//   for (int i = 0; i < filenum.length; i++) {
//     for (int j = 0; j < filenum[i].length; j++) {
//       if (filenum[i][j] != " ") {
//         num += filenum[i][j];
//       }
//       if (filenum[i][j] == " ") {
//         try {
//           int nums1 = int.parse(num);
//           res += "$num ";
//           num = "";
//           nums.add(nums1);
//         } catch (a) {
//           print('это не число!');
//           continue;
//         }
//       }
//     }
//   }

//   int one = 0;
//   int two = nums.length - 1;
//   int max = 0;

//   while (one != two) {
//     int distance = (one - two).abs();
//     int result = 0;
//     if (nums[one] < nums[two]) {
//       result = nums[one] * distance;
//       one++;
//     } else {
//       result = nums[two] * distance;
//       two--;
//     }
//     if (result > max) {
//       max = result;
//     }
//   }
//   print(max);
// }







// import 'dart:io';
// import 'dart:convert';
// import 'dart:async';

// void main() async {
//   String numsInFile = "";
//   List<int> height = [];

//   File file = File("");

//   try {
//     file = File('nums.txt');
//   } catch (e) {
//     print("Отсутсвует файл");
//   }
//   List<String> lines = file.readAsLinesSync();

//   // File file = File('nums.txt');
//   // Stream<String> lines =
//   //     file.openRead().transform(utf8.decoder).transform(LineSplitter());
//   for (String line in lines) {
//     for (int i = 0; i < line.length; ++i) {
//       if (line[i] != " ") {
//         numsInFile += line[i];
//         try {
//           height.add(int.parse(numsInFile));
//         } catch (a) {
//           print("Это не число - $numsInFile");
//         }
//         numsInFile = "";
//       }
//     }
//   }
//   print("height = $height");

//   int res = 0;

//   for (int i = 0; i < height.length; ++i) {
//     for (int j = i + 1; j < height.length; ++j) {
//       if (height[i] > height[j]) {
//         res = height[j] * (j - i) > res;
//         if (height[j] * (j - i) > res) {
//           res = height[j] * (j - i) > res;
//         } else {
//           res;
//         }
//       } else {
//         res = height[i] * (j - i) > res ? height[i] * (j - i) : res;
//       }
//     }
//   }

//   print(res);
// }








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