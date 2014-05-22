(set-logic QF_S)
(set-info :source |
A. Rybalchenko and J. A. Navarro Pérez.
[Separation Logic + Superposition Calculus = Heap Theorem Prover]
[PLDI 2011]
http://navarroj.com/research/papers.html#pldi11
|)
(set-info :smt-lib-version 2.0)
(set-info :category "random") 
(set-info :status unknown)
(set-info :version 2014-05-22)

(set-logic QF_NOLL)

(declare-sort Sll_t 0)

(declare-fun f () (Field Sll_t Sll_t))

(define-fun ls ((?in Sll_t) (?out Sll_t)) Space
(tospace (or (= ?in ?out)
(exists ((?u Sll_t))
(and (distinct ?in ?out) (tobool
(ssep (pto ?in (ref f ?u)) (ls ?u ?out)
)))))))

(declare-fun nil () Sll_t)

(declare-fun x_emp () Sll_t)
(declare-fun y_emp () Sll_t)
(declare-fun z_emp () Sll_t)
(declare-fun t_emp () Sll_t)
(declare-fun x0 () Sll_t)
(declare-fun x1 () Sll_t)
(declare-fun x2 () Sll_t)
(declare-fun x3 () Sll_t)
(declare-fun x4 () Sll_t)
(declare-fun x5 () Sll_t)
(declare-fun x6 () Sll_t)
(declare-fun x7 () Sll_t)
(declare-fun x8 () Sll_t)
(declare-fun x9 () Sll_t)
(declare-fun x10 () Sll_t)
(declare-fun x11 () Sll_t)
(declare-fun x12 () Sll_t)
(declare-fun x13 () Sll_t)
(declare-fun x14 () Sll_t)
(declare-fun x15 () Sll_t)
(declare-fun x16 () Sll_t)
(declare-fun x17 () Sll_t)
(declare-fun x18 () Sll_t)
(declare-fun x19 () Sll_t)
(declare-fun x20 () Sll_t)
(declare-fun x21 () Sll_t)
(declare-fun x22 () Sll_t)
(declare-fun x23 () Sll_t)
(declare-fun x24 () Sll_t)
(assert
  (and 
    (= nil nil)
(distinct x6 x19 )
(distinct x3 x7 )
(distinct x3 x20 )
(distinct x7 x20 )
(distinct x9 x19 )
(distinct x2 x20 )
(distinct x8 x19 )
(distinct x8 x17 )
(distinct x4 x11 )
(distinct x4 x13 )
(distinct x4 x19 )
(distinct x1 x16 )
(distinct x1 x20 )
(distinct x13 x18 )
(distinct x13 x17 )
(distinct x10 x19 )
(distinct x10 x20 )
(distinct x16 x19 )
    (tobool  (ssep  (ls x5 x17 ) (ssep  (ls x19 x1 ) (ssep  (ls x4 x12 ) (ssep  (ls x12 x20 ) (ssep  (ls x12 x15 ) (ssep  (ls x12 x11 ) (ssep  (ls x2 x18 ) (ssep  (ls x17 x14 ) (ssep  (ls x7 x16 ) (ssep  (ls x3 x20 ) (ssep  (ls x3 x12 ) (ssep  (ls x11 x12 ) (ssep  (ls x6 x17 ) (ssep  (ls x6 x19 )(ssep (pto x_emp (ref f y_emp)) (pto z_emp (ref f t_emp))))))))))))))))))
  )
)
(assert
  (not
    (and (distinct x1 x1 )    (tobool (ssep (pto x_emp (ref f y_emp)) (pto z_emp (ref f t_emp))))
)  ))

(check-sat)