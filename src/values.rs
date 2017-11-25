use std::ops::*;

#[derive(Debug, PartialEq, Clone, Copy)]
pub enum Value {
	I32(u32),
	I64(u64),
	F32(f32),
	F64(f64),
}

impl Value {
	pub fn from_i32(v: i32) -> Value {
		Value::I32(v as u32)
	}

	pub fn from_i64(v: i64) -> Value {
		Value::I64(v as u64)
	}
}

pub trait GenericIntOp<S=Self> {
	// IUnOp
	fn leading_zeros(self) -> Self;
	fn trailing_zeros(self) -> Self;
	fn count_ones(self) -> Self;

	// IBinOp
	fn add(self, rhs: Self) -> Self;
	fn sub(self, rhs: Self) -> Self;
	fn mul(self, rhs: Self) -> Self;
	fn divs(self, rhs: Self) -> Option<S>;
	fn divu(self, rhs: Self) -> Option<S>;
	fn rems(self, rhs: Self) -> Option<S>;
	fn remu(self, rhs: Self) -> Option<S>;
	fn and(self, rhs: Self) -> Self;
	fn or(self, rhs: Self) -> Self;
	fn xor(self, rhs: Self) -> Self;
	fn shl(self, rhs: Self) -> Self;
	fn shrs(self, rhs: Self) -> Self;
	fn shru(self, rhs: Self) -> Self;
	fn rotr(self, rhs: Self) -> Self;
	fn rotl(self, rhs: Self) -> Self;

	// ITestOp
	fn eqz(self) -> Self;

	// IRelOp
	fn eq(self, rhs: Self) -> Self;
	fn ne(self, rhs: Self) -> Self;
	fn lts(self, rhs: Self) -> Self;
	fn ltu(self, rhs: Self) -> Self;
	fn gts(self, rhs: Self) -> Self;
	fn gtu(self, rhs: Self) -> Self;
	fn les(self, rhs: Self) -> Self;
	fn leu(self, rhs: Self) -> Self;
	fn ges(self, rhs: Self) -> Self;
	fn geu(self, rhs: Self) -> Self;

	// Helpers
	fn bool_to_type(bool) -> Self;
}

macro_rules! impl_generic_op {
	($T:ty, $S:ty, $U:ty) => (
		impl GenericIntOp for $T {
			#[inline]
			fn leading_zeros(self) -> $T {
				<$T>::leading_zeros(self) as $T
			}

			#[inline]
			fn trailing_zeros(self) -> $T {
				<$T>::trailing_zeros(self) as $T
			}

			#[inline]
			fn count_ones(self) -> $T {
				<$T>::count_ones(self) as $T
			}

			#[inline]
			fn add(self, rhs: $T) -> $T {
				<$T>::wrapping_add(self, rhs)
			}

			#[inline]
			fn sub(self, rhs: $T) -> $T {
				<$T>::wrapping_sub(self, rhs)
			}

			#[inline]
			fn mul(self, rhs: $T) -> $T {
				<$T>::wrapping_mul(self, rhs)
			}

			#[inline]
			fn divs(self, rhs: $T) -> Option<$T> {
				let s_self = self as $S;
				let s_rhs = rhs as $S;
				match <$S>::checked_div(s_self, s_rhs) {
					Some(c) => Some(c as $T),
					None => None
				}
			}

			#[inline]
			fn divu(self, rhs: $T) -> Option<$T> {
				<$T>::checked_div(self, rhs)
			}

			#[inline]
			fn rems(self, rhs: $T) -> Option<$T> {
				let s_self = self as $S;
				let s_rhs = rhs as $S;
				match <$S>::checked_rem(s_self, s_rhs) {
					Some(c) => Some(c as $T),
					None => None
				}
			}

			#[inline]
			fn remu(self, rhs: $T) -> Option<$T> {
				<$T>::checked_rem(self, rhs)
			}

			#[inline]
			fn and(self, rhs: $T) -> $T {
				<$T>::bitand(self, rhs)
			}

			#[inline]
			fn or(self, rhs: $T) -> $T {
				<$T>::bitor(self, rhs)
			}

			#[inline]
			fn xor(self, rhs: $T) -> $T {
				<$T>::bitxor(self, rhs)
			}

			#[inline]
			fn shl(self, rhs: $T) -> $T {
				<$T>::wrapping_shl(self, rhs as u32)
			}

			#[inline]
			fn shrs(self, rhs: $T) -> $T {
				let s_self = self as $S;
				<$S>::wrapping_shr(s_self, rhs as u32) as $T
			}

			#[inline]
			fn shru(self, rhs: $T) -> $T {
				<$T>::wrapping_shr(self, rhs as u32)
			}

			#[inline]
			fn rotr(self, rhs: $T) -> $T {
				<$T>::rotate_right(self, rhs as u32)
			}

			#[inline]
			fn rotl(self, rhs: $T) -> $T {
				<$T>::rotate_right(self, rhs as u32)
			}

			#[inline]
			fn bool_to_type(b: bool) -> $T {
				if b {
					1
				} else {
					0
				}
			}

			#[inline]
			fn eqz(self) -> $T {
				Self::bool_to_type(self == 0)
			}

			#[inline]
			fn eq(self, rhs: $T) -> $T {
				Self::bool_to_type(self == rhs)
			}

			#[inline]
			fn ne(self, rhs: $T) -> $T {
				Self::bool_to_type(self != rhs)
			}

			#[inline]
			fn lts(self, rhs: $T) -> $T {
				Self::bool_to_type((self as $S) < (rhs as $S))
			}

			#[inline]
			fn ltu(self, rhs: $T) -> $T {
				Self::bool_to_type(self < rhs)
			}

			#[inline]
			fn gts(self, rhs: $T) -> $T {
				Self::bool_to_type((self as $S) > (rhs as $S))
			}

			#[inline]
			fn gtu(self, rhs: $T) -> $T {
				Self::bool_to_type(self > rhs)
			}

			#[inline]
			fn les(self, rhs: $T) -> $T {
				Self::bool_to_type((self as $S) <= (rhs as $S))
			}

			#[inline]
			fn leu(self, rhs: $T) -> $T {
				Self::bool_to_type(self <= rhs)
			}

			#[inline]
			fn ges(self, rhs: $T) -> $T {
				Self::bool_to_type((self as $S) >= (rhs as $S))
			}

			#[inline]
			fn geu(self, rhs: $T) -> $T {
				Self::bool_to_type((self as $S) >= (rhs as $S))
			}
		}
	)
}
impl_generic_op!(u32, i32, u32);
impl_generic_op!(u64, i64, u64);
