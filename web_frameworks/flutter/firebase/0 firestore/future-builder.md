
### Map one document

```dart highlight={11}
class GetUserName extends StatelessWidget {
  final String documentId;

  GetUserName(this.documentId);

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(documentId).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snap) {

        if (snap.hasError) {
          return Text("Something went wrong");
        }

        if (snap.hasData && !snap.data!.exists) {
          return Text("Document does not exist");
        }

        if (snap.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snap.data!.data() as Map<String, dynamic>;
          return Text("Full Name: ${data['full_name']} ${data['last_name']}");
        }

        return Text("loading");
      },
    );
  }
}
```

### Map snap data to itemBuilder[index] of GridView.builder/ListView.builder

```dart
class TuvungScreen extends StatelessWidget {
  final int docId;
  //final List<Tuvung> tuvungs;

  TuvungScreen({required this.docId});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
        future: FirebaseFirestore.instance
            .collection('content')
            .doc("$docId")
            .collection('tuvungs')
            .get(),
        builder: (context, snap) {
          if (snap.hasData) {
            List<Tuvung> tuvungs = List<Tuvung>.from(snap.data!.docs.map(
                (document) =>
                    Tuvung.fromJson(document.data() as Map<String, dynamic>)));
            return Scaffold(
                appBar: AppBar(
                  title: Text("Từ Vựng"),
                ),
                body: GridView.builder(
                    itemCount: tuvungs.length,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 95,
                      childAspectRatio: 9 / 3,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 9,
                    ),
                    padding: EdgeInsets.all(10.0),
                    itemBuilder: (context, index) {
                      return TuvungButton(
                        hiragana: tuvungs[index].hiragana,
                        kanji: tuvungs[index].kanji,
                        hanviet: tuvungs[index].hanviet,
                        nghia: tuvungs[index].nghia,
                      );
                    }));
          } else {
            return LoadingScreen();
          }
        });
  }
}

```
