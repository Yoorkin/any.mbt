///|
extenum Payload += {
  Array(Array[Any])
  ImmutSortedMap(Array[(Any, Any)])
  Int(Int)
  Int16(Int16)
  Int64(Int64)
  Bool(Bool)
  UInt16(UInt16)
  UInt(UInt)
  UInt64(UInt64)
  Double(Double)
  Float(Float)
  String(String)
  StringView(StringView)
  Bytes(Bytes)
  BytesView(BytesView)
  ArgGroup(@argparse.ArgGroup)
  Command(@argparse.Command)
  FlagAction(@argparse.FlagAction)
  FlagArg(@argparse.FlagArg)
  Matches(@argparse.Matches)
  OptionAction(@argparse.OptionAction)
  OptionArg(@argparse.OptionArg)
  PositionArg(@argparse.PositionArg)
  ValueRange(@argparse.ValueRange)
  ValueSource(@argparse.ValueSource)
  Bench(@bench.Bench)
  BenchSummary(@bench.Summary)
  Timestamp(@bench.Timestamp)
  BigInt(@bigint.BigInt)
  Buffer(@buffer.Buffer)
  AsciiMalformed(@ascii.Malformed)
  Base64Malformed(@base64.Malformed)
  Utf16Endian(@utf16.Endian)
  Utf16Malformed(@utf16.Malformed)
  Utf8Malformed(@utf8.Malformed)
  JsonDecodeError(@json.JsonDecodeError)
  JsonPath(@json.JsonPath)
  JsonParseError(@json.ParseError)
  JsonPosition(@json.Position)
  JsonReplacer(@json.Replacer)
  JsonValue(Json)
  List(Array[Any])
  Deque(Array[Any])
  Queue(Array[Any])
  HashMap(Array[(Any, Any)])
  HashSet(Array[Any])
  Set(Array[Any])
  SortedMap(Array[(Any, Any)])
  SortedSet(Array[Any])
  PriorityQueue(Array[Any])
  ImmutHashMap(Array[(Any, Any)])
  ImmutHashSet(Array[Any])
  ImmutPriorityQueue(Array[Any])
  ImmutSortedSet(Array[Any])
  ImmutVector(Array[Any])
  RandomState(@splitmix.RandomState)
  Rand(@random.Rand)
  Reverse(Any)
  Ref(Any)
  StringMatchResult(@string.MatchResult)
  StringRegex(@string.Regex)
  Test(@test.Test)
}

///|
pub impl Anyable for Int16 with fn iso() {
  {
    id: TypeId("", "Int16", []),
    box: x => Int16(x),
    unbox: x => {
      guard x is Int16(x)
      x
    },
  }
}

///|
pub impl Anyable for Int64 with fn iso() {
  {
    id: TypeId("", "Int64", []),
    box: x => Int64(x),
    unbox: x => {
      guard x is Int64(x)
      x
    },
  }
}

///|
pub impl Anyable for UInt16 with fn iso() {
  {
    id: TypeId("", "UInt16", []),
    box: x => UInt16(x),
    unbox: x => {
      guard x is UInt16(x)
      x
    },
  }
}

///|
pub impl Anyable for UInt with fn iso() {
  {
    id: TypeId("", "UInt", []),
    box: x => UInt(x),
    unbox: x => {
      guard x is UInt(x)
      x
    },
  }
}

///|
pub impl Anyable for UInt64 with fn iso() {
  {
    id: TypeId("", "UInt64", []),
    box: x => UInt64(x),
    unbox: x => {
      guard x is UInt64(x)
      x
    },
  }
}

///|
pub impl Anyable for Double with fn iso() {
  {
    id: TypeId("", "Double", []),
    box: x => Double(x),
    unbox: x => {
      guard x is Double(x)
      x
    },
  }
}

///|
pub impl Anyable for Float with fn iso() {
  {
    id: TypeId("", "Float", []),
    box: x => Float(x),
    unbox: x => {
      guard x is Float(x)
      x
    },
  }
}

