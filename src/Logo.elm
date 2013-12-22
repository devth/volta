module Logo where

import Colors
import Text

logo : Int -> Int -> Form
logo screenW screenH = toText "VOLTA"
                       |> typeface "'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica"
                       |> Text.color Colors.logo
                       |> Text.height 30
                       |> righted
                       |> toForm
                       |> move ((toFloat screenW) / 2 - 80, (toFloat screenH) / 2 - 60)
