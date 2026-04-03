///|
struct Any {
  id : TypeId
  val : Error
} derive(Debug)

///|
pub fn[T : TypeInfo] Any::new(v : T) -> Any {
  let { id, box: (box : (T) -> _), .. } = TypeInfo::wrapper()
  { id, val: box(v) }
}

///|
pub fn[T : TypeInfo] any(v : T) -> Any {
  Any::new(v)
}

///|
pub fn Any::id(self : Self) -> TypeId {
  self.id
}

///|
pub(open) trait TypeInfo {
  wrapper() -> Wrapper[Self]
}

///|
pub struct TypeId {
  pkg : String
  ctor : String
  generics : Array[TypeId]

  fn new(pkg : String, ctor : String, generics : Array[TypeId]) -> TypeId
} derive(Debug, Eq, Compare)

///|
pub impl Show for TypeId with output(self, buf) {
  if self.pkg != "" {
    buf..write_char('@')..write_string(self.pkg).write_char('.')
  }
  buf.write_string(self.ctor)
  match self.generics {
    [] => ()
    [x] => {
      buf.write_char('[')
      x.output(buf)
      buf.write_char(']')
    }
    [x, .. xs] => {
      buf.write_char('[')
      x.output(buf)
      buf.write_char(',')
      for x in xs {
        x.output(buf)
        buf.write_char(',')
      }
      buf.write_char(']')
    }
  }
}

///|
pub fn TypeId::new(
  pkg : String,
  ctor : String,
  generics : Array[TypeId],
) -> TypeId {
  { pkg, ctor, generics }
}

///|
pub struct Wrapper[T] {
  id : TypeId
  priv box : (T) -> Error
  priv unbox : (Error) -> T raise

  fn[T] new(
    id : TypeId,
    box~ : (T) -> Error,
    unbox~ : (Error) -> T raise,
  ) -> Wrapper[T]
}

///|
pub fn[T] Wrapper::new(
  id : TypeId,
  box~ : (T) -> Error,
  unbox~ : (Error) -> T raise,
) -> Wrapper[T] {
  { id, box, unbox }
}

///|
pub fn[T] Wrapper::box(self : Self[T], x : T) -> Error {
  (self.box)(x)
}

///|
pub fn[T] Wrapper::unbox(self : Self[T], error : Error) -> T raise {
  (self.unbox)(error)
}

///|
#callsite(autofill(loc))
pub fn[T : TypeInfo] Any::dyn_cast(x : Any, loc~ : SourceLoc) -> T raise {
  let { id, unbox, .. } = T::wrapper()
  if x.id == id {
    unbox(x.val)
  } else {
    fail("failed to cast \{x.id} to \{id}", loc~)
  }
}

///|
pub fn[T : TypeInfo] Any::unsafe_cast(x : Any) -> T {
  let { unbox, .. } = T::wrapper()
  try! unbox(x.val)
}
