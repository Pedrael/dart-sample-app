library skill;

export 'skill.dart';

class Skill {
  String _name;
  double _cooldown;

  Skill(this._name, this._cooldown);

  set setDiscountToCooldown(double discount) => this._cooldown *= discount;
  get getName => this._name;
  get getFullData => '${this._name} ${this._cooldown} s.';
}
