enum RouterPath {
  //최상위
  splash('/', '/'),
  home('/home', 'home'),
  futureProvider('/futureProvider', 'futureProvider'),

  // example 하위
  // radioButton('radio_button', 'radio_button'),

  // 상위
  app('/app', 'app')
  // app 하위
  // managementTab('/managementTab','management_tab'),
  // studemtManagement('student','studemtManagement')
  ;

  const RouterPath(this.path, this.name);
  final String path;
  final String name;
}
