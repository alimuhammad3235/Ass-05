import 'dart:io';

void main() {
  //Using While to Make Login form with 5 times try again
  var Loggedin = false;
  var counter = 0;
  while (Loggedin == false && counter <= 5) {
    stdout.write("Type Email: ");
    String? Email = stdin.readLineSync();
    stdout.write("Type Password: ");
    String? Password = stdin.readLineSync();
    if (Email == "Hello" && Password == "12345") {
      print("Login Successfully");
      Loggedin = true;
    } else {
      Loggedin = false;
      counter++;
      print("Try Again");
      if (counter == 3) {
        print("you tried $counter times, Only 2 Chances left....");
      } else if (counter == 4) {
        print("you tried $counter times, Only 1 Chance left....");
      } else if (counter >= 5) {
        print("You tried $counter times......");
        Loggedin = true;
      }
    }
  }
  print(Marksheet("Ali", "6502", 34, 67, 76, 90, 87));
  print(Marksheet("Owais", "234", 55, 30, 87, 77, 86));
  Table(4);
  Table(5);
  Table(6);
  Table(7);
  Table(8);
  Table(9);
}

//Mark sheet
Marksheet(String name, String Sid, sub1, sub2, sub3, sub4, sub5, {Sec = "A"}) {
  var sname = name;
  var id = Sid;
  var totalMarks = sub1 + sub2 + sub3 + sub4 + sub5;
  var percentage = (totalMarks / 500) * 100;
  return ("Name: $sname  Id: $id  Percentage: $percentage");
}

//Dynamic Table
Table(int no) {
  for (int i = 1; i <= 10; i++) {
    print("$no x $i = ${no * i}");
  }
}
