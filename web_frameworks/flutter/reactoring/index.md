[1](1). Refactoring with a method [refactor_method]()
2. Refactoring with a local variable [refactor_localvariable](refactor_method)
3. Refactoring with a widget class

### 1. Refactoring with a method

    This is the mostly used refactoring method I’ve used in my project since it really helps make the widget readable, especially extracting nested widgets from the build method of the Widget. Extracting widgets is very simple since all you need to do is create a method that returns the widget you wish to extract
```dart
Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCreateReport(context
  Widget _buildReportList(BuildContext context) {
    return Container(...);
  }
```

### 2. Refactoring with a local variable

Similar to the one we saw above, however refactoring with a local variable consists of initializing a widget with a final variable. Here too you separate the main parts of the widget tree into sections, which increases the readability and maintainability of the code.
```dart
  final TabBarView myTabBarView = TabBarView(
    children: [
      ProjectDetailPage(),
      MonitoringTab(),
      BookingTab(),
    ],
  );
```

### 3. Refactoring with a widget class

This technique allows you to isolate a subtree of widgets in a class extending the StatelessWidget. It also allows you to create reusable widgets, and separate them into the same or different Dart files, which you can import or use anywhere in your application. Warning ! All the constructors of these classes will have to start with the keyword const, thanks again to Dart. When you are going to create an object of this class, don’t forget to start with the keyword const once more. By doing this the widget will not be rebuilt when the others change their state in the widget tree. If you omit the const keyword, the consequence is that the number of times that the parent widget will be rebuilt or redraw, well, our widget will suffer the same fate, so be careful.

The widget class counts on its own BuildContext, not on that of its parent as when approaching refactoring with a constant or method. The BuildContext is responsible for managing the position of the widget in the widget tree.

```dart
class CustomCard extends StatefulWidget {
  CustomCard(
      {required this.title,
      required this.userName,
      required this.lastEdited,
      required this.onClick,
      required this.userIcon,
      required this.displayIcon,
      Key? key})
      : super(key: key);

  final String title;
  final String userName;
  final DateTime lastEdited;
  final Widget onClick;
  final Icon userIcon;
  final IconData displayIcon;

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  String _getFormatedLastEdited() {
    String formattedTime = DateFormat('dd/mm/yyyy').format(widget.lastEdited);
    return "Terakhir diedit: " + formattedTime;
  }
```

```dart
class TuVungButton extends StatelessWidget {
// 1. Put Constructor first, then the fields
// 2. Use cons immutable object
  const TuVungButton({
   required this.tuvung,
   required this.index
   required this.onPressed
  });
  final String tuvung;
  final int index;
  final Function onPressed;
  final void onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) => Dialog(
                  child: ElevatedButton(
                      onPressed: () {
//TODO: Mark have read, mark done
                      },
g                     child: Text("done"))));
        },
        child: Text(tuvung));
  }
}

```

### Conclusion

In this article, you learned that the widget tree is the result of nested widgets. As often the number of widgets tend to increase, the widget tree expands rapidly and reduces the readability and manageability of the code.
