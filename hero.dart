library hero;

export 'hero.dart';
import 'skill.dart';

abstract class Hero {
  final String _name;
  final Set<Skill> _skills;
  String getFullInfo() {
    String data = "Champ is ${this._name}, he has skills: \n";
    for (Skill skill in this._skills) {
      data += skill.getFullData + "\n";
    }

    return data;
  }

  get getName => this._name;
  get getSkills => this._skills;

  const Hero.fromParams(this._name, this._skills);

  void someUniqueShit(); //abstract method
}
