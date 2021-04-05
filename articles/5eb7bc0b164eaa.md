---
title: "Rustが出力したsoファイルをデコンパイルする"
emoji: "☠️"
type: "tech"
topics: ["Docker", "Rust"]
published: true
---
RustからPythonやRubyにFFIでつなげようとしたときに、どんな内容の.soファイルが生成されているのか興味が湧いたので、デコンパイルしてClangのソースコードを生成する時用の備忘録です。
生成されたソースコードの内容には触れません。

## 前提

* Cargo.toml の crate-type で cdylib が指定されていること。
* `cargo build --release` でビルドされた .so ファイルが target/release ディレクトリ以下に生成されていること。

## 使用するツール

RetDec (https://github.com/avast/retdec) 

## 環境構築

Dockerコンテナ内でデコンパイルすることにします。
Dockerfileを以下のように記述します。

```Dockerfile
FROM ubuntu:bionic

RUN apt-get -y update && \
	DEBIAN_FRONTEND=noninteractive apt-get install -y   \
	build-essential                                     \
	cmake                                               \
	git                                                 \
	python3                                             \
	doxygen                                             \
	graphviz                                            \
	upx                                                 \
	openssl                                             \
	libssl-dev                                          \
	zlib1g-dev                                          \
	autoconf                                            \
	automake                                            \
	pkg-config                                          \
	m4                                                  \
	libtool

RUN cd /usr/local/src && \
  git clone https://github.com/avast/retdec && \
	cd retdec && \
	mkdir build && \
	cd build && \
	cmake .. -DCMAKE_INSTALL_PREFIX=/home/retdec/retdec-install -DCMAKE_LIBRARY_PATH=/usr/lib/gcc/x86_64-linux-gnu/7/ && \
	make -j$(nproc) && \
	make install

ENV PATH /home/retdec/retdec-install/bin:$PATH
```

[github](https://github.com/avast/retdec/blob/9f8e3a86613cfe7924ed84397c36e589c1934ec3/Dockerfile) にかかれているDockerfileだと /home/retdec 以下にリポジトリを clone できなかったので、 /usr/local/src に書き換えています。

## コマンド実行

```sh
retdec-decompiler /path/to/target/release/{target}.so
```

.so ファイルのあるディレクトリに {target}.so.c ファイルが生成されます。
