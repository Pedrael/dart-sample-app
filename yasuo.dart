import 'hero.dart';
import 'skill.dart';

export 'yasuo.dart';

class Yasuo extends Hero {
  Yasuo(String name, Set<Skill> skills) : super.fromParams(name, skills);

  @override
  void someUniqueShit() {
    print("hasagi!");
  }
}
