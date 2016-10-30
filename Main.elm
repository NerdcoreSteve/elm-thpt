import Html exposing (Html, button, div, text, img)
import Html.App as App
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


main =
  App.beginnerProgram { model = model, view = view, update = update }


-- MODEL

type alias Model = String

model : Model
model =
  "public/images/some_face.png"

-- UPDATE

type Msg = Toggle

update : Msg -> Model -> Model
update msg model =
  case msg of
    Toggle ->
        if model == "public/images/some_face.png"
          then "public/images/poop_face.png"
          else "public/images/some_face.png"

-- VIEW

view : Model -> Html Msg
view model =
  img
    [ style
      [ ("height", "90vh")
      , ("display", "block")
      , ("margin-left", "auto")
      , ("margin-right", "auto")
      ]
      , src model
      , onClick Toggle
    ]
    [  ]
