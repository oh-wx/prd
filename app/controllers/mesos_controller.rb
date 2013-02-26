class MesosController < ApplicationController
  # GET /mesos
  # GET /mesos.json
  def index
    @mesos = Meso.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mesos }
    end
  end

  # GET /mesos/1
  # GET /mesos/1.json
  def show
    @meso = Meso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meso }
    end
  end

  # GET /mesos/new
  # GET /mesos/new.json
  def new
    @meso = Meso.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meso }
    end
  end

  # GET /mesos/1/edit
  def edit
    @meso = Meso.find(params[:id])
  end

  # POST /mesos
  # POST /mesos.json
  def create
    @meso = Meso.new(params[:meso])

    respond_to do |format|
      if @meso.save
        format.html { redirect_to @meso, notice: 'Meso was successfully created.' }
        format.json { render json: @meso, status: :created, location: @meso }
      else
        format.html { render action: "new" }
        format.json { render json: @meso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mesos/1
  # PUT /mesos/1.json
  def update
    @meso = Meso.find(params[:id])

    respond_to do |format|
      if @meso.update_attributes(params[:meso])
        format.html { redirect_to @meso, notice: 'Meso was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @meso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mesos/1
  # DELETE /mesos/1.json
  def destroy
    @meso = Meso.find(params[:id])
    @meso.destroy

    respond_to do |format|
      format.html { redirect_to mesos_url }
      format.json { head :no_content }
    end
  end
end
