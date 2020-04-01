(define (domain travelling)
    (:requirements :adl)
    
    (:types 
		vehicle
		person
	)
    
    (:predicates 
        (Road ?x - object ?y - object)
        (Air ?x - object ?y - object)
		(At ?x - object ?y - object)
		(Visited ?x - object)
		(IsAgent ?x - person)
    )
    
    (:action DRIVE
        :parameters (?who - person ?in - vehicle ?from - object ?to - object)
        :precondition (and (At ?who ?from) (At ?in ?from) (Road ?from ?to))
        :effect (and (not(At ?who ?from)) (At ?who ?to) (not (At ?in ?from)) (At ?in ?to))
    )
     
	(:action FLY
        :parameters (?who - person ?from - object ?to - object)
        :precondition (and (At ?who ?from) (Air ?from ?to))
        :effect (and (not(At ?who ?from)) (At ?who ?to))
    ) 
   
	(:action VISIT
		:parameters (?who - person ?place - object)
		:precondition (and (IsAgent ?who) (At ?who ?place) (not (Visited ?place)))
		:effect (Visited ?place)
	)

)

