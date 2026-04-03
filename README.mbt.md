# Any

![no identity](https://github.com/Yoorkin/any.mbt/blob/main/image.png?raw=true)

What's this? This module provides a type-safe `Any` type and a `dyn_cast` method, 
without JSON/string serialization.

```mbt check
///|
test "Any and dyn_cast" {
  let s = Any::new(false)
  let a = Any::new([1, 2, 3])
  debug_inspect((s.dyn_cast() : Bool), content="false")
  debug_inspect((a.dyn_cast() : Array[Int]), content="[1, 2, 3]")
}
```

# Advantages

- True type safety
- Supports all backends
- No Json/String serialization or deserialization

# Limitations

- Requires manually implementing TypeInfo for custom types
- Some boxing and conversion overhead for generic types

# More examples

- dyn_cast failed

  ```mbt check
  ///|
  test "dyn_cast failed" {
    let a = Any::new(false)
    debug_inspect(
      try? (a.dyn_cast() : Int),
      content=(
        #|Err(Failure("README.mbt.md:38:13-38:25@Yoorkin/any FAILED: failed to cast Bool to Int"))
      ),
    )
  }
  ```

* implement `TypeInfo` for custom type

  ```mbt check
  ///|
  struct Pos {
    x : Int
    y : Int
  } derive(Debug)

  ///|
  suberror Custom {
    Pos(Pos)
  }

  ///|
  impl TypeInfo for Pos with wrapper() {
    fn box(p : Pos) -> Error {
      Pos(p)
    }
    fn unbox(e : Error) raise {
      if e is Pos(p) {
        p
      } else {
        fail("")
      }
    }
    Wrapper(TypeId("@my/pkg", "Pos", []), box~, unbox~)
  }

  ///|
  test {
    let p = Any::new({ x: 10, y: 20 })
    debug_inspect(
      (p.dyn_cast() : Pos),
      content=(
        #|{ x: 10, y: 20 }
      ),
    )
  }
  ```
