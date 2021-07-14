import 'cell.dart';
import 'dart:io';

export 'field.dart';

class Field {
  final int w = 12;
  final int h = 22;
  List<Cell> field;

  Field() {
    this.field = List.generate(this.w * this.h,
    (i) { 
      if(i < this.w+1 || i > w*h - w || i % w == 0 || i % w - (w-1) == 0)
      return new Cell("#");
      else return new Cell(" ");
    });
  }

  String getCell(x, y) => this.field[x + y*w].getCell; 

  void renderField() {
    for(int j = 0; j < h; j++) {
      for(int i = 0; i < w; i++) {
        stdout.write(getCell(i, j));
      }
      print("");
    }
  }
}