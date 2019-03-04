import Browser
import Html exposing (Html, Attribute, div, input, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)



-- I am the "MAIN" Commander


main =
  Browser.sandbox { init = init, update = update, view = view }



-- I prefer the ferrari 488 "MODEL" over 458


type alias Model =
  { iamold : String
  , iamnew : String
  }


init : Model
init =
  { iamold = "" 
  , iamnew = ""}



-- There are so many "UPDATE"s I have to download


type Msg
  = Change String
  | Man String


update : Msg -> Model -> Model
update msg model =
  case msg of
    Change newContent ->
      { model | iamold = newContent }
    Man newContent ->
      { model | iamnew = newContent }


-- I love the Scenic "VIEW" from my Window


view : Model -> Html Msg
view model =
  div []
    [ input [ placeholder "String 1", value model.iamold, onInput Change ] []
    , input [ placeholder "String 2", value model.iamnew, onInput Man ] []
    , div [] [ text ( model.iamold ++ " : " ++ model.iamnew) ]
    ]