module Input where

import Mouse
import Window

input : Signal (Bool, (Int, Int))
input = lift2 (,) Mouse.isClicked Mouse.position
