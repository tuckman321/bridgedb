require 'test_helper'

class BridgesControllerTest < ActionController::TestCase
  setup do
    @bridge = bridges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bridges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bridge" do
    assert_difference('Bridge.count') do
      post :create, bridge: { Abut: @bridge.Abut, BackWall: @bridge.BackWall, Ballast: @bridge.Ballast, Bases: @bridge.Bases, Bearing: @bridge.Bearing, BridgeNo: @bridge.BridgeNo, Built: @bridge.Built, Caps: @bridge.Caps, ChiViaNo: @bridge.ChiViaNo, ColPier: @bridge.ColPier, ComAbut: @bridge.ComAbut, ComBackWall: @bridge.ComBackWall, ComBallast: @bridge.ComBallast, ComBase: @bridge.ComBase, ComBearing: @bridge.ComBearing, ComCap: @bridge.ComCap, ComColPier: @bridge.ComColPier, ComDeck: @bridge.ComDeck, ComEndpost: @bridge.ComEndpost, ComFloorSystem: @bridge.ComFloorSystem, ComHandrail: @bridge.ComHandrail, ComLight: @bridge.ComLight, ComPaint: @bridge.ComPaint, ComPost: @bridge.ComPost, ComSeat: @bridge.ComSeat, ComStringer: @bridge.ComStringer, ComThruGirder: @bridge.ComThruGirder, ComTrack: @bridge.ComTrack, ComWalkway: @bridge.ComWalkway, ComXGirder: @bridge.ComXGirder, Deck: @bridge.Deck, DotCrossNo: @bridge.DotCrossNo, Endpost: @bridge.Endpost, FloorSystem: @bridge.FloorSystem, GenCond: @bridge.GenCond, Handrail: @bridge.Handrail, InspectDate: @bridge.InspectDate, InspectedBy: @bridge.InspectedBy, LastInspectDate: @bridge.LastInspectDate, LastPaint: @bridge.LastPaint, LastRepairs: @bridge.LastRepairs, Length: @bridge.Length, Light: @bridge.Light, Location: @bridge.Location, MaintLight: @bridge.MaintLight, NoTypeSpan: @bridge.NoTypeSpan, Paint: @bridge.Paint, Post: @bridge.Post, RepairPriority: @bridge.RepairPriority, Seat: @bridge.Seat, Stringer: @bridge.Stringer, ThruGirder: @bridge.ThruGirder, Track: @bridge.Track, Type: @bridge.Type, Walkway: @bridge.Walkway, Xgirder: @bridge.Xgirder }
    end

    assert_redirected_to bridge_path(assigns(:bridge))
  end

  test "should show bridge" do
    get :show, id: @bridge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bridge
    assert_response :success
  end

  test "should update bridge" do
    patch :update, id: @bridge, bridge: { Abut: @bridge.Abut, BackWall: @bridge.BackWall, Ballast: @bridge.Ballast, Bases: @bridge.Bases, Bearing: @bridge.Bearing, BridgeNo: @bridge.BridgeNo, Built: @bridge.Built, Caps: @bridge.Caps, ChiViaNo: @bridge.ChiViaNo, ColPier: @bridge.ColPier, ComAbut: @bridge.ComAbut, ComBackWall: @bridge.ComBackWall, ComBallast: @bridge.ComBallast, ComBase: @bridge.ComBase, ComBearing: @bridge.ComBearing, ComCap: @bridge.ComCap, ComColPier: @bridge.ComColPier, ComDeck: @bridge.ComDeck, ComEndpost: @bridge.ComEndpost, ComFloorSystem: @bridge.ComFloorSystem, ComHandrail: @bridge.ComHandrail, ComLight: @bridge.ComLight, ComPaint: @bridge.ComPaint, ComPost: @bridge.ComPost, ComSeat: @bridge.ComSeat, ComStringer: @bridge.ComStringer, ComThruGirder: @bridge.ComThruGirder, ComTrack: @bridge.ComTrack, ComWalkway: @bridge.ComWalkway, ComXGirder: @bridge.ComXGirder, Deck: @bridge.Deck, DotCrossNo: @bridge.DotCrossNo, Endpost: @bridge.Endpost, FloorSystem: @bridge.FloorSystem, GenCond: @bridge.GenCond, Handrail: @bridge.Handrail, InspectDate: @bridge.InspectDate, InspectedBy: @bridge.InspectedBy, LastInspectDate: @bridge.LastInspectDate, LastPaint: @bridge.LastPaint, LastRepairs: @bridge.LastRepairs, Length: @bridge.Length, Light: @bridge.Light, Location: @bridge.Location, MaintLight: @bridge.MaintLight, NoTypeSpan: @bridge.NoTypeSpan, Paint: @bridge.Paint, Post: @bridge.Post, RepairPriority: @bridge.RepairPriority, Seat: @bridge.Seat, Stringer: @bridge.Stringer, ThruGirder: @bridge.ThruGirder, Track: @bridge.Track, Type: @bridge.Type, Walkway: @bridge.Walkway, Xgirder: @bridge.Xgirder }
    assert_redirected_to bridge_path(assigns(:bridge))
  end

  test "should destroy bridge" do
    assert_difference('Bridge.count', -1) do
      delete :destroy, id: @bridge
    end

    assert_redirected_to bridges_path
  end
end
