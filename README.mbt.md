# Any

![no identity](https://github.com/Yoorkin/any.mbt/blob/main/image.png?raw=true)

What's this? This module provides a type-safe `Any` type and a `dyn_cast` method, 
without JSON/string serialization.

```mbt check
///|
test "Any and dyn_cast" {
  let a : @any.Any = Any(false)
  let b : @any.Any = Any([1, 2, 3])
  let c : Bool = a.dyn_cast()
  let d : Array[Int] = b.dyn_cast()
  let e : Result[Int, _] = try? b.dyn_cast()
  debug_inspect(c, content="false")
  debug_inspect(d, content="[1, 2, 3]")
  debug_inspect(
    e,
    content=(
      #|Err(Failure("failed to cast Array[Int] to Int"))
    ),
  )
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
        #|Err(Failure("README.mbt.md:50:13-50:25@Yoorkin/any FAILED: failed to cast Bool to Int"))
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
    let a = Any({ x: 10, y: 20 })
    let b : Pos = a.dyn_cast()
    debug_inspect(b, content="{ x: 10, y: 20 }")
  }
  ```
