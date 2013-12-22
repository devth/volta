module Circuit where

import Colors
import Sprites

wire = outlined (solid Colors.wire) (ngon 4 250) |> move (0, 0) |> rotate (degrees 45)

circuit r = wire -- |> rotate (degrees (r / 20))
