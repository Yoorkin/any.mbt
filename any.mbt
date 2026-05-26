///|
struct Any {
  id : TypeId
  val : Payload
  debug : &Debug
}

///|
pub extenum Payload {}

///|
pub(open) trait Anyable: Debug {
  fn iso() -> Iso[Self]
}

///|
pub(all) struct Iso[T] {
  id : TypeId
  box : (T) -> Payload
  unbox : (Payload) -> T
}

///|
pub impl Debug for Any with fn to_repr(self) {
  self.debug.to_repr()
}

///|
pub fn[T : Anyable] Any::Any(v : T) -> Self {
  let { id, box, .. } : Iso[T] = Anyable::iso()
  { id, val: box(v), debug: v }
}

///|
pub fn Any::id(self : Self) -> TypeId {
  self.id
}

///|
pub struct TypeId {
  pkg : String
  ctor : String
  generics : Array[TypeId]
} derive(Debug, Eq, Compare)

///|
pub fn TypeId::TypeId(
  pkg : String,
  ctor : String,
  generics : Array[TypeId],
) -> TypeId {
  { pkg, ctor, generics }
}

///|
pub impl Show for TypeId with fn output(self, buf) {
  if self.pkg != "" {
    buf <+ "@\{self.pkg}."
  }
  buf <+ "\{self.ctor}"
  match self.generics {
    [] => ()
    [x] => buf <+ "[\{x}]"
    [x, .. xs] => {
      buf <+ "[\{x},"
      for x in xs {
        buf <+ "\{x},"
      }
      buf <+ "]"
    }
  }
}

///|
#callsite(autofill(loc))
pub fn[T : Anyable] Any::dyn_cast(x : Any, loc~ : SourceLoc) -> T raise {
  let { id, unbox, .. } : Iso[T] = Anyable::iso()
  if id == x.id {
    unbox(x.val)
  } else {
    fail("failed to cast \{x.id} to \{id}", loc~)
  }
}

///|
pub fn[T : Anyable] Any::unsafe_cast(x : Any) -> T {
  let { unbox, .. } : Iso[T] = Anyable::iso()
  unbox(x.val)
}
