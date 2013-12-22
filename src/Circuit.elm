module Circuit where

import Colors
import Sprites
import Dimensions (gridSize)

data Orientation = Vertical | Horizontal

wire = outlined (solid Colors.wire) (ngon 4 250) |> move (0, 0) |> rotate (degrees 45)

-- addWire x y =

circuit r = wire -- |> rotate (degrees (r / 20))
