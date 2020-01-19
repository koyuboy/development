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
    * Card(...)
      * Card is not a new widget but i've learned as new it's argument which is shape:
      * shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(...))
    * ClipRRect(...)
      * I've used it for adding 'borderRadius:'.
      * I wrapped my Image widget with this widget because Image widget is does not support borderRadius.
    * Stack(...)
      * I've used it because it allows us to create nested widgets.
      * I needed to add Text() widget above the image.
    * Text(...)
      * I've learned softWrap and overflow, we may say that these are safe mechanism.
    * Positioned(...)
      * It only works inside a Stack(...) widget.
      * Positioned allows us to position the child widget in an absolute cordinate space.
      * It's arguments: left, right, bottom, top, height and width.
      * Example: when you feed right argument with 10 it means the distance of the widget from rigth is 10 pixels.
    * SizedBox(...)
      * It ensures some spaces between widgets.
    * Some useful MaterialApp(...) arguments
      * onGenerateRoute:
         * If you want to handle your screens dynamically, it's worth to use onGenerateRoute.
         * If there is no screen at that name, OnGenerateRoute works.
      * onUnknownRoute:
         * Flutter reaches onUnknownRouse before throwing error. 
         * We may say that it's last step for flutter.
         * If we don't have any routes and we don't feed onGenerateRoute: argument, finally onUnknownRoute works.
    * Border.all(..)
       * I'm already familiar with Border.circular(...)
       * However, Border.all(..) is a new widget for me.
       * In container when we use border: Border.all()
       * We may access to border's color and we can change it easily, try it while devoloping new apps.
    * ListTile(...) 
      * leading:
      * title:
      * subtitle:
      * trailing:
    * Divider(...)
      * It simply draws horizontal lines.
    * DefaultTabController(...)
      * length:
         * any integer
      * initialIndex: 
         * any integer (it is 0 as default)
      * child: 
         * Scaffold(...)
      * appBar: 
         * title: Text(...)
         * bottom: TabBar()
            * TabBar( tabs: <Widget> [])
               * We should add Tab(...) widgets inside the tabs:
               * make sure your list's length should be equal to length argument above.
      * body: 
         * TabBarView()
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
   
5. Reminder: Don't forget to create your own build methods.
