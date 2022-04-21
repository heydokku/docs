1. Use the ternary operator(preferred than if..else)
2. Using an if/else
3. Use If or For statements or spread operators in collections
4. if / else
5. if / else if
6. Column
7. Null Checking Expression
8. Redefine switch statement


### 1. Use the ternary operator(preferred than if..else)

```dart
child: condition ? Container(child: Column( children: [  ] )) : Center()
```

* Example 1:

    The things that you can do with the ternary operator but can’t do with if-else. For example, if you need to initialize a constant or reference:

```dart
const int number = (some conditions) ? 100 : 1;
```

* Writing Concise Code
    In the vast majority of cases, you can do the same thing with a ternary operator and an if-else statement. However, using ? : helps us *avoid redundantly repeating other parts of the same statements/function-calls*, for example:


```dart
if (someCondition)
    return x;
else
    return y;
```

Compare with:
Nice!!!
`return condition ? x : y;`

#### 2. Using an if/else

```dart
Widget build(BuildContext context) {
  Widget child:
  if (condition) {
    return = ...
  } else {
    return = ...
  }
  return Container(child: child);
}
```

#### 3. Use If or For statements or spread operators in collections

```dart
children: [
  ...manyItems,
  oneItem,
  if(canIKickIt)
    ...kickTheCan
  for (item in items)
    Text(item)
```

#### 4. if / else

```
Column(
    children: [
        if (_selectedIndex == 0) ...[
          DayScreen(),
        ] else ...[
          StatsScreen(),
        ],
    ],
 ),
```

#### 5. if / else if

* with Multiple widgets example

```
Column(
    children: [
        if (_selectedIndex == 0) ...[
          DayScreen(),
          AboutScreen(),
          InfoScreen(),
        ] else if(_selectedIndex == 1)...[
          HomeScreen(),
          StatsScreen(),
        ],
    ],
 ),
```

#### Use a method

```
child: getWidget()

Widget getWidget() {
  if (x > 5) ...
  //more logic here and return a Widget
```

```dart
Color getColor(int selector) {
  if (selector % 2 == 0) {
    return Colors.blue;
  } else {
    return Colors.blueGrey;
  }
}

// The function is used below to to set the background of the CircleAvatar.

 ListView.builder(
  itemCount: users.length,
  itemBuilder: (BuildContext context, int index) {
    return  Column(
      children: <Widget>[
         ListTile(
          leading:  CircleAvatar(
            backgroundColor: getColor(index),
            child:  Text(users[index].name[0])
          ),
          title:  Text(users[index].login),
          subtitle:  Text(users[index].name),
        ),
         Divider(height: 2.0),
```

### Null Checking Expression

```dart
Center(
        child: Text(name ?? 'No Name Found'),
),
```

### Redefine switch statement

As another alternative to the ternary operator, you could create a function version of the switch statement such as in the following post https://stackoverflow.com/a/57390589/1058292.

  child: case2(myInput,
  {
    1: Text("Its one"),
    2: Text("Its two"),
  }, Text("Default"));
