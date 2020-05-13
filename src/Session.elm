module Session exposing (Session, init)

import Types.Flags


type alias Session =
    { images :
        { slide01 : String
        , slide02 : String
        , slide03 : String
        , slide04 : String
        , slide05 : String
        , pic01 : String
        , pic02 : String
        , pic03 : String
        , pic04 : String
        , bg : String
        }
    }


init : Types.Flags.Flags -> Session
init flags =
    Session flags.images
