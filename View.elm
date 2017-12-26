module View exposing (..)


import Html exposing (Html)
import Element exposing (..)
import Style exposing (..)

import Messages exposing (..)
import Models exposing (..)


type Styles = 
    None
    | Card

view : Model -> Html Msg
view model =
    Element.layout stylesheet <|
        row None [] (viewMemories model)


viewMemories : Model -> List (Element Styles variation msg)
viewMemories model = 
    List.map viewMemory model.memories

viewMemory : Memory -> Element Styles variation msg
viewMemory memory = 
    el Card [] (text memory.title)

stylesheet : StyleSheet Styles variation
stylesheet =
    Style.styleSheet
        [ Style.style Card []
        ]