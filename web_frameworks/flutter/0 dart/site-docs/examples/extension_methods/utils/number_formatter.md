```dart
import 'package:intl/intl.dart';

extension FormatNumber on int {
  String formatDecimalThousand() {
    //1403 -> 1,403
    var f = new NumberFormat.decimalPattern("en_US");
    return f.format(this);
  }
}

```
