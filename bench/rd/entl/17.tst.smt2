(set-logic QF_S)
(set-info :source |
  James Brotherston, Carsten Fuhs, Nikos Gorogiannis, and Juan Navarro Pérez.
  A decision procedure for satisfiability in sseparation logic with inductive
  predicates. To appear at CSL-LICS, 2014.
  https://github.com/ngorogiannis/cyclist
|)
(set-info :smt-lib-version 2.0)
(set-info :category "crafted")
(set-info :status unknown)



;generic sort

(declare-sort GTyp 0)

;generic fields
(declare-fun f0 () (Field GTyp GTyp))
(declare-fun f1 () (Field GTyp GTyp))





(define-fun BinTree ((?x GTyp)) Space
(tospace (or
emp

        (exists ((?yp GTyp) (?xp GTyp))

                 (and (distinct nil ?x)
                        (tobool
        (ssep (pto ?x (sref  (ref f0 ?yp)  (ref f1 ?xp) ))
                (BinTree ?yp)
                (BinTree ?xp)
        )

                )))

) )
 )


(define-fun BinTreeSeg ((?x GTyp) (?y GTyp)) Space
(tospace (or

        (= ?x ?y)


        (exists ((?xp GTyp) (?yp GTyp))

                 (and (distinct nil ?x)
                        (tobool
        (ssep (pto ?x (sref  (ref f0 ?xp)  (ref f1 ?yp) ))
                (BinTreeSeg ?xp ?y)
                (BinTree ?yp)
        )

                )))


        (exists ((?xp GTyp) (?yp GTyp))

                 (and (distinct nil ?x)
                        (tobool
        (ssep (pto ?x (sref  (ref f0 ?xp)  (ref f1 ?yp) ))
                (BinTree ?xp)
                (BinTreeSeg ?yp ?y)
        )

                )))

) )
 )

 
;;;BinTreeSeg(x,z) * BinTreeSeg(z,y) |- BinTreeSeg(x,y) 




(declare-fun x () GTyp)
(declare-fun y () GTyp)
(declare-fun z () GTyp)

(assert (tobool (ssep
        (BinTreeSeg x z)
        (BinTreeSeg z y)
)))

(assert (not (tobool
        (BinTreeSeg x y)
)))



(check-sat)

