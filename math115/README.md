# Math 115 - Discrete Mathematics

## Propositional Logic
A *tautology* is something that is always true.

Variations of p → q

English: If it rains, I'll bring an umbrella.

r → u

~u → ~r

u → r

~r → ~u

Which statements are EQUIVALENT:
1. p → q
2. q → p    the CONVERSE of p → q
3. ~p → ~q  the INVERSE of p → q
4. ~q → ~p  the CONTRAPOSITIVE of p → q

Ex: [Calculus] Theorem:

f differentiable → f continuous

*Proof* see Math 110A

So, by LOGIC, we *also* get

not continuous → not differentiable.

but

f differentiable → f continuous

does *not* follow directly from logic.

In fact, we can give a calculus COUNTEREXAMPLE.

*Theorem* [Writing p → q using only ∨, ~]

(p →) ↔ (~p ∨ 1)

*Proof:*
| p | q | p → q | ~p | ~p ∨ q |
| - | - | ----- | -- | ------ |
| 0 | 0 | 1 | 1 | 1 |
| 0 | 1 | 1 | 1 | 1 |
| 1 | 0 | 0 | 0 | 0 |
| 1 | 1 | 1 | 0 | 1 |

*Theorem* [Negation of p → q]

~(p → q) ↔ (p ∧ ~q)

*Proof:* Don't *need* whole truth table. Instead we will use earlier laws, and DEDUCTION.

```
~(p → q) ↔ ~(~p ∨ q)
               |        |
          earlier law   |- DeMorgan
                        |
           ~(~p) ∧ ~q ↔ p ∧ ~q
                Double Negative Law
```

Theorem: (p ↔ q) ↔ (p →) ∧ (q → p)

Proof: (exercise) truth tables

Now, some XOR laws.

Recall definition:

| p | q | p ⊕ q |
| - | - | ----- |
| 0 | 0 | 0 |
| 0 | 0 | 0 |
| 0 | 0 | 0 |
| 0 | 0 | 0 |

Theorem: p ⊕ p ↔ F

Proof:

| p | p ⊕ p |
| - | ----- |
| 0 | 0 |
| 1 | 0 |

One *can* write p ⊕ = 0

Theorem: [Used for encryption]

(K = key; m = message)

K ⊕ K ⊕ ↔ m

Proof:

| m | K | K ⊕ K | (K ⊕ K) ⊕ m |
| - | - | --------- | ------------------- |
| 0 | 0 | 0 | 0 |
| 0 | 1 | 0 | 0 |
| 1 | 0 | 0 | 1 |
| 1 | 1 | 0 | 1 |

Ex: Apply that law to illuminate so-called "ONE-TIME PAD" ENCRYPTION

Let's send the letter "A".

1. ASCII code for "A" is the number 65.
2. 65 is converted to BINARY: 0100 0001
3. Now, get your "pad" (your key). Let's say it is 0110 1110.
4. ENCRYPT the message with your key.
   m: 0100 0001
   K: 0110 1110
   K ⊕ m: 0010 1111
5. Send the encrypted message to your friend.
6. Your friend DECRYPTS the message.
   K ⊕ m: 0010 1111
   K: 01101110
   K ⊕ (K ⊕ m): 0100 0001
7. Your friend converts the binary message to ASCII: "A".

Theorem: [Negation of p ↔ q]

~(p ↔ q) ↔ p ⊕ q

Proof: Exercise

## Valid Rules of Inference

a.k.a. "Correct reasoning"

Ex: 

The premises:

p → q     "If it's raining, I'll bring my umbrella."

p         "You know, it is raining."

The conclusion:

∴ q       "Okay, I'll bring my umbrella."

How can we verify that a rule of inference is indeed valid?

You verify, usually using a truth table, that

(p → q) ∧ q is a tautology (is a theorem, is *true* for all values of p and q).

Exercise: Use truth tables to show that (p →) ∧ p → q

Ex:

I live in SF → I live in CA

I live in SF

∴ I live in CA

p → q

~q
∴ ~p

Valid.

Exercise: prove that (p ∧ q) ∧ ~q → ~p

~p → F

∴ p

Exercise: verify that (~p → F) → p

"Proof by contradiction"

Things to do:
- MINTERMS
- Valid RULES OF INFERENCE
- Some proofs of *unique* theorems.
- In particular: Proofs BY CONTRADICTION
- "Karnaugh Maps", next week
- Quantifiers: ∃x ∀x

## Minterms:

| Variables | How Many? |
| --------- | --------- |
| p | p, ~p | 2 |
| p, q, p ∧ q, ~p ∧ q, p ∧ ~q, ~p ∧ ~q | 4 |
| p, q, r | 8 |

The minterms are *minimal* in this sense:

Truth table (erased)

