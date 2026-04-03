///|
let _keep_immut_array_pkg : @immut_array.T[Unit]? = None

///|
pub impl TypeInfo for Int16 with wrapper() {
  Wrapper(TypeId("", "Int16", []), box=x => Int16(x), unbox=x => {
    guard x is Int16(x)
    x
  })
}

///|
pub impl TypeInfo for Int64 with wrapper() {
  Wrapper(TypeId("", "Int64", []), box=x => Int64(x), unbox=x => {
    guard x is Int64(x)
    x
  })
}

///|
pub impl TypeInfo for UInt16 with wrapper() {
  Wrapper(TypeId("", "UInt16", []), box=x => UInt16(x), unbox=x => {
    guard x is UInt16(x)
    x
  })
}

///|
pub impl TypeInfo for UInt with wrapper() {
  Wrapper(TypeId("", "UInt", []), box=x => UInt(x), unbox=x => {
    guard x is UInt(x)
    x
  })
}

///|
pub impl TypeInfo for UInt64 with wrapper() {
  Wrapper(TypeId("", "UInt64", []), box=x => UInt64(x), unbox=x => {
    guard x is UInt64(x)
    x
  })
}

///|
pub impl TypeInfo for Double with wrapper() {
  Wrapper(TypeId("", "Double", []), box=x => Double(x), unbox=x => {
    guard x is Double(x)
    x
  })
}

///|
pub impl TypeInfo for Float with wrapper() {
  Wrapper(TypeId("", "Float", []), box=x => Float(x), unbox=x => {
    guard x is Float(x)
    x
  })
}

///|
pub impl TypeInfo for String with wrapper() {
  Wrapper(TypeId("moonbitlang/core/string", "String", []), box=x => String(x), unbox=x => {
    guard x is String(x)
    x
  })
}

///|
pub impl TypeInfo for StringView with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/string", "StringView", []),
    box=x => StringView(x),
    unbox=x => {
      guard x is StringView(x)
      x
    },
  )
}

///|
pub impl TypeInfo for Bytes with wrapper() {
  Wrapper(TypeId("moonbitlang/core/bytes", "Bytes", []), box=x => Bytes(x), unbox=x => {
    guard x is Bytes(x)
    x
  })
}

