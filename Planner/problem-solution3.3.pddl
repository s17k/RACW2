(define (problem travelling-33)
    (:domain travelling)
    (:objects 
        A - object
        B - object
        C - object
		D - object
		E - object
		F - object
		G - object
		H - object
		I - object
		Agent - person
		Volvo - vehicle
		Toyota - vehicle
		Renault - vehicle
    )
    
    (:init
        (Road A E)
        (Road E A)
        (Road A I)
        (Road I A)
        (Road I H)
        (Road H I)
		(Road H B)
		(Road B H)
		(Road H G)
		(Road G H)
		(Road G F)
		(Road F G)
		(Road C F)
		(Road F C)
		(Road F D)
		(Road D F)
		(Road C D)
		(Road D C)
		(Air A C)
		(Air C B)
		(Air B A)
		(Air A B)
		(IsAgent Agent)
        (At Agent E)
		(At Volvo E)
		(At Toyota C)
		(At Renault A)
		(RentalAgencyOf Volvo E)
		(RentalAgencyOf Toyota C)
		(RentalAgencyOf Renault A)
		(= (total-cost) 0)
    )
    (:goal (and 
        (Visited D)
		(At Agent E)
		(not (Hired Volvo))
		(not (Hired Toyota))
		(not (Hired Renault))
		(<= (total-cost) 40))
	)
)

