import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import 'hero.dart';

const List<String> _powers = const [
  'Really Smart',
  'Super Flexible',
  'Super Hot',
  'Weather Changer'
];

@Component(
  selector: 'hero-form',
  templateUrl: 'hero_form_component.html',
  directives: const [CORE_DIRECTIVES, formDirectives],
)
class HeroFormComponent {
  List<String> get powers => _powers;
  Hero model = new Hero(18, 'Dr IQ', _powers[0], 'Chuck Overstreet');
  bool submitted = false;

  void onSubmit() {
    submitted = true;
  }

  // TODO: Remove this when we're done
  String get diagnostic => 'DIAGNOSTIC: $model';

  /// Returns a map of CSS class names representing the state of [control].
  Map<String, bool> controlStateClasses(NgControl control) => {
        'ng-dirty': control.dirty ?? false,
        'ng-pristine': control.pristine ?? false,
        'ng-touched': control.touched ?? false,
        'ng-untouched': control.untouched ?? false,
        'ng-valid': control.valid ?? false,
        'ng-invalid': control.valid == false
      };
  // TODO: does this map need to be cached?
}

Hero skyDog() {
  var myHero = new Hero(
      42, 'SkyDog', 'Fetch any object at any distance', 'Leslie Rollover');
  print('My hero is ${myHero.name}.'); // "My hero is SkyDog."
  return myHero;
}
