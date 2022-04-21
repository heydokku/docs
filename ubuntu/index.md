find -iname ".*.un~" ...

rm ./.*.un~

* does not expand dot files. You'll have to say e.g.:


### Find Biggest Files and Directories in Linux

Run the following command to find out top biggest directories under /home partition.

# du -a /home | sort -n -r | head -n 5

###  Check network (wifi/ethermet) drivers

```
sudo lshw -C network
```

### Change default shell

sudo vi /etc/shells
sudo vi /etc/pswd

### 
[ ] https://github.com/dirs-dev/dirs-rs#Features
