# expense_planner  
### What i learned in this app?

1. Some new Widgets  
   * Flexible(...)
   * Expanded(...)
   * FitteBox(...)
   * ListTile(...)
   * LayoutBuilder(...)
   * Switch(...)
      * Switch.adaptive(...) - For ios adaptive apps
      * Also we may (should) create our own adaptive widgets. (use another widget for that like 'adaptive_flat_button')  
   * SafeArea(...)
   * FlatButton.icon(...)
2. Some basics about Future class 
    * Future class's method '.then(...)' which is very useful and essential for this class.

3. Configuring and Using Themes  
    * theme: ThemeData(...) - In ios CupertinoThemeData
    * Some Explanations:
      * theme is an argument for MaterialApp. ThemeData eases our works while using with colors, textTitles etc.
      * With using ThemeData(...) we don't need to strive for theming for all widgets (concisely it is straightforward).
4. Responsive and Adaptive
    * Adaptive Apps => Android - IOS
    * Responsive Apps => MediaQuery.of(context)....
      * AppBar.preferredSize.(height or width)
      * MediaQuery.padding.top (for status bar)

