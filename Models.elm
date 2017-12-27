module Models exposing (..)


type alias Model = 
    { memories : List Memory
    }

type alias Image = 
    { src : String 
    }

type alias Memory = 
    { id : String
    , title : String
    , images : List Image
    }