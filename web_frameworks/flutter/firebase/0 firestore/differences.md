### 1. [AsyncSnap and Snapshot](AsyncSnap and Snapshot)
### 2. [DocumentSnapshot and QuerySnapshot](DocumentSnapshot and QuerySnapshot)

StreamBuilder return Async<QuerySnapshot>
FutureBuilder return Async<DocumentSnapshot>

### 4. set()  and add()

set() on DocumentReference, and add() on CollectionReference.

When you use set() on a DocumentReference, you're putting data into a document that you're already identified by some unique id.a (Otherwise, you wouldn't already have a DocumentReference object!)

As it says in the docs, "If the document does not yet exist, it will be created." If the document already exists, you're either replacing or merging new data into it.

When you use add() on a CollectionReference, you're unconditionally creating a new document in a collection, and that new document will have a unique id assigned to it. The data you pass will become the contents of the new document
