module Models exposing (..)


type alias Model = 
    { memories : List Memory
    }


type alias Memory = 
    { id : String
    , title : String
    }