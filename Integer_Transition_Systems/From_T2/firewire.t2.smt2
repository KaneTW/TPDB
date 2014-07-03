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
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12 l13 l14 l15 l16))

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

(define-fun init_main ( (pc^0 Loc) (buffer^0 Int) (c1^0 Int) (c2^0 Int) (it^0 Int) (pattern^0 Int) (seqlen^0 Int) (xx^0 Int) (yy^0 Int) (z^0 Int) ) Bool
  (cfg_init pc^0 l16 true))

(define-fun next_main (
                 (pc^0 Loc) (buffer^0 Int) (c1^0 Int) (c2^0 Int) (it^0 Int) (pattern^0 Int) (seqlen^0 Int) (xx^0 Int) (yy^0 Int) (z^0 Int)
                 (pc^post Loc) (buffer^post Int) (c1^post Int) (c2^post Int) (it^post Int) (pattern^post Int) (seqlen^post Int) (xx^post Int) (yy^post Int) (z^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (= buffer^0 buffer^post) (= c1^0 c1^post)) (= c2^0 c2^post)) (= it^0 it^post)) (= pattern^0 pattern^post)) (= seqlen^0 seqlen^post)) (= xx^0 xx^post)) (= yy^0 yy^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (and (and (and (and (= yy^post 1) (= buffer^0 buffer^post)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= it^0 it^post)) (= pattern^0 pattern^post)) (= seqlen^0 seqlen^post)) (= xx^0 xx^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l3 pc^post l4 (and (and (and (and (and (and (and (and (= xx^post 1) (= buffer^0 buffer^post)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= it^0 it^post)) (= pattern^0 pattern^post)) (= seqlen^0 seqlen^post)) (= yy^0 yy^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l4 pc^post l2 (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 c2^0)) (= buffer^0 buffer^post)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= it^0 it^post)) (= pattern^0 pattern^post)) (= seqlen^0 seqlen^post)) (= xx^0 xx^post)) (= yy^0 yy^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l4 pc^post l2 (and (and (and (and (and (and (and (and (and (<= (+ 1 c2^0) 0) (= buffer^0 buffer^post)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= it^0 it^post)) (= pattern^0 pattern^post)) (= seqlen^0 seqlen^post)) (= xx^0 xx^post)) (= yy^0 yy^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l4 pc^post l0 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 c2^0) 0) (<= 0 (+ 0 c2^0))) (= yy^post 0)) (= buffer^0 buffer^post)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= it^0 it^post)) (= pattern^0 pattern^post)) (= seqlen^0 seqlen^post)) (= xx^0 xx^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l5 pc^post l6 (and (and (and (and (and (and (and (and (= z^post (+ -1 z^0)) (= c1^post c1^post)) (= c2^post c2^post)) (= buffer^0 buffer^post)) (= it^0 it^post)) (= pattern^0 pattern^post)) (= seqlen^0 seqlen^post)) (= xx^0 xx^post)) (= yy^0 yy^post)))
    (cfg_trans2 pc^0 l7 pc^post l6 (and (and (and (and (and (and (and (and (and (= z^post z^post) (<= 1 (+ 0 z^post))) (= seqlen^post (+ 1 seqlen^0))) (= it^post (+ 0 seqlen^post))) (= buffer^0 buffer^post)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= pattern^0 pattern^post)) (= xx^0 xx^post)) (= yy^0 yy^post)))
    (cfg_trans2 pc^0 l8 pc^post l7 (and (and (and (and (and (and (and (and (and (<= (+ 1 pattern^0) 3) (= pattern^post (+ 1 pattern^0))) (= buffer^0 buffer^post)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= it^0 it^post)) (= seqlen^0 seqlen^post)) (= xx^0 xx^post)) (= yy^0 yy^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l8 pc^post l7 (and (and (and (and (and (and (and (and (and (<= 3 (+ 0 pattern^0)) (= pattern^post 0)) (= buffer^0 buffer^post)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= it^0 it^post)) (= seqlen^0 seqlen^post)) (= xx^0 xx^post)) (= yy^0 yy^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l6 pc^post l3 (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 c1^0)) (= buffer^0 buffer^post)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= it^0 it^post)) (= pattern^0 pattern^post)) (= seqlen^0 seqlen^post)) (= xx^0 xx^post)) (= yy^0 yy^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l6 pc^post l3 (and (and (and (and (and (and (and (and (and (<= (+ 1 c1^0) 0) (= buffer^0 buffer^post)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= it^0 it^post)) (= pattern^0 pattern^post)) (= seqlen^0 seqlen^post)) (= xx^0 xx^post)) (= yy^0 yy^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l6 pc^post l4 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 c1^0) 0) (<= 0 (+ 0 c1^0))) (= xx^post 0)) (= buffer^0 buffer^post)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= it^0 it^post)) (= pattern^0 pattern^post)) (= seqlen^0 seqlen^post)) (= yy^0 yy^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l9 pc^post l0 (and (and (and (and (and (and (and (and (and (= pattern^post 0) (= seqlen^post 1)) (= it^post (+ 0 seqlen^post))) (= xx^post 0)) (= yy^post 0)) (= z^post z^post)) (<= 1 (+ 0 z^post))) (= buffer^0 buffer^post)) (= c1^0 c1^post)) (= c2^0 c2^post)))
    (cfg_trans2 pc^0 l10 pc^post l6 (and (and (and (and (and (and (and (and (= c1^post (+ 0 buffer^0)) (= buffer^0 buffer^post)) (= c2^0 c2^post)) (= it^0 it^post)) (= pattern^0 pattern^post)) (= seqlen^0 seqlen^post)) (= xx^0 xx^post)) (= yy^0 yy^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l11 pc^post l10 (and (and (and (and (and (and (and (and (and (<= (+ 0 buffer^0) 2) (= c2^post 0)) (= buffer^0 buffer^post)) (= c1^0 c1^post)) (= it^0 it^post)) (= pattern^0 pattern^post)) (= seqlen^0 seqlen^post)) (= xx^0 xx^post)) (= yy^0 yy^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l11 pc^post l10 (and (and (and (and (and (and (and (and (and (<= 3 (+ 0 buffer^0)) (= c2^post 1)) (= buffer^post (+ -2 buffer^0))) (= c1^0 c1^post)) (= it^0 it^post)) (= pattern^0 pattern^post)) (= seqlen^0 seqlen^post)) (= xx^0 xx^post)) (= yy^0 yy^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l12 pc^post l8 (and (and (and (and (and (and (and (and (and (<= (+ 0 it^0) 0) (= buffer^0 buffer^post)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= it^0 it^post)) (= pattern^0 pattern^post)) (= seqlen^0 seqlen^post)) (= xx^0 xx^post)) (= yy^0 yy^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l12 pc^post l11 (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 it^0)) (= it^post (+ -1 it^0))) (= buffer^post (+ 0 pattern^0))) (= c1^0 c1^post)) (= c2^0 c2^post)) (= pattern^0 pattern^post)) (= seqlen^0 seqlen^post)) (= xx^0 xx^post)) (= yy^0 yy^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l13 pc^post l14 (and (and (and (and (and (and (and (and (= buffer^0 buffer^post) (= c1^0 c1^post)) (= c2^0 c2^post)) (= it^0 it^post)) (= pattern^0 pattern^post)) (= seqlen^0 seqlen^post)) (= xx^0 xx^post)) (= yy^0 yy^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l15 pc^post l5 (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 z^0)) (= buffer^0 buffer^post)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= it^0 it^post)) (= pattern^0 pattern^post)) (= seqlen^0 seqlen^post)) (= xx^0 xx^post)) (= yy^0 yy^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l15 pc^post l5 (and (and (and (and (and (and (and (and (and (<= (+ 1 z^0) 0) (= buffer^0 buffer^post)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= it^0 it^post)) (= pattern^0 pattern^post)) (= seqlen^0 seqlen^post)) (= xx^0 xx^post)) (= yy^0 yy^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l15 pc^post l12 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 z^0) 0) (<= 0 (+ 0 z^0))) (= buffer^0 buffer^post)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= it^0 it^post)) (= pattern^0 pattern^post)) (= seqlen^0 seqlen^post)) (= xx^0 xx^post)) (= yy^0 yy^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l1 pc^post l13 (and (and (and (and (and (and (and (and (and (<= (+ 1 yy^0) (+ 0 xx^0)) (= buffer^0 buffer^post)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= it^0 it^post)) (= pattern^0 pattern^post)) (= seqlen^0 seqlen^post)) (= xx^0 xx^post)) (= yy^0 yy^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l1 pc^post l13 (and (and (and (and (and (and (and (and (and (<= (+ 1 xx^0) (+ 0 yy^0)) (= buffer^0 buffer^post)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= it^0 it^post)) (= pattern^0 pattern^post)) (= seqlen^0 seqlen^post)) (= xx^0 xx^post)) (= yy^0 yy^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l1 pc^post l15 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 xx^0) (+ 0 yy^0)) (<= (+ 0 yy^0) (+ 0 xx^0))) (= buffer^0 buffer^post)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= it^0 it^post)) (= pattern^0 pattern^post)) (= seqlen^0 seqlen^post)) (= xx^0 xx^post)) (= yy^0 yy^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l16 pc^post l9 (and (and (and (and (and (and (and (and (= buffer^0 buffer^post) (= c1^0 c1^post)) (= c2^0 c2^post)) (= it^0 it^post)) (= pattern^0 pattern^post)) (= seqlen^0 seqlen^post)) (= xx^0 xx^post)) (= yy^0 yy^post)) (= z^0 z^post)))
  )
)