class CreateBridges < ActiveRecord::Migration
  def change
    create_table :bridges do |t|
      t.string :BridgeNo
      t.string :Location
      t.string :InspectedBy
      t.date :InspectDate
      t.string :ChiViaNo
      t.string :DotCrossNo
      t.integer :Built
      t.string :Type
      t.integer :Length
      t.date :LastInspectDate
      t.string :LastRepairs
      t.string :NoTypeSpan
      t.integer :RepairPriority
      t.string :GenCond
      t.integer :Walkway
      t.string :ComWalkway
      t.integer :Handrail
      t.string :ComHandrail
      t.integer :Track
      t.string :ComTrack
      t.integer :Ballast
      t.string :ComBallast
      t.integer :Deck
      t.string :ComDeck
      t.integer :FloorSystem
      t.string :ComFloorSystem
      t.integer :ThruGirder
      t.string :ComThruGirder
      t.integer :Xgirder
      t.string :ComXGirder
      t.integer :Stringer
      t.string :ComStringer
      t.integer :Bearing
      t.string :ComBearing
      t.integer :ColPier
      t.string :ComColPier
      t.integer :Caps
      t.string :ComCap
      t.integer :Post
      t.string :ComPost
      t.integer :Bases
      t.string :ComBase
      t.integer :Abut
      t.string :ComAbut
      t.integer :BackWall
      t.string :ComBackWall
      t.integer :Seat
      t.string :ComSeat
      t.integer :Paint
      t.string :ComPaint
      t.date :LastPaint
      t.integer :Light
      t.string :ComLight
      t.string :MaintLight
      t.integer :Endpost
      t.string :ComEndpost

      t.timestamps null: false
    end
  end
end