///|
pub impl Anyable for String with fn iso() {
  {
    id: TypeId("moonbitlang/core/string", "String", []),
    box: x => String(x),
    unbox: x => {
      guard x is String(x)
      x
    },
  }
}

///|
pub impl Anyable for StringView with fn iso() {
  {
    id: TypeId("moonbitlang/core/string", "StringView", []),
    box: x => StringView(x),
    unbox: x => {
      guard x is StringView(x)
      x
    },
  }
}

///|
pub impl Anyable for Bytes with fn iso() {
  {
    id: TypeId("moonbitlang/core/bytes", "Bytes", []),
    box: x => Bytes(x),
    unbox: x => {
      guard x is Bytes(x)
      x
    },
  }
}

///|
pub impl Anyable for BytesView with fn iso() {
  {
    id: TypeId("moonbitlang/core/bytes", "BytesView", []),
    box: x => BytesView(x),
    unbox: x => {
      guard x is BytesView(x)
      x
    },
  }
}

///|
pub impl Anyable for @argparse.ArgGroup with fn iso() {
  {
    id: TypeId("moonbitlang/core/argparse", "ArgGroup", []),
    box: x => ArgGroup(x),
    unbox: x => {
      guard x is ArgGroup(x)
      x
    },
  }
}

///|
pub impl Anyable for @argparse.Command with fn iso() {
  {
    id: TypeId("moonbitlang/core/argparse", "Command", []),
    box: x => Command(x),
    unbox: x => {
      guard x is Command(x)
      x
    },
  }
}

///|
pub impl Anyable for @argparse.FlagAction with fn iso() {
  {
    id: TypeId("moonbitlang/core/argparse", "FlagAction", []),
    box: x => FlagAction(x),
    unbox: x => {
      guard x is FlagAction(x)
      x
    },
  }
}

///|
pub impl Anyable for @argparse.FlagArg with fn iso() {
  {
    id: TypeId("moonbitlang/core/argparse", "FlagArg", []),
    box: x => FlagArg(x),
    unbox: x => {
      guard x is FlagArg(x)
      x
    },
  }
}

///|
pub impl Anyable for @argparse.Matches with fn iso() {
  {
    id: TypeId("moonbitlang/core/argparse", "Matches", []),
    box: x => Matches(x),
    unbox: x => {
      guard x is Matches(x)
      x
    },
  }
}

///|
pub impl Anyable for @argparse.OptionAction with fn iso() {
  {
    id: TypeId("moonbitlang/core/argparse", "OptionAction", []),
    box: x => OptionAction(x),
    unbox: x => {
      guard x is OptionAction(x)
      x
    },
  }
}

///|
pub impl Anyable for @argparse.OptionArg with fn iso() {
  {
    id: TypeId("moonbitlang/core/argparse", "OptionArg", []),
    box: x => OptionArg(x),
    unbox: x => {
      guard x is OptionArg(x)
      x
    },
  }
}

///|
pub impl Anyable for @argparse.PositionArg with fn iso() {
  {
    id: TypeId("moonbitlang/core/argparse", "PositionArg", []),
    box: x => PositionArg(x),
    unbox: x => {
      guard x is PositionArg(x)
      x
    },
  }
}

///|
pub impl Anyable for @argparse.ValueRange with fn iso() {
  {
    id: TypeId("moonbitlang/core/argparse", "ValueRange", []),
    box: x => ValueRange(x),
    unbox: x => {
      guard x is ValueRange(x)
      x
    },
  }
}

///|
pub impl Anyable for @argparse.ValueSource with fn iso() {
  {
    id: TypeId("moonbitlang/core/argparse", "ValueSource", []),
    box: x => ValueSource(x),
    unbox: x => {
      guard x is ValueSource(x)
      x
    },
  }
}

///|
pub impl Anyable for @bench.Bench with fn iso() {
  {
    id: TypeId("moonbitlang/core/bench", "Bench", []),
    box: x => Bench(x),
    unbox: x => {
      guard x is Bench(x)
      x
    },
  }
}

