###  upload file to firebase storage

[gsutils command](https://cloud.google.com/storage/docs/gsutil/commands/acl)

`gcloud auth login`

`gcloud config set project PROJECT_ID`

`gsutil cp backup.$(date +%F).gz.gpg gs://PROJECT_ID.appspot.com/backups`

- cp all file in the dir to cloud

`gsutil cp ~/Desktop/nhatngu/* gs://learning-japanese-43a97.appspot.com/n5`

- remove *all* file in the storage

`gsutil rm gs://learning-japanese-43a97.appspot.com/**`


- list of object

`gsutil ls -r gs://bucket/**`

### firestore

- Delete collection/subcollection

`firebase firestore:delete -r dethi/n3/questions`

OR

use a cloud function
https://fireship.io/snippets/delete-firestore-collection/
