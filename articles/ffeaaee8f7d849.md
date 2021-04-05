---
title: "Rutieの使い方"
emoji: "😎"
type: "tech"
topics: ["Rust", "Ruby", "rutie"]
published: false
---
## Rutieとは

https://github.com/danielpclark/rutie

## Ruby界で使えるクラスをRust界で定義する

Ruby界で使用できるクラス `Hello` をRust界で定義するにはRutieの `class!` マクロを使って以下を記述します。

```rust
use rutie::class;
class!(Hello);
```

この時 `Hello` という構造体やトレイトが存在するとエラーになるので、Rust界でぶつからない名称にする必要があります。

この `class!` マクロでクラスを定義すると、コンパイル時に以下のような定義が生成されます。

```rust
#[repr(C)]
pub struct Hello {
    value: ::rutie::types::Value,
}

impl From<::rutie::types::Value> for Hello {
    fn from(value: ::rutie::types::Value) -> Self { Foo{value: value,} }
}

impl ::rutie::Object for Hello {
    #[inline]
    fn value(&self) -> ::rutie::types::Value { self.value }
}
```

ここで生成される定義を簡単に説明すると、

* `Value` 型の値 `value` を持つ `Hello` 構造体を定義する。
* `Value` 型から `Hello` 型への `From` を実装する。
	* `Value` 型の `value` を知っているとき `Hello::from(value)` と書くことで `Hello` 型の値を得ることができる。
* `Object` トレイトを `Hello` 型に実装する。
	* `Hello` 構造体が持つプライベートフィールド `value` を `value()` 関数で外部から参照できるようにする。

## 定義したクラスをRuby界で使えるようにする

先程の `class!` マクロについで以下の記述を追加します。

```rust
use rutie::{Class, class}; // Classを追加

class!(Hello);

// 以下を追記
#[allow(non_snake_case)]
#[no_mangle]
pub extern "C" fn Init_hello() {
    Class::new("Hello", None);
}
```

## 定義したクラスにメソッドを生やす



## Ruby界で生成されたインスタンスをRust界で受け取れるようにする

上記で定義した `Hello` 構造体を Ruby 界でインスタンス化したものを Rust界の関数の引数で受け取りたい場合があります。

```rust
pub fn get_hello(hello: Hello) {}
```

ここまでの定義ではコンパイルエラーになります。

```rust
error[E0277]: the trait bound `Hello: VerifiedObject` is not satisfied
```

以下の記述を追加します。

```rust
impl VerifiedObject for Hello {
    fn is_correct_type<T: Object>(object: &T) -> bool {
        Class::from_existing("Hello").case_equals(object)
    }

    fn error_message() -> &'static str {
        "Error converting to Hello"
    }
}
```

## Class#new_instanceはRuby界に存在するクラスのインスタンスを作成する

https://github.com/danielpclark/rutie#custom-ruby-objects-in-rust

```rust
let instance = Class::from_existing("Pathname").new_instance(Some(&arguments));
```

Ruby界にある Pathname [クラス](https://docs.ruby-lang.org/ja/latest/class/Pathname.html) をRust界でも使えるようにするのが Class の new_instance メソッド。

