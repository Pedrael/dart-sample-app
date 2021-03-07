import 'hero.dart';
import 'skill.dart';
import 'yasuo.dart';
import 'teemo.dart';

void main() {
  final Hero yasuo = Yasuo(
      "Yasuo",
      Set.from([
        Skill("Bullshit Q", 1),
        Skill("Fucking wall", 30),
        Skill("Balanced minion engage", 1),
        Skill("Press R to get penta", 30)
      ]));
  final Hero teemo = Teemo(
      "Teemo",
      Set.from([
        Skill("Blind", 10),
        Skill("Run", 30),
        Skill("Poison", 0),
        Skill("Shroom", 30)
      ]));
  List<Hero> heroes = [teemo, yasuo];
  heroes.forEach((hero) {
    print(hero.getFullInfo());
    hero.someUniqueShit();
  });

  // print(yasuo.getFullInfo());
  // yasuo.getSkills.elementAt(0).setDiscountToCooldown = 0.5;
  // print(yasuo.getFullInfo());
}