///|
pub impl TypeInfo for BytesView with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/bytes", "BytesView", []),
    box=x => BytesView(x),
    unbox=x => {
      guard x is BytesView(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @argparse.ArgGroup with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/argparse", "ArgGroup", []),
    box=x => ArgGroup(x),
    unbox=x => {
      guard x is ArgGroup(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @argparse.Command with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/argparse", "Command", []),
    box=x => Command(x),
    unbox=x => {
      guard x is Command(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @argparse.FlagAction with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/argparse", "FlagAction", []),
    box=x => FlagAction(x),
    unbox=x => {
      guard x is FlagAction(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @argparse.FlagArg with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/argparse", "FlagArg", []),
    box=x => FlagArg(x),
    unbox=x => {
      guard x is FlagArg(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @argparse.Matches with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/argparse", "Matches", []),
    box=x => Matches(x),
    unbox=x => {
      guard x is Matches(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @argparse.OptionAction with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/argparse", "OptionAction", []),
    box=x => OptionAction(x),
    unbox=x => {
      guard x is OptionAction(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @argparse.OptionArg with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/argparse", "OptionArg", []),
    box=x => OptionArg(x),
    unbox=x => {
      guard x is OptionArg(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @argparse.PositionArg with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/argparse", "PositionArg", []),
    box=x => PositionArg(x),
    unbox=x => {
      guard x is PositionArg(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @argparse.ValueRange with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/argparse", "ValueRange", []),
    box=x => ValueRange(x),
    unbox=x => {
      guard x is ValueRange(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @argparse.ValueSource with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/argparse", "ValueSource", []),
    box=x => ValueSource(x),
    unbox=x => {
      guard x is ValueSource(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @bench.Bench with wrapper() {
  Wrapper(TypeId("moonbitlang/core/bench", "Bench", []), box=x => Bench(x), unbox=x => {
    guard x is Bench(x)
    x
  })
}

///|
pub impl TypeInfo for @bench.Summary with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/bench", "Summary", []),
    box=x => BenchSummary(x),
    unbox=x => {
      guard x is BenchSummary(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @bench.Timestamp with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/bench", "Timestamp", []),
    box=x => Timestamp(x),
    unbox=x => {
      guard x is Timestamp(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @bigint.BigInt with wrapper() {
  Wrapper(TypeId("moonbitlang/core/bigint", "BigInt", []), box=x => BigInt(x), unbox=x => {
    guard x is BigInt(x)
    x
  })
}

///|
pub impl TypeInfo for @buffer.Buffer with wrapper() {
  Wrapper(TypeId("moonbitlang/core/buffer", "Buffer", []), box=x => Buffer(x), unbox=x => {
    guard x is Buffer(x)
    x
  })
}

///|
pub impl TypeInfo for @coverage.CoverageCounter with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/coverage", "CoverageCounter", []),
    box=x => CoverageCounter(x),
    unbox=x => {
      guard x is CoverageCounter(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @ascii.Malformed with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/encoding/ascii", "Malformed", []),
    box=x => AsciiMalformed(x),
    unbox=x => {
      guard x is AsciiMalformed(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @base64.Malformed with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/encoding/base64", "Malformed", []),
    box=x => Base64Malformed(x),
    unbox=x => {
      guard x is Base64Malformed(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @utf16.Endian with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/encoding/utf16", "Endian", []),
    box=x => Utf16Endian(x),
    unbox=x => {
      guard x is Utf16Endian(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @utf16.Malformed with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/encoding/utf16", "Malformed", []),
    box=x => Utf16Malformed(x),
    unbox=x => {
      guard x is Utf16Malformed(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @utf8.Malformed with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/encoding/utf8", "Malformed", []),
    box=x => Utf8Malformed(x),
    unbox=x => {
      guard x is Utf8Malformed(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @json.JsonDecodeError with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/json", "JsonDecodeError", []),
    box=x => JsonDecodeError(x),
    unbox=x => {
      guard x is JsonDecodeError(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @json.JsonPath with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/json", "JsonPath", []),
    box=x => JsonPath(x),
    unbox=x => {
      guard x is JsonPath(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @json.ParseError with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/json", "ParseError", []),
    box=x => JsonParseError(x),
    unbox=x => {
      guard x is JsonParseError(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @json.Position with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/json", "Position", []),
    box=x => JsonPosition(x),
    unbox=x => {
      guard x is JsonPosition(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @json.Replacer with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/json", "Replacer", []),
    box=x => JsonReplacer(x),
    unbox=x => {
      guard x is JsonReplacer(x)
      x
    },
  )
}

///|
pub impl TypeInfo for Json with wrapper() {
  Wrapper(TypeId("moonbitlang/core/json", "Json", []), box=x => JsonValue(x), unbox=x => {
    guard x is JsonValue(x)
    x
  })
}

///|
pub impl[T : TypeInfo] TypeInfo for @list.List[T] with wrapper() {
  let t : Wrapper[T] = TypeInfo::wrapper()
  Wrapper(
    TypeId("moonbitlang/core/list", "List", [t.id]),
    box=xs => List(xs.to_array().map(x => t.box(x))),
    unbox=box => {
      guard box is List(arr)
      @list.from_array(arr.map(x => t.unbox(x)))
    },
  )
}

///|
pub impl[T : TypeInfo] TypeInfo for @deque.Deque[T] with wrapper() {
  let t : Wrapper[T] = TypeInfo::wrapper()
  Wrapper(
    TypeId("moonbitlang/core/deque", "Deque", [t.id]),
    box=xs => Deque(xs.to_array().map(x => t.box(x))),
    unbox=box => {
      guard box is Deque(arr)
      @deque.from_array(arr.map(x => t.unbox(x)))
    },
  )
}

///|
pub impl[T : TypeInfo] TypeInfo for @queue.Queue[T] with wrapper() {
  let t : Wrapper[T] = TypeInfo::wrapper()
  Wrapper(
    TypeId("moonbitlang/core/queue", "Queue", [t.id]),
    box=xs => Queue(xs.iter().map(x => t.box(x)).collect()),
    unbox=box => {
      guard box is Queue(arr)
      @queue.from_array(arr.map(x => t.unbox(x)))
    },
  )
}

///|
pub impl[K : TypeInfo + Hash + Eq, V : TypeInfo] TypeInfo for @hashmap.HashMap[
  K,
  V,
] with wrapper() {
  let k : Wrapper[K] = TypeInfo::wrapper()
  let v : Wrapper[V] = TypeInfo::wrapper()
  Wrapper(
    TypeId("moonbitlang/core/hashmap", "HashMap", [k.id, v.id]),
    box=xs => HashMap(xs.to_array().map(p => (k.box(p.0), v.box(p.1)))),
    unbox=box => {
      guard box is HashMap(arr)
      @hashmap.from_array(arr.map(p => (k.unbox(p.0), v.unbox(p.1))))
    },
  )
}

///|
pub impl[K : TypeInfo + Hash + Eq] TypeInfo for @hashset.HashSet[K] with wrapper() {
  let k : Wrapper[K] = TypeInfo::wrapper()
  Wrapper(
    TypeId("moonbitlang/core/hashset", "HashSet", [k.id]),
    box=xs => HashSet(xs.to_array().map(x => k.box(x))),
    unbox=box => {
      guard box is HashSet(arr)
      @hashset.from_array(arr.map(x => k.unbox(x)))
    },
  )
}

///|
pub impl[K : TypeInfo + Hash + Eq] TypeInfo for @set.Set[K] with wrapper() {
  let k : Wrapper[K] = TypeInfo::wrapper()
  Wrapper(
    TypeId("moonbitlang/core/set", "Set", [k.id]),
    box=xs => Set(xs.to_array().map(x => k.box(x))),
    unbox=box => {
      guard box is Set(arr)
      @set.from_array(arr.map(x => k.unbox(x)))
    },
  )
}

///|
pub impl[K : TypeInfo + Compare, V : TypeInfo] TypeInfo for @sorted_map.SortedMap[
  K,
  V,
] with wrapper() {
  let k : Wrapper[K] = TypeInfo::wrapper()
  let v : Wrapper[V] = TypeInfo::wrapper()
  Wrapper(
    TypeId("moonbitlang/core/sorted_map", "SortedMap", [k.id, v.id]),
    box=xs => SortedMap(xs.to_array().map(p => (k.box(p.0), v.box(p.1)))),
    unbox=box => {
      guard box is SortedMap(arr)
      @sorted_map.from_array(arr.map(p => (k.unbox(p.0), v.unbox(p.1))))
    },
  )
}

///|
pub impl[T : TypeInfo + Compare] TypeInfo for @sorted_set.SortedSet[T] with wrapper() {
  let t : Wrapper[T] = TypeInfo::wrapper()
  Wrapper(
    TypeId("moonbitlang/core/sorted_set", "SortedSet", [t.id]),
    box=xs => SortedSet(xs.to_array().map(x => t.box(x))),
    unbox=box => {
      guard box is SortedSet(arr)
      @sorted_set.from_array(arr.map(x => t.unbox(x)))
    },
  )
}

///|
pub impl[T : TypeInfo + Compare] TypeInfo for @priority_queue.PriorityQueue[T] with wrapper() {
  let t : Wrapper[T] = TypeInfo::wrapper()
  Wrapper(
    TypeId("moonbitlang/core/priority_queue", "PriorityQueue", [t.id]),
    box=xs => PriorityQueue(xs.to_array().map(x => t.box(x))),
    unbox=box => {
      guard box is PriorityQueue(arr)
      @priority_queue.from_array(arr.map(x => t.unbox(x)))
    },
  )
}

///|
pub impl[K : TypeInfo + Hash + Eq, V : TypeInfo] TypeInfo for @immut_hashmap.HashMap[
  K,
  V,
] with wrapper() {
  let k : Wrapper[K] = TypeInfo::wrapper()
  let v : Wrapper[V] = TypeInfo::wrapper()
  Wrapper(
    TypeId("moonbitlang/core/immut/hashmap", "HashMap", [k.id, v.id]),
    box=xs => ImmutHashMap(xs.to_array().map(p => (k.box(p.0), v.box(p.1)))),
    unbox=box => {
      guard box is ImmutHashMap(arr)
      @immut_hashmap.from_array(arr.map(p => (k.unbox(p.0), v.unbox(p.1))))
    },
  )
}

///|
pub impl[K : TypeInfo + Hash + Eq] TypeInfo for @immut_hashset.HashSet[K] with wrapper() {
  let k : Wrapper[K] = TypeInfo::wrapper()
  Wrapper(
    TypeId("moonbitlang/core/immut/hashset", "HashSet", [k.id]),
    box=xs => ImmutHashSet(xs.iter().map(x => k.box(x)).collect()),
    unbox=box => {
      guard box is ImmutHashSet(arr)
      @immut_hashset.from_array(arr.map(x => k.unbox(x)))
    },
  )
}

///|
pub impl[T : TypeInfo + Compare] TypeInfo for @immut_priority_queue.PriorityQueue[
  T,
] with wrapper() {
  let t : Wrapper[T] = TypeInfo::wrapper()
  Wrapper(
    TypeId("moonbitlang/core/immut/priority_queue", "PriorityQueue", [t.id]),
    box=xs => ImmutPriorityQueue(xs.to_array().map(x => t.box(x))),
    unbox=box => {
      guard box is ImmutPriorityQueue(arr)
      @immut_priority_queue.from_array(arr.map(x => t.unbox(x)))
    },
  )
}

///|
pub impl[T : TypeInfo + Compare] TypeInfo for @immut_sorted_set.SortedSet[T] with wrapper() {
  let t : Wrapper[T] = TypeInfo::wrapper()
  Wrapper(
    TypeId("moonbitlang/core/immut/sorted_set", "SortedSet", [t.id]),
    box=xs => ImmutSortedSet(xs.to_array().map(x => t.box(x))),
    unbox=box => {
      guard box is ImmutSortedSet(arr)
      @immut_sorted_set.from_array(arr.map(x => t.unbox(x)))
    },
  )
}

///|
pub impl TypeInfo for @splitmix.RandomState with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/quickcheck/splitmix", "RandomState", []),
    box=x => RandomState(x),
    unbox=x => {
      guard x is RandomState(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @random.Rand with wrapper() {
  Wrapper(TypeId("moonbitlang/core/random", "Rand", []), box=x => Rand(x), unbox=x => {
    guard x is Rand(x)
    x
  })
}

///|
pub impl[T : TypeInfo] TypeInfo for @cmp.Reverse[T] with wrapper() {
  let t : Wrapper[T] = TypeInfo::wrapper()
  Wrapper(
    TypeId("moonbitlang/core/cmp", "Reverse", [t.id]),
    box=x => {
      let @cmp.Reverse(v) = x
      Reverse(t.box(v))
    },
    unbox=x => {
      guard x is Reverse(v)
      @cmp.Reverse(t.unbox(v))
    },
  )
}

///|
pub impl[T : TypeInfo] TypeInfo for @ref.Ref[T] with wrapper() {
  let t : Wrapper[T] = TypeInfo::wrapper()
  Wrapper(
    TypeId("moonbitlang/core/ref", "Ref", [t.id]),
    box=x => Ref(t.box(x.val)),
    unbox=x => {
      guard x is Ref(v)
      @ref.new(t.unbox(v))
    },
  )
}

///|
pub impl TypeInfo for @string.MatchResult with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/string", "MatchResult", []),
    box=x => StringMatchResult(x),
    unbox=x => {
      guard x is StringMatchResult(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @string.Regex with wrapper() {
  Wrapper(
    TypeId("moonbitlang/core/string", "Regex", []),
    box=x => StringRegex(x),
    unbox=x => {
      guard x is StringRegex(x)
      x
    },
  )
}

///|
pub impl TypeInfo for @test.Test with wrapper() {
  Wrapper(TypeId("moonbitlang/core/test", "Test", []), box=x => Test(x), unbox=x => {
    guard x is Test(x)
    x
  })
}
