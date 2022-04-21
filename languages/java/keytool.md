[source](https://alvinalexander.com/java/java-keytool-keystore-certificates/)

# Generate key

keytool -genkey -alias ftpKey -keystore privateKey.store

# Generate a temporary certificate file

keytool -import -alias publicFtpCert -file certfile.cer -keystore publicKey.store

# Import this certificate into a new public keystore

keytool -export -alias ftpKey -file certfile.cer -keystore privateKey.store

# View information about a keystore

keytool -list -v -keystore privateKey.store
