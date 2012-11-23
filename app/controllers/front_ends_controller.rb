class FrontEndsController < ApplicationController
  # GET /front_ends
  # GET /front_ends.json
  def index
    @front_ends = FrontEnd.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @front_ends }
    end
  end

  # GET /front_ends/1
  # GET /front_ends/1.json
  def show
    @front_end = FrontEnd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @front_end }
    end
  end

  # GET /front_ends/new
  # GET /front_ends/new.json
  def new
    @front_end = FrontEnd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @front_end }
    end
  end

  # GET /front_ends/1/edit
  def edit
    @front_end = FrontEnd.find(params[:id])
  end

  # POST /front_ends
  # POST /front_ends.json
  def create
    @front_end = FrontEnd.new(params[:front_end])

    respond_to do |format|
      if @front_end.save
        format.html { redirect_to @front_end, notice: 'Front end was successfully created.' }
        format.json { render json: @front_end, status: :created, location: @front_end }
      else
        format.html { render action: "new" }
        format.json { render json: @front_end.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /front_ends/1
  # PUT /front_ends/1.json
  def update
    @front_end = FrontEnd.find(params[:id])

    respond_to do |format|
      if @front_end.update_attributes(params[:front_end])
        format.html { redirect_to @front_end, notice: 'Front end was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @front_end.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /front_ends/1
  # DELETE /front_ends/1.json
  def destroy
    @front_end = FrontEnd.find(params[:id])
    @front_end.destroy

    respond_to do |format|
      format.html { redirect_to front_ends_url }
      format.json { head :no_content }
    end
  end
end
