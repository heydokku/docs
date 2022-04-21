# -----------------------------------------------
# Config to push github without inputing password
# -----------------------------------------------
# 1. Run the following command to enable credentials storage in your Git repository:
# git config credential.helper store

# ------Token is used as a password--------------
# 2. To enable credentials storage globally, run:
git config --global credential.helper store
# When credentials storage is enabled, the first time you pull or push from the remote Git repository, you will be asked for a username and password, and they will be saved in ~/.git-credentials file.


## END


# -----------------------------------------------
# Config Username and Password for Different Repositories
# -----------------------------------------------
git config --global credential.helper store
git config --global credential.github.com.useHttpPath true
