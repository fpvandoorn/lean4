class NatCast (R : Type u) where
  natCast : Nat → R

instance [NatCast R] : CoeTail Nat R where coe := NatCast.natCast
instance [NatCast R] : CoeHTCT Nat R where coe := NatCast.natCast

axiom Real : Type
notation "ℝ" => Real

instance (n : Nat) : OfNat ℝ n := sorry

variable (a : ℝ)

instance natCast : NatCast ℝ where natCast n := sorry
instance : HPow ℝ Nat ℝ := sorry

set_option pp.all true

#check a ^ 4 -- Nat instance

instance : HPow ℝ ℝ ℝ := sorry

#check a ^ 4 -- Nat instance
#check a ^ (4 : Nat) -- Nat instance
#check a ^ (4 : Real) -- Real instance
