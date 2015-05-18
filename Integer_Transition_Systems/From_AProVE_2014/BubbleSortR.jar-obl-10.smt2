(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f795_0_main_GE Loc)
(declare-const f1421_0_sort_GE Loc)
(declare-const f1445_0_aux_LT Loc)
(declare-const f1611_0_aux_InvokeMethod Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f795_0_main_GE f1421_0_sort_GE f1445_0_aux_LT f1611_0_aux_InvokeMethod __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int) (arg7 Int) (arg8 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int) (arg7 Int) (arg8 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int) (arg5P Int) (arg6P Int) (arg7P Int) (arg8P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_Load pc1 f795_0_main_GE (and (and (and (and (and (and (and (and (and (and (and (<= arg1P arg1) (<= arg2P arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 0)) (= 0 arg2)) (= 0 arg3P)) (= 0 arg4P)) (= 0 arg5P)) (= 0 arg6P)) (= 0 arg7P)) (= 0 arg8P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f795_0_main_GE (exists ((x6 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (<= arg1P arg1) (> x6 (- 1))) (<= arg2P arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 0)) (= 1 arg2)) (= 0 arg3P)) (= 0 arg4P)) (= 1 arg5P)) (= 1 arg6P)) (= 1 arg7P)) (= 0 arg8P))))
    (cfg_trans2 pc f1_0_main_Load pc1 f795_0_main_GE (exists ((x11 Int) (x12 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> x11 (- 1)) (> arg2 1)) (>= (* x11 x12) 0)) (> x12 (- 1))) (<= arg1P arg1)) (>= arg1 arg2P)) (> arg1 0)) (> arg1P 0)) (> arg2P 0)) (= 0 arg3P)) (= (* x11 x12) arg4P)) (= arg2 arg5P)) (= 2 arg6P)) (= arg2 arg7P)) (= (* x11 x12) arg8P))))
    (cfg_trans2 pc f795_0_main_GE pc1 f795_0_main_GE (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 arg3) (> arg5 (- 1))) (>= arg6 arg5)) (> arg4 (- 1))) (<= arg1P arg1)) (<= arg1P arg2)) (<= arg2P arg1)) (<= arg2P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 0)) (= arg5 arg7)) (= arg4 arg8)) (= (+ arg3 1) arg3P)) (= arg4 arg4P)) (= arg5 arg5P)) (= arg6 arg6P)) (= arg5 arg7P)) (= arg4 arg8P)))
    (cfg_trans2 pc f795_0_main_GE pc1 f795_0_main_GE (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 arg3) (> arg5 (- 1))) (> arg6 (- 1))) (< arg6 arg5)) (> arg4 (- 1))) (<= arg1P arg1)) (<= arg1P arg2)) (<= arg2P arg1)) (<= arg2P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 0)) (= arg5 arg7)) (= arg4 arg8)) (= (+ arg3 1) arg3P)) (= arg4 arg4P)) (= arg5 arg5P)) (= (+ arg6 1) arg6P)) (= arg5 arg7P)) (= arg4 arg8P)))
    (cfg_trans2 pc f795_0_main_GE pc1 f1421_0_sort_GE (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 (- 1)) (<= arg4 arg3)) (<= arg1P arg1)) (<= arg1P arg2)) (<= arg2P arg1)) (<= arg2P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 0)) (= arg5 arg7)) (= arg4 arg8)) (= 1 arg3P)) (= arg4 arg4P)) (= arg4 arg5P)))
    (cfg_trans2 pc f1421_0_sort_GE pc1 f1421_0_sort_GE (and (and (and (and (and (and (and (and (and (and (and (and (and (and (>= (- arg4 arg3) 1) (> arg4 1)) (> arg3 0)) (> arg4 arg3)) (<= arg1P arg1)) (<= arg1P arg2)) (<= arg2P arg1)) (<= arg2P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 0)) (= (+ arg3 1) arg3P)) (= arg4 arg4P)) (= arg5 arg5P)))
    (cfg_trans2 pc f1421_0_sort_GE pc1 f1421_0_sort_GE (and (and (and (and (and (and (and (and (and (and (and (and (and (>= (- arg4 arg3) 1) (> arg4 1)) (> arg3 0)) (> arg4 arg3)) (<= arg1P arg1)) (<= arg1P arg2)) (<= arg2P arg1)) (<= arg2P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 0)) (= (+ arg3 1) arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f1421_0_sort_GE pc1 f1445_0_aux_LT (and (and (and (and (and (and (and (and (and (and (and (and (and (>= (- arg4 arg3) 1) (> arg4 1)) (> arg3 0)) (> arg4 arg3)) (<= arg3P arg1)) (<= arg3P arg2)) (> arg1 0)) (> arg2 0)) (> arg3P 0)) (= 0 arg1P)) (= 0 arg2P)) (= 0 arg4P)) (= (- arg4 arg3) arg5P)) (= arg5 arg6P)))
    (cfg_trans2 pc f1445_0_aux_LT pc1 f1611_0_aux_InvokeMethod (exists ((x69 Int) (x68 Int)) (and (and (and (and (and (and (and (and (and (and (and (> arg2 (- 1)) (> arg6 (+ arg2 1))) (> arg5 arg2)) (<= x69 x68)) (<= arg4P arg3)) (> arg3 0)) (> arg4P 0)) (= arg2 arg4)) (= arg1 arg1P)) (= (+ arg2 1) arg2P)) (= arg5 arg3P)) (= arg6 arg6P))))
    (cfg_trans2 pc f1445_0_aux_LT pc1 f1611_0_aux_InvokeMethod (exists ((x78 Int) (x77 Int)) (and (and (and (and (and (and (and (and (and (and (and (> arg2 (- 1)) (> arg6 (+ arg2 1))) (> arg5 arg2)) (> x78 x77)) (<= arg4P arg3)) (> arg3 0)) (> arg4P 0)) (= arg2 arg4)) (= arg1 arg1P)) (= (+ arg2 1) arg2P)) (= arg5 arg3P)) (= arg6 arg6P))))
    (cfg_trans2 pc f1611_0_aux_InvokeMethod pc1 f1445_0_aux_LT (and (and (and (and (and (and (and (and (and (and (and (> arg3 0) (> arg2 0)) (>= arg3 arg2)) (>= arg3 arg1)) (<= arg3P arg4)) (> arg4 0)) (> arg3P 0)) (= arg2 arg1P)) (= arg2 arg2P)) (= arg2 arg4P)) (= arg3 arg5P)) (= arg6 arg6P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
