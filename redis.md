# Install Redis

## Install Redis

- Check [Brew](https://brew.sh/)
```
brew --version
```

- Install Redis
```
brew install redis
```

- Test installation
```
redis-server
```


## Install RedisJSON

- Install [Rust](https://www.rust-lang.org/tools/install)
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

- Get git repo and build

```
git clone --recursive https://github.com/RedisJSON/RedisJSON.git
cd RedisJSON
cargo build --release
```

- Check libraries file in *./target/release/librejson.so* or *./target/release/librejson.dylib*


- Run Redis server with JSON module

```
redis-server --loadmodule ./target/release/librejson.dylib
```

