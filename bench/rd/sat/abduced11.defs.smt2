(set-logic QF_S)
(set-info :source |
  James Brotherston, Nikos Gorogiannis, and Rasmus Petersen
  A Generic Cyclic Theorem Prover. APLAS, 2012.
  https://github.com/ngorogiannis/cyclist
|)
(set-info :smt-lib-version 2.0)
(set-info :category "crafted")
(set-info :status unknown)
(set-info :version 2014-05-22)



;generic sort 

(declare-sort GTyp 0)

;generic fields 
(declare-fun f0 () (Field GTyp GTyp))
(declare-fun f1 () (Field GTyp GTyp))

;predicates 

(define-fun ls ((?a GTyp)) Space 
(tospace (or 

	(= nil ?a)


	(and (distinct nil ?a)
		 (tobool (I001 ?a)
		)
	)
))
)


(define-fun I225135 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp) (?g GTyp) (?h GTyp) (?i GTyp) (?j GTyp)) Space 
(I43104 ?a ?b ?c ?d ?e ?f ?g ?h ?j))


(define-fun I62157 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp) (?g GTyp) (?h GTyp) (?i GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?i)
			(tobool 
	(ssep (pto ?i  (ref f0 ?a') )
		(I225135 ?a ?b ?c ?d ?e ?f ?g ?h ?i ?a')
	)

		))
	))
)


(define-fun I62158 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp) (?g GTyp) (?h GTyp) (?i GTyp)) Space 
(I7597 ?a ?b ?c ?d ?e ?f ?i))


(define-fun I43104 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp) (?g GTyp) (?h GTyp) (?i GTyp)) Space 
(tospace (or 

	(and (= nil ?i)
		 (tobool (I62158 ?a ?b ?c ?d ?e ?f ?g ?h ?i)
		)
	)


	(and (distinct nil ?i)
		 (tobool (I62157 ?a ?b ?c ?d ?e ?f ?g ?h ?i)
		)
	)
))
)


(define-fun I43056 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp) (?g GTyp) (?h GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?h)
			(tobool 
	(ssep (pto ?h  (ref f0 ?a') )
		(I43104 ?a ?b ?c ?d ?e ?f ?g ?h ?a')
	)

		))
	))
)


(define-fun I43057 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp) (?g GTyp) (?h GTyp)) Space 
(I7597 ?a ?b ?c ?d ?e ?f ?h))


(define-fun I43027 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp) (?g GTyp) (?h GTyp)) Space 
(tospace (or 

	(and (= nil ?h)
		 (tobool (I43057 ?a ?b ?c ?d ?e ?f ?g ?h)
		)
	)


	(and (distinct nil ?h)
		 (tobool (I43056 ?a ?b ?c ?d ?e ?f ?g ?h)
		)
	)
))
)


(define-fun I7596 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp) (?g GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?g)
			(tobool 
	(ssep (pto ?g  (ref f0 ?a') )
		(I43027 ?a ?b ?c ?d ?e ?f ?g ?a')
	)

		))
	))
)


(define-fun I11845 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp) (?g GTyp) (?h GTyp)) Space 
(I7597 ?h ?b ?c ?d ?e ?f ?g))


(define-fun I7622 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp) (?g GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?a)
			(tobool 
	(ssep (pto ?a  (ref f0 ?a') )
		(I11845 ?a ?b ?c ?d ?e ?f ?g ?a')
	)

		))
	))
)


(define-fun I7597 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp) (?g GTyp)) Space 
(tospace (or 

	(= nil ?a)


	(and (distinct nil ?a)
		 (tobool (I7622 ?a ?b ?c ?d ?e ?f ?g)
		)
	)
))
)


(define-fun I7544 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp) (?g GTyp)) Space 
(tospace (or 

	(and (= nil ?g)
		 (tobool (I7597 ?a ?b ?c ?d ?e ?f ?g)
		)
	)


	(and (distinct nil ?g)
		 (tobool (I7596 ?a ?b ?c ?d ?e ?f ?g)
		)
	)
))
)


(define-fun I7449 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?f)
			(tobool 
	(ssep (pto ?f  (ref f0 ?a') )
		(I7544 ?a ?b ?c ?d ?e ?f ?a')
	)

		))
	))
)


(define-fun I7509 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp) (?g GTyp)) Space 
(I7450 ?g ?b ?c ?d ?e ?f))


