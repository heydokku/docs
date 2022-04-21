### import in go
import (
	"CRUD-Operation/conn"
	"time"
	"gopkg.in/mgo.v2/bson"
)

0 No class, has `type` and functions in a go file
1 The installed plugins is saved in go.mod, go.sum file
2 package model

// Delcare a type (Class)
type User struct {
	ID        bson.ObjectId `bson:"_id"`
	Name      string        `bson:"name"`
	Address   string        `bson:"address"`
	Age       int           `bson:"age"`
	CreatedAt time.Time     `bson:"created_at"`
	UpdatedAt time.Time     `bson:"updated_at"`
}
// Create User model with `type`, easy to read
type User struct {
	ID        bson.ObjectId `bson:"_id"`
	Name      string        `bson:"name"`
  
type Users []User
// UserInfo model function

func UserInfo(id bson.ObjectId, userCollection string) (User, error) {
	// Get DB from Mongo Config
	db := conn.GetMongoDB()
	user := User{}
}
