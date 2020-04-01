(define (problem travelling-23)
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
        Car - vehicle
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
        (At Car E)
        (At Agent E)
    )
    (:goal (and 
        (Visited D)
        (At Agent B)
        (At Car C)))
)

