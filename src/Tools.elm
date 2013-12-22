module Tools where

import Colors
import Dimensions (gridSize)

boxSize = gridSize - 2

box = outlined (solid Colors.toolbox) (square boxSize) |> move (25, 0)

boxed : Form -> Element
boxed f = collage 100 50 [f, box]

trace p = traced (solid Colors.wire) p

wireH = segment (10, 0) (40, 0) |> trace

wireV = segment (25, 15) (25, -15) |> trace

tools : [Element]
tools = map boxed [wireH, wireV]

toolbox = flow down tools |> toForm
