module OwnershipCustody

-- Imports/Dependencies
-- import necessary modules and libraries

-- State Variables
record OwnershipState =
  { ownership_registry : Map(Address, List(String))  -- Maps a user address to a list of owned assets (identified by asset ID or name)
  , custodian_registry : Map(String, Address)  -- Maps an asset ID to the custodian’s address
  }

-- Initial State
defaultOwnershipState : OwnershipState
defaultOwnershipState =
  { ownership_registry = Map.empty
  , custodian_registry = Map.empty
  }

-- Transfer Ownership Function
transferOwnership : Address -> Address -> String -> OwnershipState -> Result String OwnershipState
transferOwnership current_owner new_owner asset_id state =
  case Map.lookup current_owner state.ownership_registry of
    Just owned_assets ->
      if List.member asset_id owned_assets then
        let
          updated_old_owner_assets = List.filter (\x -> x /= asset_id) owned_assets
          updated_new_owner_assets = case Map.lookup new_owner state.ownership_registry of
                                      Just assets -> asset_id :: assets
                                      Nothing -> [asset_id]
          updated_registry = Map.insert new_owner updated_new_owner_assets (Map.insert current_owner updated_old_owner_assets state.ownership_registry)
        in
          Ok { state with ownership_registry = updated_registry }
      else
        Error "Asset not owned by current owner"
    Nothing -> Error "Current owner does not own any assets"

-- Check Ownership Function
checkOwnership : Address -> String -> OwnershipState -> Bool
checkOwnership user asset_id state =
  case Map.lookup user state.ownership_registry of
    Just owned_assets -> List.member asset_id owned_assets
    Nothing -> False

-- Register Custodian Function (Assign custodian for an asset)
registerCustodian : String -> Address -> OwnershipState -> OwnershipState
registerCustodian asset_id custodian state =
  let
    updated_custodian_registry = Map.insert asset_id custodian state.custodian_registry
  in
    { state with custodian_registry = updated_custodian_registry }

-- Example usage:
-- transferOwnership old_owner new_owner "Asset_001" state
-- checkOwnership user_address "Asset_001" state
-- registerCustodian "Asset_001" custodian_address state