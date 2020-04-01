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
        (Hired ?x - vehicle)
        (RentalAgencyOf ?x - vehicle ?where - object)
    )

    (:functions
          (total-cost)
     )
    
    (:action DRIVE
        :parameters (?who - person ?in - vehicle ?from - object ?to - object)
        :precondition (and (At ?who ?from) (At ?in ?from) (Hired ?in) (Road ?from ?to))
        :effect (and (not(At ?who ?from)) (At ?who ?to) (not (At ?in ?from)) (At ?in ?to) (increase (total-cost) 1))
    )

    (:action HIRE 
         :parameters (?v - vehicle, ?where - object)
        :precondition (and (not (Hired ?v)) (At ?v ?where) (RentalAgencyOf ?v ?where))
         :effect (and (Hired ?v) (increase (total-cost) 2))
    )

    (:action RETURN
         :parameters (?v - vehicle, ?where - object)
        :precondition (and (Hired ?v) (At ?v ?where) (RentalAgencyOf ?v ?where))
        :effect (not (Hired ?v))
    )

    (:action BUS
        :parameters (?who - person ?from - object ?to - object)
        :precondition (and (At ?who ?from) (Road ?from ?to))
        :effect (and (not(At ?who ?from)) (At ?who ?to) (increase (total-cost) 5))
    )
     
    (:action FLY
        :parameters (?who - person ?from - object ?to - object)
        :precondition (and (At ?who ?from) (Air ?from ?to))
        :effect (and (not(At ?who ?from)) (At ?who ?to) (increase (total-cost) 10))
    ) 
   
    (:action VISIT
        :parameters (?who - person ?place - object)
        :precondition (and (IsAgent ?who) (At ?who ?place) (not (Visited ?place)))
        :effect (Visited ?place)
    )

)

