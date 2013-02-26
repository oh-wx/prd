class OutlooksController < ApplicationController
  # GET /outlooks
  # GET /outlooks.json
  def index
    @outlooks = Outlook.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @outlooks }
    end
  end

  # GET /outlooks/1
  # GET /outlooks/1.json
  def show
    @outlook = Outlook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @outlook }
    end
  end

  # GET /outlooks/new
  # GET /outlooks/new.json
  def new
    @outlook = Outlook.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @outlook }
    end
  end

  # GET /outlooks/1/edit
  def edit
    @outlook = Outlook.find(params[:id])
  end

  # POST /outlooks
  # POST /outlooks.json
  def create
    @outlook = Outlook.new(params[:outlook])

    respond_to do |format|
      if @outlook.save
        format.html { redirect_to @outlook, notice: 'Outlook was successfully created.' }
        format.json { render json: @outlook, status: :created, location: @outlook }
      else
        format.html { render action: "new" }
        format.json { render json: @outlook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /outlooks/1
  # PUT /outlooks/1.json
  def update
    @outlook = Outlook.find(params[:id])

    respond_to do |format|
      if @outlook.update_attributes(params[:outlook])
        format.html { redirect_to @outlook, notice: 'Outlook was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @outlook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outlooks/1
  # DELETE /outlooks/1.json
  def destroy
    @outlook = Outlook.find(params[:id])
    @outlook.destroy

    respond_to do |format|
      format.html { redirect_to outlooks_url }
      format.json { head :no_content }
    end
  end
end
