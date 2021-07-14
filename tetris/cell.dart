library cell;

export 'cell.dart';

class Cell {
  String _cell;

  get getCell => this._cell;
  set setCell(value) => this._cell = value;

  Cell(this._cell);
}