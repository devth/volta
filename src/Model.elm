module Model where

data ComponentType = Wire | Resistor | Battery

type Segment = { x1:Int, y1:Int, x2:Int, y2:Int }

type Component = { pos:Segment, component: ComponentType, id:Int }

type VoltaState = { components: [Component], uid:Int }

initialState : VoltaState
initialState = { components=[], uid=0 }
