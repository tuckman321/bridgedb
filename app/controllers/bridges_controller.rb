class BridgesController < ApplicationController
  before_action :set_bridge, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @bridges = Bridge.all
  end

  def show
  end

  def new
    @bridge = current_user.bridges.build
  end

  def edit
  end

  def create
    @bridge = current_user.bridges.build(bridge_params)
    if @bridge.save
      redirect_to @bridge, notice: 'Bridge was successfully created.'
    else
      render 'new'
    end
  end

  def update
    if @bridge.update(bridge_params)
      redirect_to @bridge, notice: 'Bridge was successfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
    @bridge.destroy
    redirect_to bridges_url, notice: 'Bridge was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bridge
      @bridge = Bridge.find(params[:id])
    end

    def correct_user
      @bridge = current_user.bridges.find_by(id: params[:id])
      redirect_to bridges_path, notice: "Not authorized to edit this bridge" if @bridge.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bridge_params
      params.require(:bridge).permit(:image, :BridgeNo, :Location, :InspectedBy, :InspectDate, :ChiViaNo, :DotCrossNo, :Built, :Type, :Length, :LastInspectDate, :LastRepairs, :NoTypeSpan, :RepairPriority, :GenCond, :Walkway, :ComWalkway, :Handrail, :ComHandrail, :Track, :ComTrack, :Ballast, :ComBallast, :Deck, :ComDeck, :FloorSystem, :ComFloorSystem, :ThruGirder, :ComThruGirder, :Xgirder, :ComXGirder, :Stringer, :ComStringer, :Bearing, :ComBearing, :ColPier, :ComColPier, :Caps, :ComCap, :Post, :ComPost, :Bases, :ComBase, :Abut, :ComAbut, :BackWall, :ComBackWall, :Seat, :ComSeat, :Paint, :ComPaint, :LastPaint, :Light, :ComLight, :MaintLight, :Endpost, :ComEndpost)
    end
end