///|
pub impl Anyable for @bench.Summary with fn iso() {
  {
    id: TypeId("moonbitlang/core/bench", "Summary", []),
    box: x => BenchSummary(x),
    unbox: x => {
      guard x is BenchSummary(x)
      x
    },
  }
}

///|
pub impl Anyable for @bench.Timestamp with fn iso() {
  {
    id: TypeId("moonbitlang/core/bench", "Timestamp", []),
    box: x => Timestamp(x),
    unbox: x => {
      guard x is Timestamp(x)
      x
    },
  }
}

///|
pub impl Anyable for @bigint.BigInt with fn iso() {
  {
    id: TypeId("moonbitlang/core/bigint", "BigInt", []),
    box: x => BigInt(x),
    unbox: x => {
      guard x is BigInt(x)
      x
    },
  }
}

///|
pub impl Anyable for @buffer.Buffer with fn iso() {
  {
    id: TypeId("moonbitlang/core/buffer", "Buffer", []),
    box: x => Buffer(x),
    unbox: x => {
      guard x is Buffer(x)
      x
    },
  }
}

///|
pub impl Anyable for @ascii.Malformed with fn iso() {
  {
    id: TypeId("moonbitlang/core/encoding/ascii", "Malformed", []),
    box: x => AsciiMalformed(x),
    unbox: x => {
      guard x is AsciiMalformed(x)
      x
    },
  }
}

///|
pub impl Anyable for @base64.Malformed with fn iso() {
  {
    id: TypeId("moonbitlang/core/encoding/base64", "Malformed", []),
    box: x => Base64Malformed(x),
    unbox: x => {
      guard x is Base64Malformed(x)
      x
    },
  }
}

///|
pub impl Anyable for @utf16.Endian with fn iso() {
  {
    id: TypeId("moonbitlang/core/encoding/utf16", "Endian", []),
    box: x => Utf16Endian(x),
    unbox: x => {
      guard x is Utf16Endian(x)
      x
    },
  }
}

///|
pub impl Anyable for @utf16.Malformed with fn iso() {
  {
    id: TypeId("moonbitlang/core/encoding/utf16", "Malformed", []),
    box: x => Utf16Malformed(x),
    unbox: x => {
      guard x is Utf16Malformed(x)
      x
    },
  }
}

///|
pub impl Anyable for @utf8.Malformed with fn iso() {
  {
    id: TypeId("moonbitlang/core/encoding/utf8", "Malformed", []),
    box: x => Utf8Malformed(x),
    unbox: x => {
      guard x is Utf8Malformed(x)
      x
    },
  }
}

///|
pub impl Anyable for @json.JsonDecodeError with fn iso() {
  {
    id: TypeId("moonbitlang/core/json", "JsonDecodeError", []),
    box: x => JsonDecodeError(x),
    unbox: x => {
      guard x is JsonDecodeError(x)
      x
    },
  }
}

///|
pub impl Anyable for @json.JsonPath with fn iso() {
  {
    id: TypeId("moonbitlang/core/json", "JsonPath", []),
    box: x => JsonPath(x),
    unbox: x => {
      guard x is JsonPath(x)
      x
    },
  }
}

///|
pub impl Anyable for @json.ParseError with fn iso() {
  {
    id: TypeId("moonbitlang/core/json", "ParseError", []),
    box: x => JsonParseError(x),
    unbox: x => {
      guard x is JsonParseError(x)
      x
    },
  }
}

///|
pub impl Anyable for @json.Position with fn iso() {
  {
    id: TypeId("moonbitlang/core/json", "Position", []),
    box: x => JsonPosition(x),
    unbox: x => {
      guard x is JsonPosition(x)
      x
    },
  }
}

///|
pub impl Anyable for @json.Replacer with fn iso() {
  {
    id: TypeId("moonbitlang/core/json", "Replacer", []),
    box: x => JsonReplacer(x),
    unbox: x => {
      guard x is JsonReplacer(x)
      x
    },
  }
}

