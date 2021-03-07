import 'hero.dart';
import 'skill.dart';

export 'teemo.dart';

class Teemo extends Hero {
  Teemo(String name, Set<Skill> skills) : super.fromParams(name, skills);

  @override
  void someUniqueShit() {
    print("Never underrestimate the power of the scouts code");
  }
}
