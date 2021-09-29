# udacity-azure-project2

## Set up Azure Cloud Shell

### Pair the SSH keys

Open the Azure shell and type:

```
ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub
```

The id_rsa.pub file contains the key that needs to be copy and paste into GitHub.
(GitHub > Settings > SSH and GPG keys > Paste > Add the key).

Then you can clone the repository from the Azure Shell without typing your password.

```
git clone git@github.com:acouprie/udacity-azure-project2.git
```

### Create a virtual environment

```
python3 -m venv ~/.udacity-azure-project2
source ~/.udacity-azure-project2/bin/activate
```

