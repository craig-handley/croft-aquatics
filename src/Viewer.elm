module Viewer exposing (Details, notFound, view)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Session
import Url.Builder
import Utils



{-
   This module builds the view. Every individual page's view function returns a Viewer.Details,
   which is used to generate a Browser.Document msg in this module
-}


type alias Details msg =
    { title : String
    , body : List (Html msg)
    , baseClass : String
    , headerClass : String
    }



-- VIEW


view : Session.Session -> (a -> msg) -> Details a -> Browser.Document msg
view session msg details =
    { title = details.title ++ Utils.genericTitle
    , body =
        [ div [ id "top", class details.baseClass ]
            [ viewHeader session details
            , Html.map msg <| div [] details.body
            , viewFooter session
            ]
        ]
    }



-- HEADER


viewHeader : Session.Session -> Details a -> Html msg
viewHeader session details =
    div []
        [ header [ id "header", class details.headerClass ]
            [ div [ class "logo" ]
                [ text "CROFT "
                , span []
                    [ text "AQUATICS"
                    ]
                ]
            , a [ href "#menu" ]
                [ text "Menu"
                ]
            ]
        , nav [ id "menu" ]
            [ ul [ class "links" ]
                [ li []
                    [ a [ href "/" ]
                        [ text "Home"
                        ]
                    ]
                , li []
                    [ a [ href "/about" ]
                        [ text "About"
                        ]
                    ]
                ]
            ]
        ]



-- FOOTER


viewFooter : Session.Session -> Html msg
viewFooter session =
    footer [ id "footer" ]
        [ div [ class "container" ]
            [ ul [ class "icons" ]
                [ li []
                    [ a [ href "/", class "icon fab fa-linkedin-in fa-lg" ]
                        [ span [ class "label" ] [ text "LinkedIn" ]
                        ]
                    ]
                ]
            ]
        , div [ class "copyright" ]
            [ a [ rel "license", href "http://creativecommons.org/licenses/by/3.0/", style "padding-right" "1rem" ]
                [ img [ alt "Creative Commons License", style "border-width" "0", src "https://i.creativecommons.org/l/by/3.0/80x15.png" ] []
                ]
            , text "This work is licensed under a "
            , a [ rel "license", href "http://creativecommons.org/licenses/by/3.0/" ]
                [ text "Creative Commons Attribution 3.0 Unported License"
                ]

            -- text "© 2020 Craig Handley. All rights reserved."
            ]
        ]



-- 404 PAGE (NotFound)


notFound : Details msg
notFound =
    { title = "Page Not Found"
    , body =
        [ div [ class "not-found" ]
            [ div [ style "font-size" "12em" ] [ text "404" ]
            , h1 [ style "font-size" "3.5em" ] [ text "Page Not Found" ]
            , h3 [ style "font-size" "1.5em" ]
                [ text "Oops - Looks like you got lost or clicked a bad link! "
                , a [ href "/" ] [ text "Click here " ]
                , text "to go back to the home page."
                ]
            ]
        ]
    , baseClass = "subpage"
    , headerClass = ""
    }
