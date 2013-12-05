module Sprites where

spritePath = "icons.svg"

mkSprite x y = croppedImage (x,y) 55 40 spritePath
             |> toForm

resistor = mkSprite 20 120
