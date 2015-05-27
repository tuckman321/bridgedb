json.array!(@bridges) do |bridge|
  json.extract! bridge, :id, :BridgeNo, :Location, :InspectedBy, :InspectDate, :ChiViaNo, :DotCrossNo, :Built, :Type, :Length, :LastInspectDate, :LastRepairs, :NoTypeSpan, :RepairPriority, :GenCond, :Walkway, :ComWalkway, :Handrail, :ComHandrail, :Track, :ComTrack, :Ballast, :ComBallast, :Deck, :ComDeck, :FloorSystem, :ComFloorSystem, :ThruGirder, :ComThruGirder, :Xgirder, :ComXGirder, :Stringer, :ComStringer, :Bearing, :ComBearing, :ColPier, :ComColPier, :Caps, :ComCap, :Post, :ComPost, :Bases, :ComBase, :Abut, :ComAbut, :BackWall, :ComBackWall, :Seat, :ComSeat, :Paint, :ComPaint, :LastPaint, :Light, :ComLight, :MaintLight, :Endpost, :ComEndpost
  json.url bridge_url(bridge, format: :json)
end
