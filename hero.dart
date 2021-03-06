library hero;

export 'hero.dart';
import 'skill.dart';

abstract class Hero {
  late String _name;
  late Set<Skill> _skills;
  String getFullInfo() {
    String data = "Champ is ${this._name}, he has skills: \n";
    for (Skill skill in this._skills) {
      data += skill.getFullData + "\n";
    }

    return data;
  }

  get getName => this._name;
  get getSkills => this._skills;

  Hero.fromParams(this._name, this._skills);
  Hero();

  void someUniqueShit(); //abstract method
}
