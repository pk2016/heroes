import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'hero.dart';
import 'hero_service.dart';
import 'route_paths.dart';

@Component(
  selector: 'my-heroes',
  templateUrl: 'hero_list_component.html',
  directives: [coreDirectives],
  styleUrls: ['hero_list_component.css'],
  pipes: [commonPipes],
)
class HeroListComponent implements OnInit {
  final HeroService _heroService;
  final Router _router;
  List<Hero> heroes;
  Hero selected;

  HeroListComponent(this._heroService,this._router);

  void onSelect(Hero hero) => selected = hero;

  Future<void> _getHeroes() async {
    heroes = await _heroService.getAll();
  }

  Future<NavigationResult> gotoDetail() =>
    _router.navigate(_heroUrl(selected.id));

  @override
  void ngOnInit() => _getHeroes();

  String _heroUrl(int id) =>
      RoutePaths.hero.toUrl(parameters: {idParam:'$id'});
}
