1. Function in Dart

DateTime.now() which is not compile-time constant. Because this method will return the time when the line is getting executed at runtime. So we can’t assign the DateTime.now() to a const variable.
Example:

void caculateTotal(int s1, int s2, BuildContext context){

  final AuthController authController = GetController<AuthController>.,

}

static const Color _darkColor = Colors.white;

#### Final Usage

- Instance level final variable must be initialized in the same line or in the constructor initialization

```
Class A {
    final a = 5;
}

// Constructor with a parameter.
Class B {
    final b;
    B(this.b);
}
```
class A {
  static final a = 5;
  static final b = DateTime.now();
}

The difference has to do with *how memory is allocated*

*a final* variable can only be set once and it is initialized when access

a *const* variable is internally final in nature but the main difference is that its compile-time constant which is *initialized during compilation even if you don’t use its value* *it will get initialized and will take space in memory.*


#### Collection

If you have a final field containing a collection, that collection can still be mutable.

If you have a const collection, everything in it must also be const, recursively.

#### Const usage
- Should be initialized at the same line.

const a = 5;

// error
const a;
a = 5;

// still ok
const int a = 5;
const var a = 5;

- Instance level const variable is not possible.
```
class A {
// error
  const a = 5;

// ok
static const a = 5;
}
```
- Make object *immutable*
```
Class A {
    final a, b;
    const A(this.a, this.b);
}
```
