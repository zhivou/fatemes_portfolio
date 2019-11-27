class ResearchesController < ApplicationController

  before_action :authenticate_admin!, only: [:new, :edit, :update, :destroy, :create]
  before_action :set_research, only: [:show, :edit, :update, :destroy]

  # GET /researches
  # GET /researches.json
  def index; end

  # GET /researches/1
  # GET /researches/1.json
  def show; end

  # GET /researches/new
  def new
    @research = Research.new
  end

  # GET /researches/1/edit
  def edit; end

  def projects
    @researches = Research.order(id: :desc)
    gon.main_images = "aasd"
    render json: @researches, include: ['publications', 'body_area', 'main_image']
  end

  # POST /researches
  # POST /researches.json
  def create
    @research = Research.new(research_params)

    respond_to do |format|
      if @research.save
        format.html { redirect_to @research, notice: 'Research was successfully created.' }
        format.json { render :show, status: :created, location: @research }
      else
        format.html { render :new }
        format.json { render json: @research.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /researches/1
  # PATCH/PUT /researches/1.json
  def update
    respond_to do |format|
      if @research.update(research_params)
        format.html { redirect_to @research, notice: 'Research was successfully updated.' }
        format.json { render :show, status: :ok, location: @research }
      else
        format.html { render :edit }
        format.json { render json: @research.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /researches/1
  # DELETE /researches/1.json
  def destroy
    @research.publications.destroy_all
    @research.destroy
    respond_to do |format|
      format.html { redirect_to researches_url, notice: 'Research was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_research
    @research = Research.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def research_params
    params.require(:research).permit(
      :title,
      :main_image,
      :body_area,
      publications_attributes: %i[id name publisher _destroy]
    )
  end
end
