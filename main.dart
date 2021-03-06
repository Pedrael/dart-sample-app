import 'hero.dart';
import 'skill.dart';
import 'yasuo.dart';

void main() {
  final Hero yasuo = Yasuo(
      "Yasuo",
      Set.from([
        Skill("Bullshit Q", 1),
        Skill("Fucking wall", 30),
        Skill("Balanced minion engage", 1),
        Skill("Press R to get penta", 30)
      ]));
  print(yasuo.getFullInfo());
  yasuo.getSkills.elementAt(0).setDiscountToCooldown = 0.5;
  print(yasuo.getFullInfo());
}
