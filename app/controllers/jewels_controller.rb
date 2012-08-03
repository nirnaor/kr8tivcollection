class JewelsController < ApplicationController
  # GET /jewels
  # GET /jewels.json
  def index
    @jewels = get_jewels_by_category(params[:category])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jewels }
    end
  end

  def get_jewels_by_category(category)
    category_code = Jewel.categories(category)
    relevant_jewels  = Jewel.find_by_category_cd(category_code)
    result = []
    result << relevant_jewels
    result
  end

  # GET /jewels/1
  # GET /jewels/1.json
  def show
    @jewel = Jewel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jewel }
    end
  end

  # GET /jewels/new
  # GET /jewels/new.json
  def new
    @jewel = Jewel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jewel }
    end
  end

  # GET /jewels/1/edit
  def edit
    @jewel = Jewel.find(params[:id])
  end

  # POST /jewels
  # POST /jewels.json
  def create
    @jewel = Jewel.new(params[:jewel])

    respond_to do |format|
      if @jewel.save
        format.html { redirect_to @jewel, notice: 'Jewel was successfully created.' }
        format.json { render json: @jewel, status: :created, location: @jewel }
      else
        format.html { render action: "new" }
        format.json { render json: @jewel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jewels/1
  # PUT /jewels/1.json
  def update
    @jewel = Jewel.find(params[:id])

    respond_to do |format|
      if @jewel.update_attributes(params[:jewel])
        format.html { redirect_to @jewel, notice: 'Jewel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @jewel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jewels/1
  # DELETE /jewels/1.json
  def destroy
    @jewel = Jewel.find(params[:id])
    @jewel.destroy

    respond_to do |format|
      format.html { redirect_to jewels_url }
      format.json { head :no_content }
    end
  end
end