(define-fun I7500 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?a)
			(tobool 
	(ssep (pto ?a  (ref f0 ?a') )
		(I7509 ?a ?b ?c ?d ?e ?f ?a')
	)

		))
	))
)


(define-fun I7450 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp)) Space 
(tospace (or 

	(= ?a ?f)


	(and (distinct ?a ?f)
		 (tobool (I7500 ?a ?b ?c ?d ?e ?f)
		)
	)
))
)


(define-fun I7429 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp)) Space 
(tospace (or 

	(and (= nil ?f)
		 (tobool (I7450 ?a ?b ?c ?d ?e ?f)
		)
	)


	(and (distinct nil ?f)
		 (tobool (I7449 ?a ?b ?c ?d ?e ?f)
		)
	)
))
)


(define-fun I182 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?e)
			(tobool 
	(ssep (pto ?e  (ref f0 ?a') )
		(I7429 ?a ?b ?c ?d ?e ?a')
	)

		))
	))
)


(define-fun I2305 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp)) Space 
(I183 ?a ?f ?c ?d ?e))


(define-fun I1291 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?b)
			(tobool 
	(ssep (pto ?b  (ref f0 ?a') )
		(I2305 ?a ?b ?c ?d ?e ?a')
	)

		))
	))
)


(define-fun I183 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp)) Space 
(tospace (or 

	(= nil ?b)


	(and (distinct nil ?b)
		 (tobool (I1291 ?a ?b ?c ?d ?e)
		)
	)
))
)


(define-fun I166 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp)) Space 
(tospace (or 

	(and (= nil ?e)
		 (tobool (I183 ?a ?b ?c ?d ?e)
		)
	)


	(and (distinct nil ?e)
		 (tobool (I182 ?a ?b ?c ?d ?e)
		)
	)
))
)


(define-fun I046 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?d)
			(tobool 
	(ssep (pto ?d  (ref f0 ?a') )
		(I166 ?a ?b ?c ?d ?a')
	)

		))
	))
)


(define-fun I063 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp)) Space 
(I047 ?e ?b ?c ?d))


(define-fun I056 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?a)
			(tobool 
	(ssep (pto ?a  (ref f0 ?a') )
		(I063 ?a ?b ?c ?d ?a')
	)

		))
	))
)


(define-fun I047 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp)) Space 
(tospace (or 

	(= nil ?a)


	(and (distinct nil ?a)
		 (tobool (I056 ?a ?b ?c ?d)
		)
	)
))
)


(define-fun I034 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp)) Space 
(tospace (or 

	(and (= nil ?d)
		 (tobool (I047 ?a ?b ?c ?d)
		)
	)


	(and (distinct nil ?d)
		 (tobool (I046 ?a ?b ?c ?d)
		)
	)
))
)


(define-fun I021 ((?a GTyp) (?b GTyp) (?c GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?c)
			(tobool 
	(ssep (pto ?c  (ref f0 ?a') )
		(I034 ?a ?b ?c ?a')
	)

		))
	))
)


(define-fun I022 ((?a GTyp) (?b GTyp) (?c GTyp)) Space 
(I008 ?b ?c))


(define-fun I013 ((?a GTyp) (?b GTyp) (?c GTyp)) Space 
(tospace (or 

	(and (= nil ?c)
		 (tobool (I022 ?a ?b ?c)
		)
	)


	(and (distinct nil ?c)
		 (tobool (I021 ?a ?b ?c)
		)
	)
))
)


(define-fun I007 ((?a GTyp) (?b GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?b)
			(tobool 
	(ssep (pto ?b  (ref f0 ?a') )
		(I013 ?a ?b ?a')
	)

		))
	))
)


(define-fun I008 ((?a GTyp) (?b GTyp)) Space 
emp)


(define-fun I003 ((?a GTyp) (?b GTyp)) Space 
(tospace (or 

	(and (= nil ?b)
		 (tobool (I008 ?a ?b)
		)
	)


	(and (distinct nil ?b)
		 (tobool (I007 ?a ?b)
		)
	)
))
)


(define-fun I001 ((?a GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?a)
			(tobool 
	(ssep (pto ?a  (ref f0 ?a') )
		(I003 ?a ?a')
	)

		))
	))
)


;vars 

;problem 
(declare-fun x0 () GTyp)

(assert (tobool (ls  x0)))

(check-sat)

;;pto 1

;;pto 1

;;pto 1

;;pto 1

;;pto 1

;;pto 1

;;pto 1

;;pto 1

;;pto 1

;;pto 1

;;pto 1

;;pto 1

;;pto 1