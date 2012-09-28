class CustsController < ApplicationController
  # GET /custs
  # GET /custs.json
  def index
    @custs = Cust.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @custs }
    end
  end

  # GET /custs/1
  # GET /custs/1.json
  def show
    @cust = Cust.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cust }
    end
  end

  # GET /custs/new
  # GET /custs/new.json
  def new
    @cust = Cust.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cust }
    end
  end

  # GET /custs/1/edit
  def edit
    @cust = Cust.find(params[:id])
  end

  # POST /custs
  # POST /custs.json
  def create
    @cust = Cust.new(params[:cust])

    respond_to do |format|
      if @cust.save
        format.html { redirect_to @cust, notice: 'Cust was successfully created.' }
        format.json { render json: @cust, status: :created, location: @cust }
      else
        format.html { render action: "new" }
        format.json { render json: @cust.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /custs/1
  # PUT /custs/1.json
  def update
    @cust = Cust.find(params[:id])

    respond_to do |format|
      if @cust.update_attributes(params[:cust])
        format.html { redirect_to @cust, notice: 'Cust was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cust.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custs/1
  # DELETE /custs/1.json
  def destroy
    @cust = Cust.find(params[:id])
    @cust.destroy

    respond_to do |format|
      format.html { redirect_to custs_url }
      format.json { head :no_content }
    end
  end
end
