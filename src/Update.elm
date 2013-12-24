module Update where

import open Model

update : (Bool, (Int, Int)) -> VoltaState -> VoltaState
update (isClicked, (x, y)) state =
  if isClicked
    -- then { components = [PlacedComponent (Segment 1 2 3 4) Wire 1] }
    then { components = (PlacedComponent (Segment x y (x + 50) (y + 50)) Wire 1) :: state.components }  -- add
  else state -- return as-is
