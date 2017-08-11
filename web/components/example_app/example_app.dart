import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:material_components_web/material_components_web.dart';
import '../example_button/example_button.dart';
import '../example_dialog/example_dialog.dart';
import '../example_fab/example_fab.dart';
import '../example_icon_toggle/example_icon_toggle.dart';
import '../example_list/example_list.dart';

@Component(
    selector: 'example-app',
    templateUrl: 'example_app.html',
    directives: const [mdcDirectives, ROUTER_DIRECTIVES])
@RouteConfig(const [
  const Route(path: '/button', name: 'Button', component: ButtonExampleComponent),
  const Route(path: '/dialog', name: 'Dialog', component: DialogExampleComponent),
  const Route(path: '/fab', name: 'Fab', component: FabExampleComponent),
  const Route(path: '/icon-toggle', name: 'IconToggle', component: IconToggleExampleComponent),
  const Route(path: '/list', name: 'List', component: ListExampleComponent)
])
class ExampleAppComponent implements OnInit {
  final MdcAutoInitService _autoInitService;

  String title = 'Material Design Components';

  ExampleAppComponent(this._autoInitService);

  @ViewChild('drawer')
  MdcDrawerComponent drawer;

  @override
  ngOnInit() {
    _autoInitService.autoInit();
  }

  handleActivate() {
    drawer?.close();
  }
}
