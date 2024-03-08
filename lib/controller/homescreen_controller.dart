import 'package:sqflite/sqflite.dart';

class Homescreencontroller {
  static late Database database;
  static Future initDb() async {
    //open database
    database = await openDatabase("sampledb.db", version: 1,
        onCreate: (Database db, int version) async {
      //when creating the db create the table
      await db.execute(
          "CREATE TABLE student(id INTEGER PRIMARY KEY,name TEXT ,des TEXT)");
    });
  }

//function add data to db
  static Future adddatatodb({required String name, required String des}) async {
    await database.rawInsert('INSERT INTO student(name, des) VALUES(?, ?)',
        [name, des]);
  }

  //function to get all data from db
  static Future getalldatafromdb() async {
    final data = await database.rawQuery('SELECT * FROM student');
    print(data);
  }

  //function to edit data in db
  editdata() {}
  //function to delete data in db
  deletedata() {}
}
