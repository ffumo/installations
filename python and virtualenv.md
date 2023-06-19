# Install python3 and virtual environment

## Install python3 on CentOS7

### From prebuilt Python3

```
```


### From source code

- Install pre-requirements
```bash
sudo yum-builddep python python-libs

sudo yum install libffi-devel sqlite-devel zlib zlib-devel
```

- Install SQLite
```bash
./scripts/build_sqlite.sh
```

- Download Python source:

```bash
export PYTHON_VERSION=3.8.16
export PYTHON_MAJOR=3

curl -O https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tgz
tar -xvzf Python-${PYTHON_VERSION}.tgz
```

- Config, make and install

```bash
./scipts/build_python3.sh
```

- Verify Python
```
/usr/local/bin/python3.8 --version
```

- Output:
```
Python 3.8.16
```



## Use virtual environment

- Virtual environment with no side package
```
virtualenv --no-site-packages -p /usr/local/bin/python3.8 venv-bert
```

