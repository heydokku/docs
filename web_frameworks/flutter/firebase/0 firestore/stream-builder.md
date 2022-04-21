
### Map list of docs without index toList

```dart
class UserInformation extends StatefulWidget {
  @override
    _UserInformationState createState() => _UserInformationState();
}

class _UserInformationState extends State<UserInformation> {
// 'snapshots' has 's' at the end. See?
  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance.collection('users').snapshots();
  Widget build(BuildContext context) {
    @override
    // Note: MUST declare "QuerySnapshot" here
    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      // rename snapshot to snap to differentiate Stream's 'snapshot()' method
      // and snapshot as instance  of AsyncSnapshot in StreamBuilder/FutureBuilder
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snap) {
        if (snap.hasError) {
          return Text('Something went wrong');
        }

        if (snap.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return ListView(
          children: snap.data.docs.map((DocumentSnapshot document) {
          Map<String, dynamic> data = document.data() as Map<String, dynamic>;
            return  ListTile(
              title:  Text(data['full_name']),
              subtitle:  Text(data['company']),
            );
          }).toList(),
        );
      },
    );
  }
}
```

### Map snap to ListView.builder with index

```dart
  Widget buildListMessage() {
    return Flexible(
        child: StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('chatroom')
          .doc('5')
          .collection('5')
// order by which field
          .orderBy('createdAt', descending: true)
          .limit(c.limit)
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasData) {

          c.listMessage.addAll(snapshot.data!.docs);

          return ListView.builder(
            padding: EdgeInsets.all(10.0),
            itemBuilder: (context, index) =>
                buildItem(index, snapshot.data!.docs[index], context),
            itemCount: snapshot.data?.docs.length,
            reverse: true,
            controller: c.listScrollController,
          );
        } else {
          return Text("$snapshot.data?.docs.length");
        }
      },
    ));
  }
```