///|
pub impl Anyable for Json with fn iso() {
  {
    id: TypeId("moonbitlang/core/json", "Json", []),
    box: x => JsonValue(x),
    unbox: x => {
      guard x is JsonValue(x)
      x
    },
  }
}

///|
pub impl[T : Anyable] Anyable for @list.List[T] with fn iso() {
  let t : Iso[T] = Anyable::iso()
  {
    id: TypeId("moonbitlang/core/list", "List", [t.id]),
    box: xs => List(xs.to_array().map(x => Any(x))),
    unbox: box => {
      guard box is List(arr)
      @list.from_array(arr.map(x => (x.unsafe_cast() : T)))
    },
  }
}

///|
pub impl[T : Anyable] Anyable for @deque.Deque[T] with fn iso() {
  let t : Iso[T] = Anyable::iso()
  {
    id: TypeId("moonbitlang/core/deque", "Deque", [t.id]),
    box: xs => Deque(xs.to_array().map(x => Any(x))),
    unbox: box => {
      guard box is Deque(arr)
      @deque.from_array(arr.map(x => (x.unsafe_cast() : T)))
    },
  }
}

///|
pub impl[T : Anyable] Anyable for @queue.Queue[T] with fn iso() {
  let t : Iso[T] = Anyable::iso()
  {
    id: TypeId("moonbitlang/core/queue", "Queue", [t.id]),
    box: xs => Queue(xs.iter().map(x => Any(x)).collect()),
    unbox: box => {
      guard box is Queue(arr)
      @queue.from_array(arr.map(x => (x.unsafe_cast() : T)))
    },
  }
}

///|
pub impl[K : Anyable + Hash + Eq, V : Anyable] Anyable for @hashmap.HashMap[
  K,
  V,
] with fn iso() {
  let k : Iso[K] = Anyable::iso()
  let v : Iso[V] = Anyable::iso()
  {
    id: TypeId("moonbitlang/core/hashmap", "HashMap", [k.id, v.id]),
    box: xs => HashMap(xs.to_array().map(p => (Any(p.0), Any(p.1)))),
    unbox: box => {
      guard box is HashMap(arr)
      @hashmap.from_array(
        arr.map(p => ((p.0.unsafe_cast() : K), (p.1.unsafe_cast() : V))),
      )
    },
  }
}

///|
pub impl[K : Anyable + Hash + Eq] Anyable for @hashset.HashSet[K] with fn iso() {
  let k : Iso[K] = Anyable::iso()
  {
    id: TypeId("moonbitlang/core/hashset", "HashSet", [k.id]),
    box: xs => HashSet(xs.to_array().map(x => Any(x))),
    unbox: box => {
      guard box is HashSet(arr)
      @hashset.from_array(arr.map(x => (x.unsafe_cast() : K)))
    },
  }
}

///|
pub impl[K : Anyable + Hash + Eq] Anyable for @set.Set[K] with fn iso() {
  let k : Iso[K] = Anyable::iso()
  {
    id: TypeId("moonbitlang/core/set", "Set", [k.id]),
    box: xs => Set(xs.to_array().map(x => Any(x))),
    unbox: box => {
      guard box is Set(arr)
      @set.from_array(arr.map(x => (x.unsafe_cast() : K)))
    },
  }
}

///|
pub impl[K : Anyable + Compare, V : Anyable] Anyable for @sorted_map.SortedMap[
  K,
  V,
] with fn iso() {
  let k : Iso[K] = Anyable::iso()
  let v : Iso[V] = Anyable::iso()
  {
    id: TypeId("moonbitlang/core/sorted_map", "SortedMap", [k.id, v.id]),
    box: xs => SortedMap(xs.to_array().map(p => (Any(p.0), Any(p.1)))),
    unbox: box => {
      guard box is SortedMap(arr)
      @sorted_map.from_array(
        arr.map(p => ((p.0.unsafe_cast() : K), (p.1.unsafe_cast() : V))),
      )
    },
  }
}

