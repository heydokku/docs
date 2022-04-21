" Create data, then convert to json
" Download Service Key
# Firebase project > click on settings icon > select “Users and permissions => Service accounts => Generate Private Key

" Database [URL](URL)
# [learning japanese firebaseio com](learning-japanese-43a97.firebaseio.com)

" [create](create) then access folder

mkdir upload_firestore && cd upload_firestore
npm init
touch index.js
npm install firebase-admin
# move data.json and uploadFirestoreServiceAccKey.json into the folder
mv data.json  uploadFirestoreServiceAccKey.json ~/upload_firestore


### Upload to firebase *storage*
 - change the rule like this to upload directly on web
```
rules_version = '2';
service firebase.storage {
  match /b/{bucket}/o {
    match /{allPaths=**} {
      allow read, write: if true;
    }
  }
}
```
- upload thrrough nodejs(View Developer/upload_firestore)
