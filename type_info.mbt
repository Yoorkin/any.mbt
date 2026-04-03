///|
pub impl[T : TypeInfo] TypeInfo for Array[T] with wrapper() {
  let t : Wrapper[T] = TypeInfo::wrapper()
  Wrapper(TypeId("", "Array", [t.id]), box=xs => Array(xs.map(x => t.box(x))), unbox=xs => {
    guard xs is Array(arr)
    arr.map(x => t.unbox(x))
  })
}

///|
pub impl[K : TypeInfo + Compare, V : TypeInfo] TypeInfo for @immut_sorted_map.SortedMap[
  K,
  V,
] with wrapper() {
  let k : Wrapper[K] = TypeInfo::wrapper()
  let v : Wrapper[V] = TypeInfo::wrapper()
  Wrapper(
    TypeId("moonbitlang/core/immut/sorted_map", "SortedMap", [k.id, v.id]),
    box=xs => {
      ImmutSortedMap(xs.iter().map(p => (k.box(p.0), v.box(p.1))).collect())
    },
    unbox=box => {
      guard box is ImmutSortedMap(arr)
      arr.map(p => (k.unbox(p.0), v.unbox(p.1))) |> @immut_sorted_map.from_array
    },
  )
}

///|
pub impl TypeInfo for Int with wrapper() {
  Wrapper(TypeId("", "Int", []), box=x => Int(x), unbox=x => {
    guard x is Int(x)
    x
  })
}

///|
pub impl TypeInfo for Bool with wrapper() {
  Wrapper(TypeId("", "Bool", []), box=x => Bool(x), unbox=x => {
    guard x is Bool(x)
    x
  })
}
