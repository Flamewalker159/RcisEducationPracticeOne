import 'dart:io';
import 'dart:convert';

void main() async {
  var myFile;
  try {
    myFile = File("tasks.json");

    String deldata;
    String reddata;
    String izmdata;
    String today;
    String data;
    String text;
    String redtext;
    var tasksread;
    try {
      tasksread = jsonDecode(myFile.readAsStringSync());

      Map<String, dynamic> map = tasksread;
      while (0 == 0) {
        print("\n\n\n\n\t\tЕжедневник");
        print(
            "1. Добавить задачу\n2. Удалить задачу\n3. Редактировать задачу\n4. Посмотреть задачи сегодня/завтра/неделю\n5. Посмотреть все задачи\n6. Выйти из приложения");
        stdout.write("Введите номер задачи: ");
        int a = 0;
        try {
          a = int.parse(stdin.readLineSync()!);
        } catch (e) {
          print("Вы не корректно ввели число, попробуйте ещё раз");
          continue;
        }
        switch (a) {
          case 1:
            stdout.write("Введите дату: ");
            data = stdin.readLineSync()!;
            stdout.write("Введите описание задачи: ");
            text = stdin.readLineSync()!;
            map.addAll({data: text});
            continue;
          case 2:
            stdout.write("Введите дату: ");
            deldata = stdin.readLineSync()!;
            for (var key in map.keys) {
              if (deldata == key) {
                map.remove(key);
                break;
              }
            }
            continue;
          case 3:
            stdout.write("Введите дату: ");
            reddata = stdin.readLineSync()!;
            for (var key in map.keys) {
              if (reddata == key) {
                stdout.write("Введите отредактированный текст: ");
                redtext = stdin.readLineSync()!;
                map[key] = redtext;
                break;
              }
            }
            continue;
          case 4:
            // stdout.write("Введите дату: ");
            // izmdata = stdin.readLineSync()!;
            // stdout.write("Введите на какие дни посмотреть: ");
            // today = stdin.readLineSync()!;
            // for (var key in map.keys) {
            //   if (izmdata == key) {
            //     var datetime = DateTime.parse(izmdata);
            //     var now = new DateTime.now();
            //     if (today == "Сегодня" || today == "сегодня") {
            //       //print(DateTime.isAfter());
            //     }else if(today == "Завтра" || today == "завтра"){
            //       //print(datetime.isAfter(now));
            //     }else if(today == "Неделю" || today == "неделю"){
            //       //print(datetime.isAfter(izmdata));
            //     }
            //     break;
            //   }
            // }
            continue;
          case 5:
            print(map);
            continue;
          case 6:
            break;
        }
        break;
      }
      var encoder = JsonEncoder.withIndent(' ');
      var res = myFile.writeAsStringSync(encoder.convert(map));
    } catch (e) {
      print("Файл пустой. Программа завершена");
      print(e);
    }
  } catch (e) {
    print("Файл отсутствует. Программа завершена.");
    print(e);
  }
}