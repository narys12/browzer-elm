module Update exposing (..)

import Models exposing (..)
import Messages exposing (..)

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    (model, Cmd.none)