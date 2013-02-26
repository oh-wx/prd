class WwsController < ApplicationController
  # GET /wws
  # GET /wws.json
  def index
    @wws = Ww.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wws }
    end
  end

  # GET /wws/1
  # GET /wws/1.json
  def show
    @ww = Ww.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ww }
    end
  end

  # GET /wws/new
  # GET /wws/new.json
  def new
    @ww = Ww.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ww }
    end
  end

  # GET /wws/1/edit
  def edit
    @ww = Ww.find(params[:id])
  end

  # POST /wws
  # POST /wws.json
  def create
    @ww = Ww.new(params[:ww])

    respond_to do |format|
      if @ww.save
        format.html { redirect_to @ww, notice: 'Ww was successfully created.' }
        format.json { render json: @ww, status: :created, location: @ww }
      else
        format.html { render action: "new" }
        format.json { render json: @ww.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wws/1
  # PUT /wws/1.json
  def update
    @ww = Ww.find(params[:id])

    respond_to do |format|
      if @ww.update_attributes(params[:ww])
        format.html { redirect_to @ww, notice: 'Ww was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ww.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wws/1
  # DELETE /wws/1.json
  def destroy
    @ww = Ww.find(params[:id])
    @ww.destroy

    respond_to do |format|
      format.html { redirect_to wws_url }
      format.json { head :no_content }
    end
  end
end
