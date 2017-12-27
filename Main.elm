module Main exposing (..)


import Html exposing (..)
import Messages exposing (..)
import Models exposing (..)
import Update exposing (..)
import View exposing (..)


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
    }


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


init : (Model, Cmd Msg)
init = 
    (Model (List.repeat 3 (Memory "1" "Paris" (List.repeat 2 (Image "https://cache-graphicslib.viator.com/graphicslib/thumbs360x240/26685/SITours/discover-prague-private-tour-3-hours-in-prague-277569.jpg")))), Cmd.none)