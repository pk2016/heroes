import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'src/mock_heroes.dart';

import 'src/hero.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [coreDirectives,formDirectives],
  styleUrls: ['app_component.css'],
)
class AppComponent {
  final title = 'Tour of Heroes';
  List<Hero> heroes = mockHeroes;
  Hero selected;
  void onSelect(Hero hero) =>selected = hero;
}