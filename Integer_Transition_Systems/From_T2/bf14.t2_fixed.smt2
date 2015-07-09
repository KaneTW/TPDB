(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
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
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12 l13 l14 l15 l16 l17))

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

(define-fun init_main ( (pc^0 Loc) (edgecount^0 Int) (i^0 Int) (j^0 Int) (nodecount^0 Int) (source^0 Int) (x^0 Int) (y^0 Int) ) Bool
  (cfg_init pc^0 l17 true))

(define-fun next_main (
                 (pc^0 Loc) (edgecount^0 Int) (i^0 Int) (j^0 Int) (nodecount^0 Int) (source^0 Int) (x^0 Int) (y^0 Int)
                 (pc^post Loc) (edgecount^post Int) (i^post Int) (j^post Int) (nodecount^post Int) (source^post Int) (x^post Int) (y^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (<= (+ 0 nodecount^0) (+ 0 i^0)) (= edgecount^0 edgecount^post)) (= i^0 i^post)) (= j^0 j^post)) (= nodecount^0 nodecount^post)) (= source^0 source^post)) (= x^0 x^post)) (= y^0 y^post)))
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (and (and (and (and (and (<= (+ 1 i^0) (+ 0 nodecount^0)) (= i^post (+ 1 i^0))) (= edgecount^0 edgecount^post)) (= j^0 j^post)) (= nodecount^0 nodecount^post)) (= source^0 source^post)) (= x^0 x^post)) (= y^0 y^post)))
    (cfg_trans2 pc^0 l3 pc^post l4 (and (and (and (and (and (and (= i^post (+ 1 i^0)) (= edgecount^0 edgecount^post)) (= j^0 j^post)) (= nodecount^0 nodecount^post)) (= source^0 source^post)) (= x^0 x^post)) (= y^0 y^post)))
    (cfg_trans2 pc^0 l3 pc^post l1 (and (and (and (and (and (and (= edgecount^0 edgecount^post) (= i^0 i^post)) (= j^0 j^post)) (= nodecount^0 nodecount^post)) (= source^0 source^post)) (= x^0 x^post)) (= y^0 y^post)))
    (cfg_trans2 pc^0 l5 pc^post l2 (and (and (and (and (and (and (and (<= (+ 0 edgecount^0) (+ 0 i^0)) (= i^post 0)) (= edgecount^0 edgecount^post)) (= j^0 j^post)) (= nodecount^0 nodecount^post)) (= source^0 source^post)) (= x^0 x^post)) (= y^0 y^post)))
    (cfg_trans2 pc^0 l5 pc^post l3 (and (and (and (and (and (and (and (<= (+ 1 i^0) (+ 0 edgecount^0)) (= x^post x^post)) (= y^post y^post)) (= edgecount^0 edgecount^post)) (= i^0 i^post)) (= j^0 j^post)) (= nodecount^0 nodecount^post)) (= source^0 source^post)))
    (cfg_trans2 pc^0 l6 pc^post l7 (and (and (and (and (and (and (= j^post (+ 1 j^0)) (= edgecount^0 edgecount^post)) (= i^0 i^post)) (= nodecount^0 nodecount^post)) (= source^0 source^post)) (= x^0 x^post)) (= y^0 y^post)))
    (cfg_trans2 pc^0 l8 pc^post l9 (and (and (and (and (and (and (and (<= (+ 0 edgecount^0) (+ 0 j^0)) (= i^post (+ 1 i^0))) (= edgecount^0 edgecount^post)) (= j^0 j^post)) (= nodecount^0 nodecount^post)) (= source^0 source^post)) (= x^0 x^post)) (= y^0 y^post)))
    (cfg_trans2 pc^0 l8 pc^post l6 (and (and (and (and (and (and (and (<= (+ 1 j^0) (+ 0 edgecount^0)) (= x^post x^post)) (= y^post y^post)) (= edgecount^0 edgecount^post)) (= i^0 i^post)) (= j^0 j^post)) (= nodecount^0 nodecount^post)) (= source^0 source^post)))
    (cfg_trans2 pc^0 l10 pc^post l4 (and (and (and (and (and (and (and (<= (+ 0 nodecount^0) (+ 0 i^0)) (= i^post 0)) (= edgecount^0 edgecount^post)) (= j^0 j^post)) (= nodecount^0 nodecount^post)) (= source^0 source^post)) (= x^0 x^post)) (= y^0 y^post)))
    (cfg_trans2 pc^0 l10 pc^post l7 (and (and (and (and (and (and (and (<= (+ 1 i^0) (+ 0 nodecount^0)) (= j^post 0)) (= edgecount^0 edgecount^post)) (= i^0 i^post)) (= nodecount^0 nodecount^post)) (= source^0 source^post)) (= x^0 x^post)) (= y^0 y^post)))
    (cfg_trans2 pc^0 l11 pc^post l12 (and (and (and (and (and (and (= edgecount^0 edgecount^post) (= i^0 i^post)) (= j^0 j^post)) (= nodecount^0 nodecount^post)) (= source^0 source^post)) (= x^0 x^post)) (= y^0 y^post)))
    (cfg_trans2 pc^0 l13 pc^post l14 (and (and (and (and (and (and (= edgecount^0 edgecount^post) (= i^0 i^post)) (= j^0 j^post)) (= nodecount^0 nodecount^post)) (= source^0 source^post)) (= x^0 x^post)) (= y^0 y^post)))
    (cfg_trans2 pc^0 l14 pc^post l11 (and (and (and (and (and (and (= i^post (+ 1 i^0)) (= edgecount^0 edgecount^post)) (= j^0 j^post)) (= nodecount^0 nodecount^post)) (= source^0 source^post)) (= x^0 x^post)) (= y^0 y^post)))
    (cfg_trans2 pc^0 l15 pc^post l13 (and (and (and (and (and (and (and (<= (+ 1 source^0) (+ 0 i^0)) (= edgecount^0 edgecount^post)) (= i^0 i^post)) (= j^0 j^post)) (= nodecount^0 nodecount^post)) (= source^0 source^post)) (= x^0 x^post)) (= y^0 y^post)))
    (cfg_trans2 pc^0 l15 pc^post l13 (and (and (and (and (and (and (and (<= (+ 1 i^0) (+ 0 source^0)) (= edgecount^0 edgecount^post)) (= i^0 i^post)) (= j^0 j^post)) (= nodecount^0 nodecount^post)) (= source^0 source^post)) (= x^0 x^post)) (= y^0 y^post)))
    (cfg_trans2 pc^0 l15 pc^post l14 (and (and (and (and (and (and (and (and (<= (+ 0 i^0) (+ 0 source^0)) (<= (+ 0 source^0) (+ 0 i^0))) (= edgecount^0 edgecount^post)) (= i^0 i^post)) (= j^0 j^post)) (= nodecount^0 nodecount^post)) (= source^0 source^post)) (= x^0 x^post)) (= y^0 y^post)))
    (cfg_trans2 pc^0 l12 pc^post l9 (and (and (and (and (and (and (and (<= (+ 0 nodecount^0) (+ 0 i^0)) (= i^post 0)) (= edgecount^0 edgecount^post)) (= j^0 j^post)) (= nodecount^0 nodecount^post)) (= source^0 source^post)) (= x^0 x^post)) (= y^0 y^post)))
    (cfg_trans2 pc^0 l12 pc^post l15 (and (and (and (and (and (and (and (<= (+ 1 i^0) (+ 0 nodecount^0)) (= edgecount^0 edgecount^post)) (= i^0 i^post)) (= j^0 j^post)) (= nodecount^0 nodecount^post)) (= source^0 source^post)) (= x^0 x^post)) (= y^0 y^post)))
    (cfg_trans2 pc^0 l9 pc^post l10 (and (and (and (and (and (and (= edgecount^0 edgecount^post) (= i^0 i^post)) (= j^0 j^post)) (= nodecount^0 nodecount^post)) (= source^0 source^post)) (= x^0 x^post)) (= y^0 y^post)))
    (cfg_trans2 pc^0 l7 pc^post l8 (and (and (and (and (and (and (= edgecount^0 edgecount^post) (= i^0 i^post)) (= j^0 j^post)) (= nodecount^0 nodecount^post)) (= source^0 source^post)) (= x^0 x^post)) (= y^0 y^post)))
    (cfg_trans2 pc^0 l4 pc^post l5 (and (and (and (and (and (and (= edgecount^0 edgecount^post) (= i^0 i^post)) (= j^0 j^post)) (= nodecount^0 nodecount^post)) (= source^0 source^post)) (= x^0 x^post)) (= y^0 y^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (and (and (= edgecount^0 edgecount^post) (= i^0 i^post)) (= j^0 j^post)) (= nodecount^0 nodecount^post)) (= source^0 source^post)) (= x^0 x^post)) (= y^0 y^post)))
    (cfg_trans2 pc^0 l16 pc^post l11 (and (and (and (and (and (and (= nodecount^post 5) (= edgecount^post 14)) (= source^post 0)) (= i^post 0)) (= j^0 j^post)) (= x^0 x^post)) (= y^0 y^post)))
    (cfg_trans2 pc^0 l17 pc^post l16 (and (and (and (and (and (and (= edgecount^0 edgecount^post) (= i^0 i^post)) (= j^0 j^post)) (= nodecount^0 nodecount^post)) (= source^0 source^post)) (= x^0 x^post)) (= y^0 y^post)))
  )
)
