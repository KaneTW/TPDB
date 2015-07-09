(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l3 Loc)
(declare-const l4 Loc)
(declare-const l5 Loc)
(declare-const l6 Loc)
(declare-const l7 Loc)
(declare-const l8 Loc)
(declare-const l9 Loc)
(declare-const l10 Loc)
(declare-const l11 Loc)
(declare-const l12 Loc)
(declare-const l13 Loc)
(declare-const l14 Loc)
(declare-const l15 Loc)
(declare-const l16 Loc)
(declare-const l17 Loc)
(declare-const l2 Loc)
(declare-const l18 Loc)
(assert (distinct l0 l1 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12 l13 l14 l15 l16 l17 l2 l18))

(define-fun cfg_init ( (pc Loc) (src Loc) (rel Bool) ) Bool
  (and (= pc src) rel))

(define-fun cfg_trans2 ( (pc Loc) (src Loc)
                         (pc1 Loc) (dst Loc)
                         (rel Bool) ) Bool
  (and (= pc src) (= pc1 dst) rel))

(define-fun cfg_trans3 ( (pc Loc) (exit Loc)
                         (pc1 Loc) (call Loc)
                         (pc2 Loc) (return Loc)
                         (rel Bool) ) Bool
  (and (= pc exit) (= pc1 call) (= pc2 return) rel))

(define-fun init_main ( (pc^0 Loc) (x^0 Int) (y^0 Int) (z0^0 Int) (z10^0 Int) (z11^0 Int) (z12^0 Int) (z13^0 Int) (z1^0 Int) (z2^0 Int) (z3^0 Int) (z4^0 Int) (z5^0 Int) (z6^0 Int) (z7^0 Int) (z8^0 Int) (z9^0 Int) ) Bool
  (cfg_init pc^0 l18 true))

(define-fun next_main (
                 (pc^0 Loc) (x^0 Int) (y^0 Int) (z0^0 Int) (z10^0 Int) (z11^0 Int) (z12^0 Int) (z13^0 Int) (z1^0 Int) (z2^0 Int) (z3^0 Int) (z4^0 Int) (z5^0 Int) (z6^0 Int) (z7^0 Int) (z8^0 Int) (z9^0 Int)
                 (pc^post Loc) (x^post Int) (y^post Int) (z0^post Int) (z10^post Int) (z11^post Int) (z12^post Int) (z13^post Int) (z1^post Int) (z2^post Int) (z3^post Int) (z4^post Int) (z5^post Int) (z6^post Int) (z7^post Int) (z8^post Int) (z9^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= x^0 x^post) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l1 pc^post l3 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 y^0) 0) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l1 pc^post l3 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 y^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l3 pc^post l4 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 x^0) 0) (<= 0 (+ 0 x^0))) (= x^post (+ 0 y^0))) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l4 pc^post l5 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 x^0) (+ 0 z0^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l4 pc^post l5 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 z0^0) (+ 0 x^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l5 pc^post l6 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 x^0) (+ 0 z1^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l5 pc^post l6 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 z1^0) (+ 0 x^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l6 pc^post l7 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 x^0) (+ 0 z2^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l6 pc^post l7 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 z2^0) (+ 0 x^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l7 pc^post l8 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 x^0) (+ 0 z3^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l7 pc^post l8 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 z3^0) (+ 0 x^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l8 pc^post l9 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 x^0) (+ 0 z4^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l8 pc^post l9 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 z4^0) (+ 0 x^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l9 pc^post l10 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 x^0) (+ 0 z5^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l9 pc^post l10 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 z5^0) (+ 0 x^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l10 pc^post l11 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 x^0) (+ 0 z6^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l10 pc^post l11 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 z6^0) (+ 0 x^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l11 pc^post l12 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 x^0) (+ 0 z7^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l11 pc^post l12 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 z7^0) (+ 0 x^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l12 pc^post l13 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 x^0) (+ 0 z8^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l12 pc^post l13 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 z8^0) (+ 0 x^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l13 pc^post l14 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 x^0) (+ 0 z9^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l13 pc^post l14 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 z9^0) (+ 0 x^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l14 pc^post l15 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 x^0) (+ 0 z10^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l14 pc^post l15 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 z10^0) (+ 0 x^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l15 pc^post l16 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 x^0) (+ 0 z11^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l15 pc^post l16 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 z11^0) (+ 0 x^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l16 pc^post l17 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 x^0) (+ 0 z12^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l16 pc^post l17 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 z12^0) (+ 0 x^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l17 pc^post l2 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 x^0) (+ 0 z13^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l17 pc^post l2 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 z13^0) (+ 0 x^0)) (= x^0 x^post)) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l2 pc^post l1 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= x^0 x^post) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
    (cfg_trans2 pc^0 l18 pc^post l0 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= x^0 x^post) (= y^0 y^post)) (= z0^0 z0^post)) (= z1^0 z1^post)) (= z10^0 z10^post)) (= z11^0 z11^post)) (= z12^0 z12^post)) (= z13^0 z13^post)) (= z2^0 z2^post)) (= z3^0 z3^post)) (= z4^0 z4^post)) (= z5^0 z5^post)) (= z6^0 z6^post)) (= z7^0 z7^post)) (= z8^0 z8^post)) (= z9^0 z9^post)))
  )
)