///|
pub impl[T : Anyable + Compare] Anyable for @sorted_set.SortedSet[T] with fn iso() {
  let t : Iso[T] = Anyable::iso()
  {
    id: TypeId("moonbitlang/core/sorted_set", "SortedSet", [t.id]),
    box: xs => SortedSet(xs.to_array().map(x => Any(x))),
    unbox: box => {
      guard box is SortedSet(arr)
      @sorted_set.from_array(arr.map(x => (x.unsafe_cast() : T)))
    },
  }
}

///|
pub impl[T : Anyable + Compare] Anyable for @priority_queue.PriorityQueue[T] with fn iso() {
  let t : Iso[T] = Anyable::iso()
  {
    id: TypeId("moonbitlang/core/priority_queue", "PriorityQueue", [t.id]),
    box: xs => PriorityQueue(xs.to_array().map(x => Any(x))),
    unbox: box => {
      guard box is PriorityQueue(arr)
      @priority_queue.from_array(arr.map(x => (x.unsafe_cast() : T)))
    },
  }
}

///|
pub impl[K : Anyable + Hash + Eq, V : Anyable] Anyable for @immut_hashmap.HashMap[
  K,
  V,
] with fn iso() {
  let k : Iso[K] = Anyable::iso()
  let v : Iso[V] = Anyable::iso()
  {
    id: TypeId("moonbitlang/core/immut/hashmap", "HashMap", [k.id, v.id]),
    box: xs => ImmutHashMap(xs.to_array().map(p => (Any(p.0), Any(p.1)))),
    unbox: box => {
      guard box is ImmutHashMap(arr)
      @immut_hashmap.from_array(
        arr.map(p => ((p.0.unsafe_cast() : K), (p.1.unsafe_cast() : V))),
      )
    },
  }
}

///|
pub impl[K : Anyable + Hash + Eq] Anyable for @immut_hashset.HashSet[K] with fn iso() {
  let k : Iso[K] = Anyable::iso()
  {
    id: TypeId("moonbitlang/core/immut/hashset", "HashSet", [k.id]),
    box: xs => ImmutHashSet(xs.iter().map(x => Any(x)).collect()),
    unbox: box => {
      guard box is ImmutHashSet(arr)
      @immut_hashset.from_array(arr.map(x => (x.unsafe_cast() : K)))
    },
  }
}

///|
pub impl[T : Anyable + Compare] Anyable for @immut_priority_queue.PriorityQueue[
  T,
] with fn iso() {
  let t : Iso[T] = Anyable::iso()
  {
    id: TypeId("moonbitlang/core/immut/priority_queue", "PriorityQueue", [t.id]),
    box: xs => ImmutPriorityQueue(xs.to_array().map(x => Any(x))),
    unbox: box => {
      guard box is ImmutPriorityQueue(arr)
      @immut_priority_queue.from_array(arr.map(x => (x.unsafe_cast() : T)))
    },
  }
}

///|
pub impl[T : Anyable + Compare] Anyable for @immut_sorted_set.SortedSet[T] with fn iso() {
  let t : Iso[T] = Anyable::iso()
  {
    id: TypeId("moonbitlang/core/immut/sorted_set", "SortedSet", [t.id]),
    box: xs => ImmutSortedSet(xs.to_array().map(x => Any(x))),
    unbox: box => {
      guard box is ImmutSortedSet(arr)
      @immut_sorted_set.from_array(arr.map(x => (x.unsafe_cast() : T)))
    },
  }
}

///|
pub impl[T : Anyable] Anyable for @immut_vector.Vector[T] with fn iso() {
  let t : Iso[T] = Anyable::iso()
  {
    id: TypeId("moonbitlang/core/immut/vector", "Vector", [t.id]),
    box: xs => ImmutVector(xs.to_array().map(x => Any(x))),
    unbox: box => {
      guard box is ImmutVector(arr)
      @immut_vector.from_array(arr.map(x => (x.unsafe_cast() : T)))
    },
  }
}

