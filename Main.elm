import Html exposing (Html, button, div, text)
import Html.App as App
import Html.Events exposing (onClick)


main =
  App.beginnerProgram { model = model, view = view, update = update }


-- MODEL

type alias Model = String

model : Model
model =
  "smiley"


-- UPDATE

type Msg = Toggle

update : Msg -> Model -> Model
update msg model =
  case msg of
    Toggle ->
        "poop"

-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ div [onClick Toggle] [ text model ] ]
