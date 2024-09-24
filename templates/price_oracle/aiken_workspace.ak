module PriceOracle

-- Imports/Dependencies
-- import necessary modules and libraries

-- State Variables
record PriceState =
  { prices : Map(String, Int)  -- Maps asset name to its price
  , last_updated : Map(String, Time)  -- Maps asset name to the last updated timestamp
  }

-- Initial State
defaultPriceState : PriceState
defaultPriceState = 
  { prices = Map.empty
  , last_updated = Map.empty
  }

-- Fetch Price Function
fetchPrice : String -> PriceState -> Result String Int
fetchPrice asset state =
  case Map.lookup asset state.prices of
    Just price -> Ok price
    Nothing -> Error ("Price for asset " ++ asset ++ " not available")

-- Update Price Function (Triggered by external oracle feeds)
updatePrice : String -> Int -> Time -> PriceState -> PriceState
updatePrice asset new_price timestamp state =
  let
    updated_prices = Map.insert asset new_price state.prices
    updated_timestamp = Map.insert asset timestamp state.last_updated
  in
    { state with prices = updated_prices, last_updated = updated_timestamp }

-- Example usage:
-- fetchPrice "ADA" state
-- updatePrice "ADA" 200 current_time state