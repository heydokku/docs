1. AppBar
2. BotttomNavBar
3. Drawer
4. SliverBar
5. TabBar

### 1. AppBar
An app bar consists of a toolbar and potentially other widgets, such as a TabBar and a FlexibleSpaceBar. App bars typically expose one or more common actions with IconButtons which are optionally followed by a PopupMenuButton for less common operations (sometimes called the "overflow menu").

App bars are typically used in the Scaffold.appBar property, which places the app bar as a fixed-height widget at the top of the screen. For a scrollable app bar, see SliverAppBar, which embeds an AppBar in a sliver for use in a CustomScrollView.

The AppBar displays the toolbar widgets, leading, title, and actions, above the bottom (if any). The bottom is usually used for a TabBar. If a flexibleSpace widget is specified then it is stacked behind the toolbar and the bottom widget. The following diagram shows where each of these slots appears in the toolbar when the writing language is left-to-right (e.g. English):

The AppBar insets its content based on the ambient MediaQuery's padding, to avoid system UI intrusions. It's taken care of by Scaffold when used in the Scaffold.appBar property. When animating an AppBar, unexpected MediaQuery changes (as is common in Hero animations) may cause the content to suddenly jump. Wrap the AppBar in a MediaQuery widget, and adjust its padding such that the animation is smooth.

```dart
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Demo'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: const Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(fontSize: 24),

```


### 2. BottomNavigationBar

A material widget that's displayed at the bottom of an app for selecting among a small number of views, typically between three and five.

The bottom navigation bar consists of multiple items in the form of text labels, icons, or both, laid out on top of a piece of material. It provides quick navigation between the top-level views of an app. For larger screens, side navigation may be a better fit.

A bottom navigation bar is usually used in conjunction with a Scaffold, where it is provided as the Scaffold.bottomNavigationBar argument.

The bottom navigation bar's type changes how its items are displayed. If not specified, then it's automatically set to BottomNavigationBarType.fixed when there are less than four items, and BottomNavigationBarType.shifting otherwise.

The length of items must be at least two and each item's icon and title/label must not be null.
BottomNavigationBarType.fixed, the default when there are less than four items. The selected item is rendered with the selectedItemColor if it's non-null, otherwise the theme's ColorScheme.primary color is used for Brightness.light themes and ColorScheme.secondary for Brightness.dark themes. If backgroundColor is null, The navigation bar's background color defaults to the Material background color, ThemeData.canvasColor (essentially opaque white).

BottomNavigationBarType.shifting, the default when there are four or more items. If selectedItemColor is null, all items are rendered in white. The navigation bar's background color is the same as the BottomNavigationBarItem.backgroundColor of the selected item. In this case it's assumed that each item will have a different background color and that background color will contrast well with white.

```dart
Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
```
### 3. Drawer

Drawers are typically used with the Scaffold.drawer property. The child of the drawer is usually a ListView whose first child is a DrawerHeader that displays status information about the current user. The remaining drawer children are often constructed with ListTiles, often concluding with an AboutListTile.

The AppBar automatically displays an appropriate IconButton to show the Drawer when a Drawer is available in the Scaffold. The Scaffold automatically handles the edge-swipe gesture to show the drawer.

```dart
Scaffold(
  appBar: AppBar(
    title: const Text('Drawer Demo'),
  ),
  drawer: Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: const <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(
            'Drawer Header',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: Text('Messages'),
        ),
```

### 4. SliverAppBar

* Short Definition
3. An app bar consists of a toolbar and potentially other widgets, such as a TabBar and a FlexibleSpaceBar. App bars typically expose one or more common actions with IconButtons which are optionally followed by a PopupMenuButton for less common operations.

```dart
SliverAppBar(
  expandedHeight: 150.0,
  flexibleSpace: const FlexibleSpaceBar(
    title: Text('Available seats'),
  ),
  actions: <Widget>[
    IconButton(
      icon: const Icon(Icons.add_circle),
      tooltip: 'Add new entry',
      onPressed: () { /* ... */ },
    ),
  ]
)
```

### 5. TabBar

- TabBarView, which displays page views that correspond to each tab.
- TabBar, which is used to display the Tab that corresponds to each page of the TabBarView.

A material design widget that displays a horizontal row of tabs.
Typically created as the AppBar.bottom part of an AppBar and in conjunction with a TabBarView.

If a TabController is not provided, then a DefaultTabController ancestor must be provided instead. The tab controller's TabController.length must equal the length of the tabs list and the length of the TabBarView.children list.

Requires one of its ancestors to be a Material widget.

Uses values from TabBarTheme if it is set in the current context.

```dart
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Widget'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
```
