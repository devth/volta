module Logo where

logo : Int -> Int -> Form
logo screenW screenH = toText "VOLTA"
                       |> righted
                       |> height 30
                       |> toForm
                       |> move ((toFloat screenW) / 2 - 80, (toFloat screenH) / 2 - 60)
