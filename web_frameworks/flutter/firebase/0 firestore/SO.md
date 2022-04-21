  ### 1, ONLY Collection can add document. SO want to create chat room, data structure must be like this

  chatRoom/chatRoomId/
  want to add message into chatRoomId, must create a collection in chatRoom document

  ```dart
  Future<void> addMessage(String chatRoomId, msg, UserModel user) {
    return FirebaseFirestore.instance
.collection("chatRoom")
        //.doc("$chatRoomId")
// add or set ? to add to Firestore
        .add(Message(user: user, msg: msg).toJson);
  }

  ```
  ### 2. Map items of collection snapshot()
  Stream has `snapshot()` method for both Document and Collection
  ```
  querySnapshot.docs.map(function(doc) {
  # do something
})
  ```
  Case 2
```dart
const docsArr = (db, collection) => {
  return db
    .collection(collection)
    .get()
    .then(snapshot => snapshot.docs.map(x => x.data()))
};

(async () => {
  const arr = await docsArr(myDb, myCollection)
  console.log(arr)
})()
  ```
  ### 3,TODO: How to Map UserModel this fromJson

  ```dart
class Message {
late UserModel user; }
  ```

 ### 4. Add TimeStamp field
 ```
 final TimeStamp created
 Timestamp.now()
       FirebaseFirestore.instance
          .collection('chatroom')
          .doc('5')
          .collection('5')
          .add({
        "msg": message,
        "createdAt": FieldValue.serverTimestamp(),// server stamp
        "createdAt": Datetime.now(),// Now
      });

 ```

 ### 5. Query nested object
 data structure
 ```
   "chatName": "Football",
   "chatMembers":
   [
      {
         "userId": "nSWnbKwL6GW9fqIQKREZENTdVyq2",
         "name": "Niklas"
      },
      {
         "userId": "V3QONGrVegQBnnINYHzXtnG1kXu1",
         "name": "Timo"
      },
   ]
 ```
 ```
     var query = db.collection('chatDocs').where("chatMembers", "array-contains", { userId: "xyz", userName: "abc" });
 ```

 Map datetime in firestore

 ```
 @JsonSerializable()
class Person {
  @JsonKey(fromJson: dateTimeFromTimestamp)
  DateTime dateOfBirth;

  ...
}

DateTime dateTimeFromTimestamp(Timestamp timestamp) {
  return timestamp == null ? null : timestamp.toDate();
}
 ```
 ```
 @JsonSerializable(nullable: false)
    class Person {
      @JsonKey(fromJson: _fromJson, toJson: _toJson)
      final DateTime dateOfBirth;
      Person({this.dateOfBirth});
      factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
      Map<String, dynamic> toJson() => _$PersonToJson(this);

      static DateTime _fromJson(int int) => DateTime.fromMillisecondsSinceEpoch(int);
      static int _toJson(DateTime time) => time.millisecondsSinceEpoch;

    }
 ```