///|
pub impl Anyable for @splitmix.RandomState with fn iso() {
  {
    id: TypeId("moonbitlang/core/quickcheck/splitmix", "RandomState", []),
    box: x => RandomState(x),
    unbox: x => {
      guard x is RandomState(x)
      x
    },
  }
}

///|
pub impl Anyable for @random.Rand with fn iso() {
  {
    id: TypeId("moonbitlang/core/random", "Rand", []),
    box: x => Rand(x),
    unbox: x => {
      guard x is Rand(x)
      x
    },
  }
}

///|
pub impl[T : Anyable] Anyable for @cmp.Reverse[T] with fn iso() {
  let t : Iso[T] = Anyable::iso()
  {
    id: TypeId("moonbitlang/core/cmp", "Reverse", [t.id]),
    box: x => {
      let @cmp.Reverse(v) = x
      Reverse(Any(v))
    },
    unbox: x => {
      guard x is Reverse(v)
      @cmp.Reverse((v.unsafe_cast() : T))
    },
  }
}

///|
pub impl[T : Anyable] Anyable for @ref.Ref[T] with fn iso() {
  let t : Iso[T] = Anyable::iso()
  {
    id: TypeId("moonbitlang/core/ref", "Ref", [t.id]),
    box: x => Ref(Any(x.val)),
    unbox: x => {
      guard x is Ref(v)
      @ref.new((v.unsafe_cast() : T))
    },
  }
}

///|
pub impl Anyable for @string.MatchResult with fn iso() {
  {
    id: TypeId("moonbitlang/core/string", "MatchResult", []),
    box: x => StringMatchResult(x),
    unbox: x => {
      guard x is StringMatchResult(x)
      x
    },
  }
}

///|
pub impl Anyable for @string.Regex with fn iso() {
  {
    id: TypeId("moonbitlang/core/string", "Regex", []),
    box: x => StringRegex(x),
    unbox: x => {
      guard x is StringRegex(x)
      x
    },
  }
}

///|
pub impl Anyable for @test.Test with fn iso() {
  {
    id: TypeId("moonbitlang/core/test", "Test", []),
    box: x => Test(x),
    unbox: x => {
      guard x is Test(x)
      x
    },
  }
}

///|
pub impl[T : Anyable] Anyable for Array[T] with fn iso() {
  let t : Iso[T] = Anyable::iso()
  {
    id: TypeId("", "Array", [t.id]),
    box: xs => Array(xs.map(x => Any(x))),
    unbox: xs => {
      guard xs is Array(arr)
      arr.map(x => (x.unsafe_cast() : T))
    },
  }
}

///|
pub impl[K : Anyable + Compare, V : Anyable] Anyable for @immut_sorted_map.SortedMap[
  K,
  V,
] with fn iso() {
  let k : Iso[K] = Anyable::iso()
  let v : Iso[V] = Anyable::iso()
  {
    id: TypeId("moonbitlang/core/immut/sorted_map", "SortedMap", [k.id, v.id]),
    box: xs => {
      ImmutSortedMap(xs.iter().map(p => (Any(p.0), Any(p.1))).collect())
    },
    unbox: box => {
      guard box is ImmutSortedMap(arr)
      arr.map(p => ((p.0.unsafe_cast() : K), (p.1.unsafe_cast() : V)))
      |> @immut_sorted_map.from_array
    },
  }
}

///|
pub impl Anyable for Int with fn iso() {
  {
    id: TypeId("", "Int", []),
    box: x => Int(x),
    unbox: x => {
      guard x is Int(x)
      x
    },
  }
}

///|
pub impl Anyable for Bool with fn iso() {
  {
    id: TypeId("", "Bool", []),
    box: x => Bool(x),
    unbox: x => {
      guard x is Bool(x)
      x
    },
  }
}
