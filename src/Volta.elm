module Volta where

import Window
import Circuit
import Sprites
import Logo
import Tools
import Colors

background w h = tiledImage w h "grid.svg" |> toForm

vir = map plainText ["120 V", "15 A", "6 Ω"]
display = flow down vir |> toForm |> move (-200,200)

toolbox w h = Tools.toolbox |> move (-(toFloat w) / 2 + 50, (toFloat h) / 2 - 100)

scene (w,h) circuit = collage w h [circuit,  display, Sprites.resistor,
                                   background w h, Logo.logo w h, toolbox w h]


main = scene <~ Window.dimensions ~ (Circuit.circuit <~ (foldp (+) 0 (fps 40)))
