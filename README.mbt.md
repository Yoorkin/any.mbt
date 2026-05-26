# Any

![no identity](https://github.com/Yoorkin/any.mbt/blob/main/image.png?raw=true)

What's this? This module provides a type-safe `Any` type and a `dyn_cast` method, 
without JSON/string serialization.

```mbt check
///|
test "Any and dyn_cast" {
  let s = Any(false)
  let a = Any([1, 2, 3])
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
    let a = Any(false)
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
  extenum @any.Payload += {
    Pos(Pos)
  }

  ///|
  impl Anyable for Pos with fn iso() {
    {
      id: TypeId("my/pkg", "Pos", []),
      box: p => Pos(p),
      unbox: payload => {
        guard payload is Pos(p)
        p
      },
    }
  }

  ///|
  test {
    let p = Any({ x: 10, y: 20 })
    debug_inspect(
      (p.dyn_cast() : Pos),
      content=(
        #|{ x: 10, y: 20 }
      ),
    )
  }
  ```
