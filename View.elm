module View exposing (..)


import Html exposing (Html)
import Element exposing (..)
import Element.Attributes exposing (..)
import Style.Color as Color
import Style.Border as Border
import Color exposing (..)
import Style exposing (..)

import Messages exposing (..)
import Models exposing (..)


type Styles = 
    None
    | Card
    | CardHeader
    | CardTitle
    | CardContent
    | CardImage

view : Model -> Html Msg
view model =
    Element.layout stylesheet <|
        column None [] (viewMemories model)


viewMemories : Model -> List (Element Styles variation msg)
viewMemories model = 
    List.map viewMemory model.memories

viewFirstImage : List Image -> String
viewFirstImage images = 
    case List.head images of
        Just image -> image.src
        Nothing -> ""

viewMemory : Memory -> Element Styles variation msg
viewMemory memory = 
    row Card [ center, padding 10, height (px 500) ]
        [ column None [ spacing 10, padding 5 ]
            [ row CardHeader [ center ]
                [ el CardTitle [] (text memory.title) 
                ]
            , row CardContent [ width fill, height fill ]
                [ image CardImage [] { src = (viewFirstImage memory.images), caption = "" }
                ]
            ]
        ]

stylesheet : StyleSheet Styles variation
stylesheet =
    Style.styleSheet
        [ Style.style Card
            []
        ]