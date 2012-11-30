class FrontEndsController < ApplicationController
  # GET /front_ends
  # GET /front_ends.json
  def index
    @front_ends = Weapon.all
    @types = Type.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @front_ends }
    end
  end
  
  def typeslist
    @type = Type.find(params[:id])
    #use this in a view, Type.weapon or whatever? not sure
  end
end