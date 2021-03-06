---
title: "Rutieã®ä½¿ãæ¹"
emoji: "ð"
type: "tech"
topics: ["Rust", "Ruby", "rutie"]
published: false
---
## Rutieã¨ã¯

https://github.com/danielpclark/rutie

## Rubyçã§ä½¿ããã¯ã©ã¹ãRustçã§å®ç¾©ãã

Rubyçã§ä½¿ç¨ã§ããã¯ã©ã¹ `Hello` ãRustçã§å®ç¾©ããã«ã¯Rutieã® `class!` ãã¯ã­ãä½¿ã£ã¦ä»¥ä¸ãè¨è¿°ãã¾ãã

```rust
use rutie::class;
class!(Hello);
```

ãã®æ `Hello` ã¨ããæ§é ä½ããã¬ã¤ããå­å¨ããã¨ã¨ã©ã¼ã«ãªãã®ã§ãRustçã§ã¶ã¤ãããªãåç§°ã«ããå¿è¦ãããã¾ãã

ãã® `class!` ãã¯ã­ã§ã¯ã©ã¹ãå®ç¾©ããã¨ãã³ã³ãã¤ã«æã«ä»¥ä¸ã®ãããªå®ç¾©ãçæããã¾ãã

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

ããã§çæãããå®ç¾©ãç°¡åã«èª¬æããã¨ã

* `Value` åã®å¤ `value` ãæã¤ `Hello` æ§é ä½ãå®ç¾©ããã
* `Value` åãã `Hello` åã¸ã® `From` ãå®è£ããã
	* `Value` åã® `value` ãç¥ã£ã¦ããã¨ã `Hello::from(value)` ã¨æ¸ããã¨ã§ `Hello` åã®å¤ãå¾ããã¨ãã§ããã
* `Object` ãã¬ã¤ãã `Hello` åã«å®è£ããã
	* `Hello` æ§é ä½ãæã¤ãã©ã¤ãã¼ããã£ã¼ã«ã `value` ã `value()` é¢æ°ã§å¤é¨ããåç§ã§ããããã«ããã

## å®ç¾©ããã¯ã©ã¹ãRubyçã§ä½¿ããããã«ãã

åç¨ã® `class!` ãã¯ã­ã«ã¤ãã§ä»¥ä¸ã®è¨è¿°ãè¿½å ãã¾ãã

```rust
use rutie::{Class, class}; // Classãè¿½å 

class!(Hello);

// ä»¥ä¸ãè¿½è¨
#[allow(non_snake_case)]
#[no_mangle]
pub extern "C" fn Init_hello() {
    Class::new("Hello", None);
}
```

## å®ç¾©ããã¯ã©ã¹ã«ã¡ã½ãããçãã



## Rubyçã§çæãããã¤ã³ã¹ã¿ã³ã¹ãRustçã§åãåããããã«ãã

ä¸è¨ã§å®ç¾©ãã `Hello` æ§é ä½ã Ruby çã§ã¤ã³ã¹ã¿ã³ã¹åãããã®ã Rustçã®é¢æ°ã®å¼æ°ã§åãåãããå ´åãããã¾ãã

```rust
pub fn get_hello(hello: Hello) {}
```

ããã¾ã§ã®å®ç¾©ã§ã¯ã³ã³ãã¤ã«ã¨ã©ã¼ã«ãªãã¾ãã

```rust
error[E0277]: the trait bound `Hello: VerifiedObject` is not satisfied
```

ä»¥ä¸ã®è¨è¿°ãè¿½å ãã¾ãã

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

## Class#new_instanceã¯Rubyçã«å­å¨ããã¯ã©ã¹ã®ã¤ã³ã¹ã¿ã³ã¹ãä½æãã

https://github.com/danielpclark/rutie#custom-ruby-objects-in-rust

```rust
let instance = Class::from_existing("Pathname").new_instance(Some(&arguments));
```

Rubyçã«ãã Pathname [ã¯ã©ã¹](https://docs.ruby-lang.org/ja/latest/class/Pathname.html) ãRustçã§ãä½¿ããããã«ããã®ã Class ã® new_instance ã¡ã½ããã

