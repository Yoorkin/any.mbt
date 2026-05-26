// Blackbox tests run against the package's public API. Use `@any` to import.
// Prefer high-level behaviors over implementation details.
// Run `moon test` to execute and `moon test --update` to refresh snapshots.

///|
using @any {type Any}

///|
test {
  let a = Any::Any(5)
  let b = Any::Any(false)
  let x : Int = a.dyn_cast()
  let y : Bool = b.unsafe_cast()
  debug_inspect(
    (x, y),
    content=(
      #|(5, false)
    ),
  )
}

///|
test "builtin generic type info" {
  let a = Any::Any([1, 2, 3])
  debug_inspect(
    try? (a.dyn_cast() : Array[Int]),
    content=(
      #|Ok([1, 2, 3])
    ),
  )
  debug_inspect(
    try? (a.dyn_cast() : Array[Bool]),
    content=(
      #|Err(Failure("any_test.mbt:32:11-32:23@Yoorkin/any FAILED: failed to cast Array[Int] to Array[Bool]"))
    ),
  )
}

///|
test "core type info" {
  let list = @list.from_array([1, 2, 3])
  let list2 : @list.List[Int] = Any::Any(list).dyn_cast()
  debug_inspect(list2.to_array(), content="[1, 2, 3]")

  let queue = @queue.from_array([1, 2, 3])
  let queue2 : @queue.Queue[Int] = Any::Any(queue).dyn_cast()
  debug_inspect(queue2.iter().collect(), content="[1, 2, 3]")

  let sorted_map = @sorted_map.from_array([(1, true), (2, false)])
  let sorted_map2 : @sorted_map.SortedMap[Int, Bool] = Any::Any(sorted_map).dyn_cast()
  debug_inspect(sorted_map2.to_array(), content="[(1, true), (2, false)]")

  let vector = @immut_vector.from_array([1, 2, 3])
  let vector2 : @immut_vector.Vector[Int] = Any::Any(vector).dyn_cast()
  debug_inspect(vector2.to_array(), content="[1, 2, 3]")

  let json = Json::array([Json::number(1.0), Json::null()])
  let json2 : Json = Any::Any(json).dyn_cast()
  inspect(json2.stringify(), content="[1,null]")

  let reversed = @cmp.Reverse(42)
  let @cmp.Reverse(value) = (Any::Any(reversed).dyn_cast() : @cmp.Reverse[Int])
  inspect(value, content="42")
}

///|
test "number type info" {
  let x : Int16 = Any::Any((42 : Int16)).dyn_cast()
  let y : Int64 = Any::Any(1000L).dyn_cast()
  let z : UInt = Any::Any(14U).dyn_cast()
  let w : UInt64 = Any::Any(14UL).dyn_cast()
  let d : Double = Any::Any(3.14).dyn_cast()
  let f : Float = Any::Any((3.14 : Float)).dyn_cast()
  let n : @bigint.BigInt = Any::Any(10000000000000000000000N).dyn_cast()
  debug_inspect(
    (x, y, z, w, d, f, n.to_string()),
    content=(
      #|(42, 1000, 14, 14, 3.14, 3.140000104904175, "10000000000000000000000")
    ),
  )
}
