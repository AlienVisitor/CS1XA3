module Main exposing (..)

import Browser
import Browser.Navigation exposing (load)
import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import Questions exposing (..)

import Json.Decode as Decode exposing (..)
import Json.Encode as Encode exposing (..)

main =
    Browser.element
        { init = init
        , update = update
        , subscriptions = \_ -> Sub.none
        , view = view
        }

rootUrl = "https://mac1xa3.ca/u/gabah/"

-- model

type alias Model = 
    { index : Int
    , questions : List Question
    , score : Int
    , username : String
    , password : String
    , name : String
    , auth : String
    }

init : () -> (Model, Cmd Msg)
init _ = 
    ({ index = 0
    , questions = Questions.question
    , score = 0
    , username = "Enter your username"
    , password = "Enter your password"
    , name = "Enter your name"
    , auth = "F"
    }, Cmd.none)

userEncoder : Model -> Encode.Value
userEncoder model = 
    Encode.object 
        [ ("username", Encode.string model.username)
        , ("password", Encode.string model.password) 
        , ("score", Encode.int model.score)
        ]

-- update

type Msg = CheckAnswer String 
        | Logout
        | End

update : Msg -> Model -> (Model , Cmd Msg)
update msg model = 
    case msg of
        CheckAnswer answer1 ->
            let
                question = currentQuestion (List.head model.questions)
            in
                ({ model | index = model.index + 1
                , questions = List.drop 1 model.questions
                , score = if answer1 == question.correctAnswer then model.score + 1 else model.score
                }, Cmd.none)
        Logout ->
            ( model , load (rootUrl ++ "project03.html") )
        End ->
            ({ model | index = 0
            , questions = List.drop 5 model.questions
            , score = 0 }, Cmd.none)

-- view

currentQuestion : Maybe Question -> Question
currentQuestion question1 =
    case question1 of
        Just question ->
            question
        Nothing ->
            { question = ""
            , answers = []
            , correctAnswer = ""
            }

answer : String -> Html Msg
answer answer1 = 
    button [ onClick (CheckAnswer answer1) ] [ text answer1 ]

stylesheet = node "link" [attribute "rel" "stylesheet",
                          href "main.css"] 
                          []

view : Model -> Html Msg
view model =
    let
        question = currentQuestion (List.head model.questions)
    in
        if question.question /= ""
            then 
                div []
                [ div [ class "Trivia" ]
                        [ stylesheet
                        , div [] 
                            [ h1  [ class "title" ] [ text "Trivia!" ]
                            , div [ class "question" ] [ text question.question ]
                            , div [] (List.map answer question.answers) 
                            ]
                        ]
                , div []
                    [ div [] [ button [ onClick End ] [ text "End" ] ]
                    ]
                ]
            else
                div []
                [ div [ class "Trivia" ]
                    [ stylesheet 
                    , div []
                        [ h1  [ class "title" ] [ text "Trivia!" ]
                        , h3  [class "title score"][ text ("You Got " ++ (String.fromInt model.score) ++ " Points!") ]
                        ]
                    ]
                , div []
                    [ div [] [ button [ onClick Logout ] [ text "LogOUT" ] ] 
                    ]
                ]