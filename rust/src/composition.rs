// Datatype used to store permutation indices.
// Should be unsigned to prevent values less than 0,
// and so can be shifted right to divide.
// PermT's max value is the highest permutation degree supported.
pub type PermT = u32;