Ex: Write p ⊕ q as a "sum" (DISJUNCTION) of minterms.

| pq | p ⊕ q | minterm |
| -- | ----- | ------- |
| 00 | 0 | |
| 01 | 1 | ~p ∧ q |
| 10 | 1 | p ∧ ~q |
| 11 | 0 | |
| | ~p ∧ q ∨ p ∧ ~q ← "sum" |

## Quantifiers:

Notation:

"There exists an x (in our universe) such that …"

∃x…

∃x (x < 5)

∃x (x<sup>2</sup> = 25)

∃x (x<sup>2</sup> = 2)

"For all x (in our universe) …"

∀x…

Examples:

∀x (x<sup>2</sup> &gte; x)

∀x (x &gte; 1 → x<sup>2</sup> &gte; x)

∀x∃y (y > x)

## *Negation* of Quantifiers.

Rule: ∀x &phi;(x) ↔ ∃x ~&phi;(x)

Ex: ~∀x(x &gte; 0) ↔ ∃x (

Rule: ~∃&phi;(x) ↔ ∀x ~&phi;(x)

Ex: "There is a biggest number (in our universe)."

∃x ∀y (y ≤ x)

The negation "There is no biggest number."

~∃x ∀y (y ≤ x) ↔ ∀x ~∀y (y ≤ x) ↔ ∀x ∃y (y > x)

Define: a/b "a divides b" or better "b is a multiple of a"

Universe: {0, 1, 2, …}

Definition: a/b ↔ ∃K (b = Ka)

| statement | T/F |
| --------- | --- |
| 5/20 | T (use K = 4) |
| 5/5 | T |
| 5/0 | T (use K = 0) |
| 5/1 | F |
| 1/5 | T (use K = 5) |
| 0/0 | T (use K = 0) |

Ex: Use logic to simplify

a ∤ b ↔ ~(a/b) ↔ ~∃K (b = Ka) ↔ ∀K (b ≠ Ka)

## Valid Rules of Inference, continued

Some valid rules:

p → q

p

∴ q

p → q

~q

∴ ~p

p → q

~p → q

∴ q

Proof by cases:

a ∨ b

a → q

b → q

∴ q

Proof by contradiction

~p → F (F = "contradiction")

∴ p

---

Prove that: "given 2 numbers, one of them must be less than equal to the *average*."

Theorem: a ≤ (a+b/2) ∨ b ≤ (a+b/2)

Proof structure:

~p → F

∴ p

Proof:

p: a ≤ (a+b/2) ∨ b ≤ (a+b/2)

p: ~(a ≤ (a+b/2) ∨ b ≤ (a+b/2)) ↔ (a > (a+b/2) ∧ b > (a+b/2)) (via DeMorgan)
	→ (a+b) > (a+b/2) + (a+b/2)) (algebra)
	→ (a+b > a+b) (algebra)
	→ F

---

Theorem: "If a number n can be factored, then one of the factors must be ≤ …"

More "logical" theorem: n = ab → a≤√n ∨ b≤√n

Proof: Exercise (very similar to the last example).

---

Theorem: "The square of an even number is even."

Better theorem: 2/n → 2/n<sup>2</sup>

Proof:

2/n, so ∃K (n = 2K)

so n<sup>2</sup> = (2K)<sup>2</sup> = 4K^2 = 2(2K)^2

so 2/n^2

---

Theorem: If n is *odd*, then n^2 is odd.

Better theorem: n = 2K + 1 → n^2 is odd

Proof: Exercise.

Basic idea; (2K + 1)^2 = 4K^2 +4K + 1 = 2(2K^2 + 2K) + 1 is odd

---

Theorem: If n^2 is even, then n is even.

Better theorem: 2/n^2 → 2/n

Proof (first attempt):

2/n^2

n^2 = 2K, for some K

n = √2K (stuck!!)

Proof (2nd attempt):

n^2 even → n even

n not even → n^2 not even (contrapositive)

n odd → n^2 odd (True. See last theorem.)

Remember: contrapositive (p → q) ↔ (~q → ~p)

---

Theorem: n^2 off → n odd

Proof: Prove the contrapositive instead.

no not odd → n^2 not odd

n even → n^2 even (Proved earlier!)

---

Classic proof by contradiction.

Theorem: √ is *not* a rational number.

In other words: √2 &notroundE; Q

Proof:

p: √ &notroundE; q

~p → F

∴ p

~p: √2 &roundE; Q

√2 = a/b

a = √b

a^2 = 2b^2

2/a^2

2/a (by our earlier theorem)

a = 2K

(2K)^2 = 2b^2

4K^2 = 2b^2

b^2 = 2K^2

b^2 is even, so b is even

b = 2m, for some m.

So, both a and b are even.

But, a/b was reduced to lowest terms!

So p is true by contradiction.
