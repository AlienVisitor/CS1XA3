import Browser
import Html exposing (..)
import Html.Events exposing (onClick)
import Html.Attributes exposing (..)
import String exposing (..)

main =
 Browser.sandbox { init = init, update = update, view = view }

add : Float -> Float -> Float
add = (\x y -> x + y )

subtract : Float -> Float -> Float
subtract = (\x y -> x - y )

multiply : Float -> Float -> Float
multiply = (\x y -> x * y )

divide : Float -> Float -> Float
divide = (\x y -> x / y )

type alias Model =
  { display : String
  , function : Float -> Float -> Float
  , saveValue : Float
  }

init : Model
init = 
  { display = "0" 
  , function = (\x y -> y)
  , saveValue = 0
  }

makeStringfromInt : String -> Float
makeStringfromInt input = Maybe.withDefault 0 (String.toFloat input)

type Msg
    = None
    | Divide
    | Multiply
    | Subtract
    | Add
    | Equal
    | Decimal
    | Zero
    | Number Int
    | Clear

update : Msg -> Model -> Model
update msg model = 
  case msg of
    None -> model
    Clear -> init
    Number number -> { model | display = (model.display ++ String.fromInt(number))}
    Decimal -> if not (String.isEmpty model.display) then
                { model | display = model.display ++ "."}
            else
                { model | display = "0."}
    Zero ->  if String.isEmpty model.display then
                { model
                | display = "0"
                }
            else
                { model | display = model.display ++ "0" }
    Divide -> { model
            | function = divide
            , saveValue = (makeStringfromInt model.display)
            , display = "0"
            }
    Multiply -> { model
            | function = multiply
            , saveValue = (makeStringfromInt model.display)
            , display = "0"
            }
    Add -> { model
            | function = add
            , saveValue = (makeStringfromInt model.display)
            , display = "0"
            }
    Subtract -> { model
            | function = subtract
            , saveValue = (makeStringfromInt model.display)
            , display = "0"
            }
    Equal -> { model
            | display = String.fromFloat(model.function model.saveValue (makeStringfromInt model.display))
            , saveValue = model.display |> makeStringfromInt
            }

view : Model -> Html Msg
view model =
    div []
        [ div []
            [ div [] [text (model.display)] ]
        , div []
            [ div [] [ button [onClick Clear ] [text "      Clear      " ] ]
            ]
        , div []
            [ div [] [ button [ onClick (Number 7) ] [ text "7" ]
                     , button [ onClick (Number 8) ] [ text "8" ] 
                     , button [ onClick (Number 9) ] [ text "9" ]
                     , button [ onClick (Divide) ] [ text " /" ]
                     ]
            ]
        , div []
            [ div [] [ button [ onClick (Number 4) ] [ text "4" ]
                     , button [ onClick (Number 5) ] [ text "5" ] 
                     , button [ onClick (Number 6) ] [ text "6" ]
                     , button [ onClick (Multiply) ] [ text "x" ]
                     ]
            ]
        , div []
            [ div [] [ button [ onClick (Number 1) ] [ text "1" ]
                     , button [ onClick (Number 2) ] [ text "2" ] 
                     , button [ onClick (Number 3) ] [ text "3" ]
                     , button [ onClick (Add) ] [ text "+" ]
                     ]
            ]
        , div []
            [ div [] [ button [ onClick (Decimal) ] [ text " ." ]
                     , button [ onClick (Zero) ] [ text "0" ] 
                     , button [ onClick (Equal) ] [ text "=" ]
                     , button [ onClick (Subtract) ] [ text " -" ]
                     ]
            ]
        ]