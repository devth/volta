import Window

wire = outlined (solid grey) (ngon 4 250) |> move (0, 0) |> rotate (degrees 45)

circuit r = wire |> rotate (degrees (r / 100))

vir = map plainText ["120 V", "15 A", "6 Ω"]

display = flow down vir |> toForm

resistor = croppedImage (20,120) 50 40 "icons.svg"
         |> toForm
         |> move (100, 100)

scene (w,h) circuit = collage w h [circuit,  display, resistor]

main = scene <~ Window.dimensions ~ (circuit <~ (foldp (+) 0 (fps 40)))
