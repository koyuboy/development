# shop_app

1. New Widgets
  * GridTile(...)
    * You may combine it with GridView(...) or GridView.builder(...)
  * GridTileBar(..)
    * You may use it in GridTile(footer: GridTileBar(...))
2. State Management
    * It's especially important for complicated apps.
    * When we use it?
      * For insantance, your most derived widget needs some data
      * And if only base widget contains this data
      * you need to pass data right? all over some widget that does not need this data.
      * This is really cumbersome and inefficient so we'll use state management.
3. ChangeNotifier
   * We mixin it with our provider class which includes data.
   * class ProductsProvider with ChangeNotifier{...}
4. notifyListeners(...)
   * When we want to notify listeners about our change.
   * After changing something don't forget to notify listeners.
5. ChangeNotifierProvider(...)
   * You may define all widgets as ChangeNotifierProvider(...)
   * Wrap your MaterialApp with this widget if you want to choose that widget as provider.
   * You have to feed create argument don't forget an example for that:
   * create: (ctx) => ProductsProvider()
   * Widgets that are listening will be rebuild after notifyListener()
   * We assign this duty to ProductsProvider class which lies under the providers folder.
