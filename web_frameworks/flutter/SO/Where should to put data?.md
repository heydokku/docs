### Case 1. One Screen contains Pages. Fetch data at that Widget

Examples: (nhat-ngu-mosimos project) ContentScreen contain StartPage(single page), QuestionPages(multiple pages) and ScorePage(single page). Can use FutureBuilder here to fetch data like this.

'Why use FutureBuilder?':
- Because it fetchs only one times when access all of pages in one screen
- The fetched data is ONLY used in this Widget and its Children, not to use outside
- We (usually) use body: PageView.builder()  to build multiple pages under one Screen like below.

```dart
build method to build Widget... // need context here
return FutureBuilder(
future:... // function to get data, return data is to attached to the builder
builder: ContentScreen(
// read then map data here
Content content = ..
)
)
```
