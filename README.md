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

## Configure GitHub Actions

### Create the workflow

GitHub > Actions > set up a workflow yourself

Copy the following the replace the default template:

```
name: Python application test with Github Actions

on: [push]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2
    - name: Set up Python 3.5
      uses: actions/setup-python@v1
      with:
        python-version: 3.5
    - name: Install dependencies
      run: |
        make install
    - name: Lint with pylint
      run: |
        make lint
    - name: Test with pytest
      run: |
        make test
```

After commiting, your build should be green. In details, it should look like this:

![GitHub Actions passed](https://github.com/acouprie/udacity-azure-project2/blob/main/screenshots/github_actions_passed.png)
