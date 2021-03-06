module Update where

import open Model

update : (Bool, (Int, Int)) -> VoltaState -> VoltaState
update (isClicked, (x, y)) state =
  if isClicked
    -- add a Wire
    then { components = (Component (Segment x y (x + 0) (y + 100)) Wire state.uid) :: state.components
         , uid = state.uid + 1}
  else state
