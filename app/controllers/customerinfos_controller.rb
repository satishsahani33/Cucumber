class CustomerinfosController < ApplicationController
  # GET /customerinfos
  # GET /customerinfos.json
  def index
    @customerinfos = Customerinfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customerinfos }
    end
  end

  # GET /customerinfos/1
  # GET /customerinfos/1.json
  def show
    @customerinfo = Customerinfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customerinfo }
    end
  end

  # GET /customerinfos/new
  # GET /customerinfos/new.json
  def new
    @customerinfo = Customerinfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customerinfo }
    end
  end

  # GET /customerinfos/1/edit
  def edit
    @customerinfo = Customerinfo.find(params[:id])
  end

  # POST /customerinfos
  # POST /customerinfos.json
  def create
    @customerinfo = Customerinfo.new(params[:customerinfo])

    respond_to do |format|
      if @customerinfo.save
        format.html { redirect_to @customerinfo, notice: 'Customerinfo was successfully created.' }
        format.json { render json: @customerinfo, status: :created, location: @customerinfo }
      else
        format.html { render action: "new" }
        format.json { render json: @customerinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /customerinfos/1
  # PUT /customerinfos/1.json
  def update
    @customerinfo = Customerinfo.find(params[:id])

    respond_to do |format|
      if @customerinfo.update_attributes(params[:customerinfo])
        format.html { redirect_to @customerinfo, notice: 'Customerinfo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customerinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customerinfos/1
  # DELETE /customerinfos/1.json
  def destroy
    @customerinfo = Customerinfo.find(params[:id])
    @customerinfo.destroy

    respond_to do |format|
      format.html { redirect_to customerinfos_url }
      format.json { head :no_content }
    end
  end
end
