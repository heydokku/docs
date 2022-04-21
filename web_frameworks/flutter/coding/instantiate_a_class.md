#### 1. How to instantiate in Getx

```dart
final AuthController controller = Get.put(AuthController());

// Can declare like this?
// this is more compact, will be alert if use linting packages
final controller = Get.put(AuthController());

// or like this
final controller = Get.put<AuthController>(AuthController());

// Which is the best?
```

#### 2. Instantiation of Flutter Default Controller

- AnimationControllter?, PageController?, ScrollController?, TabController...

All of above should put initialization in  , onClose().. method

In Getx,  There is *onInit(), onReady(), onClose()*

In StatefullWidget, *onInit() method and dispose in onDispose()*

```dart

// ----- 3 STEPS

// Step 1. declare the type, not instantiate  then initialize in onInit()  method
PageController? _pageController;

// Step 2. Create property with 'get' to read PageController's instance from outside
PageController? get pageController => this._pageController;

// Step 3. instantiate variable in onInit() method
@ovveride
onInit(
    _pageController = PageController();
    super.onInit();
)
```

### 3. Create multiple static widgets (multiple function) in a class (without extending StatefullWidget or StatelesWidget)

build function = Widget

function(UI) = Widget

https://github.com/ankesh-kumar/Flutter-chat/blob/d8914058c34f62e25f7e41502b055f08d5e9829b/lib/chatWidget.dart#L32
