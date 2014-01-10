module Circuit where

import Colors
import Sprites
import Dimensions (gridSize)

data Orientation = Vertical | Horizontal

wire = outlined (solid Colors.wire) (ngon 4 250) |> move (0, 0) |> rotate (degrees 45)

drawWire {x1, x2, y1, y2} = traced (solid Colors.wire) (segment (toFloat x1, toFloat y1) (toFloat x2, toFloat y2))

draw {component, pos, id} = drawWire pos

debug = toForm . asText

-- addWire x y =

circuit {components, uid} = map draw components |> group -- wire -- |> rotate (degrees (r / 20))
