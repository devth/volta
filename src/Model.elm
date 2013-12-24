module Model where

data Component = Wire | Resistor | Battery

type Segment = { x1:Int, y1:Int, x2:Int, y2:Int }

type PlacedComponent = { pos:Segment, component: Component, id:Int }

type VoltaState = { components: [PlacedComponent] }

initialState : VoltaState
initialState = { components=[] }

data Action = Add PlacedComponent | Remove
