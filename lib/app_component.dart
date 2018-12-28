import 'package:angular/angular.dart';

import 'src/hero.dart';
import 'src/hero_component.dart';
import 'src/mock_heroes.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [coreDirectives,HeroComponent],
  styleUrls: ['app_component.css'],
)
class AppComponent {
  final title = 'Tour of Heroes';
  List<Hero> heroes = mockHeroes;
  Hero selected;
  void onSelect(Hero hero) =>selected = hero;
}