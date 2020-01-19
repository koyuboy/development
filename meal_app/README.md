# meal_app

1. Some New Widgets
    * GridView(...) and GridView.builder(...)
      * gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(...)   (only an example)
    * Linear Gradients
      * It's useful in order to design your Container widget
      * color: it gets list of colors (you may use color.withOpacity(...))
      * begin:
      * end:
    * InkWell(...)
      * It's like gesture detector but it also has a wave affect
      * splashColor:
      * borderRadius: (In my oppinion it should match with container's borderRadius if it has).
      
2. Registering a screen as the main screen
   * Just use named argument which is called as 'home:' in materialApp
   * If you decide to use namedRoutes, you may determine it as '/': (ctx) => AnyWidgetScreen()
   * in flutter default initialRoute which is also as known as home is '/'. However, if we want, we may change it with initialRoute: argument 
3. Manuel Route   
   * .push(...)
   * MaterialPageRoute(...)
4. Named Route
   * passing data between widgets is a little bit different.
   * arguments: => we use this as an argument in pushNamed(...) (It can be any object)
   * in order to catch it create a variable in build method With this way (Example):
   * final routeArgs = ModalRoute.of(context).settings.arguments  (you should also add 'as' keyword because it was an Object type)
   * Advice: Use static const property for definining routeName in class, it's more convenient way to get proper error messages.
