module Volta where

import Render
import Model (VoltaState, initialState)
import Update (update)
import Input (input)

currentState : Signal VoltaState
currentState = foldp update initialState input

main = lift asText currentState
