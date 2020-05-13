module Pages.Home exposing (Model, Msg(..), init, update, view)

import Browser
import Browser.Events
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events
import Session
import Utils exposing (..)
import Viewer



{-
   This is the top page - the page that is displayed when the url path is "/"
-}
-- MODEL


type alias Model =
    { session : Session.Session
    }



-- INIT


init : Session.Session -> ( Model, Cmd Msg )
init session =
    ( Model session, Cmd.none )



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



-- VIEW


view : Model -> Viewer.Details Msg
view model =
    let
        backgroundImageStyle =
            "url(" ++ model.session.images.bg ++ ")"
    in
    { title = toTitle
    , body =
        [ section [ class "banner full" ]
            [ article []
                [ img [ src model.session.images.slide01 ] []
                , div [ class "inner" ]
                    [ header []
                        [ p [] [ text "CROFT AQUATICS ARE SPECIALISTS IN" ]
                        , h2 [] [ text "Aquaculture" ]
                        ]
                    ]
                ]
            , article []
                [ img [ src model.session.images.slide02 ] []
                , div [ class "inner" ]
                    [ header []
                        [ p [] [ text "HELPING TO ENSURE THAT THAT THE MARINE AQUARIUM TRADE IS" ]
                        , h2 [] [ text "Sustainable" ]
                        ]
                    ]
                ]
            , article []
                [ img [ src model.session.images.slide03 ] []
                , div [ class "inner" ]
                    [ header []
                        [ p [] [ text "PROVIDING LIVESTOCK OF THE HIGHEST" ]
                        , h2 [] [ text "Quality" ]
                        ]
                    ]
                ]
            , article []
                [ img [ src model.session.images.slide04 ] []
                , div [ class "inner" ]
                    [ header []
                        [ p [] [ text "UPPERMOST IN OUR MINDS IS THE LIVESTOCKS" ]
                        , h2 [] [ text "Welfare" ]
                        ]
                    ]
                ]
            , article []
                [ img [ src model.session.images.slide05 ] []
                , div [ class "inner" ]
                    [ header []
                        [ p [] [ text "ALWAYS ON HAND TO PROVIDE" ]
                        , h2 [] [ text "Advice" ]
                        ]
                    ]
                ]
            ]

        -- One
        , section [ id "one", class "wrapper style2" ]
            [ div [ class "inner" ]
                [ div [ class "content" ]
                    [ header [ class "align-center" ]
                        [ --p [ class "special" ] [ text "Nam vel ante sit amet libero scelerisque facilisis eleifend vitae urna" ]
                          h2 [] [ text "Who we are" ]
                        ]
                    , p []
                        [ text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at dignissim augue, in iaculis neque. Etiam bibendum felis ac vulputate pellentesque. Cras non blandit quam. Nunc porta, est non posuere sagittis, neque nunc pellentesque diam, a iaculis lacus urna vitae purus. In non dui vel est tempor faucibus. Aliquam erat volutpat. Quisque vel est vitae nibh laoreet auctor. In nec libero dui. Nulla ullamcorper, dolor nec accumsan viverra, libero eros rutrum metus, vel lacinia magna odio non nunc. Praesent semper felis eu rhoncus aliquam. Donec at quam ac libero vestibulum pretium. Nunc faucibus vel arcu in malesuada. Aenean at velit odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Maecenas commodo erat eget molestie sollicitudin. Donec imperdiet, ex sed blandit dictum, ipsum metus ultrices arcu, vitae euismod nisl sapien vitae tortor."
                        ]
                    , p []
                        [ text "Vivamus nec odio ac ligula congue feugiat at vitae leo. Aenean sem justo, finibus sed dui eu, accumsan facilisis dolor. Fusce quis dui eget odio iaculis aliquam vel sed velit. Nulla pellentesque posuere semper. Nulla eu sagittis lorem, a auctor nulla. Sed ac condimentum orci, ac varius ante. Nunc blandit quam sit amet sollicitudin sodales."
                        ]
                    , p []
                        [ text "Vivamus ultricies mollis mauris quis molestie. Quisque eu mi velit. In et cursus nibh. Donec facilisis, orci sed mollis hendrerit, nunc risus mattis odio, eget efficitur nisl orci a lectus. Aenean finibus neque convallis orci sollicitudin tincidunt. Vivamus lacinia facilisis diam, quis facilisis nisi luctus nec. Aliquam ac molestie enim, ut ultrices elit. Fusce laoreet vulputate risus in tincidunt. Sed commodo mollis maximus. Nullam varius laoreet nibh sit amet facilisis. Donec ac odio vehicula, consequat elit et, sodales justo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam ac auctor mauris, in hendrerit libero."
                        ]
                    ]
                ]
            ]

        -- , section [ id "one", class "wrapper style2" ]
        --     [ div [ class "inner" ]
        --         [ header [ class "align-center" ]
        --             [ p [ class "special" ] [ text "Nam vel ante sit amet libero scelerisque facilisis eleifend vitae urna" ]
        --             , h2 [] [ text "Morbi maximus justo" ]
        --             ]
        --         , br [] []
        --         , div [ class "grid-style" ]
        --             [ div []
        --                 [ div [ class "box" ]
        --                     [ div [ class "image fit" ]
        --                         [ img [ src model.session.images.pic02 ] []
        --                         ]
        --                     , div [ class "content" ]
        --                         [ header [ class "align-center" ]
        --                             [ -- p []
        --                               -- [ text "maecenas sapien feugiat ex purus"
        --                               -- ]
        --                               h2 []
        --                                 [ text "Clownfish"
        --                                 ]
        --                             ]
        --                         , p []
        --                             [ text "Cras aliquet urna ut sapien tincidunt, quis malesuada elit facilisis. Vestibulum sit amet tortor velit. Nam elementum nibh a libero pharetra elementum. Maecenas feugiat ex purus, quis volutpat lacus placerat malesuada."
        --                             ]
        --                         , footer [ class "align-center" ]
        --                             [ a [ href "/", class "button alt" ] [ text "Learn More" ]
        --                             ]
        --                         ]
        --                     ]
        --                 ]
        --             , div []
        --                 [ div [ class "box" ]
        --                     [ div [ class "image fit" ]
        --                         [ img [ src model.session.images.pic03 ] []
        --                         ]
        --                     , div [ class "content" ]
        --                         [ header [ class "align-center" ]
        --                             [ -- p []
        --                               -- [ text "mattis elementum sapien pretium tellus"
        --                               -- ]
        --                               h2 []
        --                                 [ text "Seahorses"
        --                                 ]
        --                             ]
        --                         , p []
        --                             [ text "Cras aliquet urna ut sapien tincidunt, quis malesuada elit facilisis. Vestibulum sit amet tortor velit. Nam elementum nibh a libero pharetra elementum. Maecenas feugiat ex purus, quis volutpat lacus placerat malesuada."
        --                             ]
        --                         , footer [ class "align-center" ]
        --                             [ a [ href "/", class "button alt" ] [ text "Learn More" ]
        --                             ]
        --                         ]
        --                     ]
        --                 ]
        --             ]
        --         ]
        --     ]
        -- Two
        , section [ id "two", class "wrapper style3", style "background-image" backgroundImageStyle ]
            [ div [ class "inner" ]
                [ header [ class "align-center" ]
                    [ p [] [ text "PLEASE CONTACT US FOR FURTHER INFORMATION" ]
                    , h2 []
                        [ a [ href "mailto:croft.aquatics@gmail.com", style "color" "#ffffff", style "padding-right" "2em", target "_blank" ]
                            [ text "Email: croft.aquatics@gmail.com"
                            ]
                        , text
                            "Phone: 07866 911100"
                        ]
                    ]
                ]
            ]
        , section [ id "one", class "wrapper style2" ]
            [ div [ class "inner" ]
                [ header [ class "align-center" ]
                    [ --p [ class "special" ] [ text "Nam vel ante sit amet libero scelerisque facilisis eleifend vitae urna" ]
                      h2 [] [ text "The fish we supply" ]
                    ]
                , br [] []
                , div [ class "grid-style" ]
                    [ div []
                        [ div [ class "box" ]
                            [ div [ class "image fit" ]
                                [ img [ src model.session.images.pic02 ] []
                                ]
                            , div [ class "content" ]
                                [ header [ class "align-center" ]
                                    [ -- p []
                                      -- [ text "maecenas sapien feugiat ex purus"
                                      -- ]
                                      h2 []
                                        [ text "Clownfish"
                                        ]
                                    ]

                                -- , p []
                                --     [ text "Cras aliquet urna ut sapien tincidunt, quis malesuada elit facilisis. Vestibulum sit amet tortor velit. Nam elementum nibh a libero pharetra elementum. Maecenas feugiat ex purus, quis volutpat lacus placerat malesuada."
                                --     ]
                                , footer [ class "align-center" ]
                                    [ a [ href "/", class "button alt" ] [ text "Learn More" ]
                                    ]
                                ]
                            ]
                        ]
                    , div []
                        [ div [ class "box" ]
                            [ div [ class "image fit" ]
                                [ img [ src model.session.images.pic03 ] []
                                ]
                            , div [ class "content" ]
                                [ header [ class "align-center" ]
                                    [ -- p []
                                      -- [ text "mattis elementum sapien pretium tellus"
                                      -- ]
                                      h2 []
                                        [ text "Seahorses"
                                        ]
                                    ]

                                -- , p []
                                --     [ text "Cras aliquet urna ut sapien tincidunt, quis malesuada elit facilisis. Vestibulum sit amet tortor velit. Nam elementum nibh a libero pharetra elementum. Maecenas feugiat ex purus, quis volutpat lacus placerat malesuada."
                                --     ]
                                , footer [ class "align-center" ]
                                    [ a [ href "/", class "button alt" ] [ text "Learn More" ]
                                    ]
                                ]
                            ]
                        ]
                    ]
                ]
            ]

        -- Three
        -- , section [ id "three", class "wrapper style2" ]
        --     [ div [ class "inner" ]
        --         [ header [ class "align-center" ]
        --             [ p [ class "special" ] [ text "Nam vel ante sit amet libero scelerisque facilisis eleifend vitae urna" ]
        --             , h2 [] [ text "Morbi maximus justo" ]
        --             ]
        --         , div [ class "gallery" ]
        --             [ div []
        --                 [ div [ class "image fit" ]
        --                     [ a [ href "/" ]
        --                         [ img [ src model.session.images.pic01 ] []
        --                         ]
        --                     ]
        --                 ]
        --             , div []
        --                 [ div [ class "image fit" ]
        --                     [ a [ href "/" ]
        --                         [ img [ src model.session.images.pic02 ] []
        --                         ]
        --                     ]
        --                 ]
        --             , div []
        --                 [ div [ class "image fit" ]
        --                     [ a [ href "/" ]
        --                         [ img [ src model.session.images.pic03 ] []
        --                         ]
        --                     ]
        --                 ]
        --             , div []
        --                 [ div [ class "image fit" ]
        --                     [ a [ href "/" ]
        --                         [ img [ src model.session.images.pic04 ] []
        --                         ]
        --                     ]
        --                 ]
        --             ]
        --         ]
        --     ]
        ]
    , baseClass = ""
    , headerClass = ""
    }



-- HELPERS


toTitle : String
toTitle =
    "Home Page"
