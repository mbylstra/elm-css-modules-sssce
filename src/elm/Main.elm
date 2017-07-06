module Main exposing (..)

import Html exposing (div, p, Html, text)
import Html.Attributes
import Html.Events exposing (onClick)
import CssModules exposing (class, CssModule(..))
import Styles


-- APP


main : Program Never Int Msg
main =
    Html.beginnerProgram { model = model, view = view, update = update }



-- MODEL


type alias Model =
    Int


model : number
model =
    0



-- UPDATE


type Msg
    = NoOp
    | Increment


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model

        Increment ->
            model + 1



-- VIEW


primaryClasses =
    CssModule "./primary.css"
        { container = ""
        , efgh = ""
        }


secondaryClasses =
    CssModule "./secondary.css"
        { container = ""
        , ijkl = ""
        }


view : Model -> Html Msg
view model =
    div
        []
        [ p [ class .container Styles.primaryClasses ] [ text "class .container primaryClasses" ]
        , p [ class .efgh Styles.primaryClasses ] [ text "class .efgh primaryClasses" ]
        , p [ class .container Styles.secondaryClasses ] [ text "class .container secondaryClasses" ]
        , p [ class .ijkl Styles.secondaryClasses ] [ text "class .ijkl secondaryClasses" ]
        ]



-- CSS STYLES
