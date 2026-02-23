module Helper exposing (..)

import Html exposing (Html, a, div, h1, h2, h3, h4, h5, h6, li, text, ul)
import Html.Attributes exposing (href)


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "32"
    , model = "Thinkpad x1"
    , brand = "Lenovo"
    , screenSize = "13.5"
    }


anItem : String -> Html msg
anItem content =
    Html.li [] [ Html.text content ]


aList : List String -> Html msg
aList contents =
    Html.ul [] (List.map anItem contents)


headers : String -> Html msg
headers param =
    div []
        [ h1 [] [ text param ]
        , h2 [] [ text param ]
        , h3 [] [ text param ]
        , h4 [] [ text param ]
        , h5 [] [ text param ]
        , h6 [] [ text param ]
        ]


hyperlink : String -> String -> Html msg
hyperlink url txt =
    a [ href url ] [ text txt ]


main : Html msg
main =
    div []
        [ h1 [] [ text "My laptop" ]
        , div []
            [ aList
                [ "Ram: " ++ myLaptop.ram
                , "Modelo: " ++ myLaptop.model
                , "Marca: " ++ myLaptop.brand
                , "Pulgadas: " ++ myLaptop.screenSize
                ]
            ]
        , headers "Tarea de Encabezados"
        , hyperlink "https://google.com" "Tarea de Link"
        ]
