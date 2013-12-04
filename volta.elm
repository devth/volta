import Window

wire = outlined (solid grey) (ngon 4 250) |> move (0, 0) |> rotate (degrees 45)

circuit r = [ wire |> rotate (degrees (r / 100)) ]

scene (w,h) circuit = collage w h circuit

main = scene <~ Window.dimensions ~ (lift circuit (foldp (+) 0 (fps 40)))
