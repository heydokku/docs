```dart
import 'package:intl/intl.dart';

extension HHmm on Duration {
  String formatHHmm() {
    //1:34:00.000000
    final str = this.toString();

    final texts = str.split(":");
    final textHour = texts[0].padLeft(2, '0');
    final textMinute = texts[1].padLeft(2, '0');

    return "${textHour}h ${textMinute}m";
  }
}

extension FormatNumber on int {
  String formatDecimalThousand() {
    //1403 -> 1,403
    var f = new NumberFormat.decimalPattern("en_US");
    return f.format(this);
  }
}

extension FormatDate on int {
  String MMM_dd_yyyy() {
    return DateFormat("MMM dd, yyyy")
        .format(DateTime.fromMillisecondsSinceEpoch(this * 1000));
  }
}
```

### Apply to the client code

```
 final textDuration = Duration(seconds: show.duration).formatHHmm();
        Text(textDuration, style: FONT_CONST.REGULAR_GRAY1_10),
```
