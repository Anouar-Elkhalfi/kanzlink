class LinksController < ApplicationController
  before_action :set_link, only: [:show, :edit, :update, :destroy]

  # GET /links
  def index
    @links = Link.all
  end

  # GET /links/:id
  def show
  end

  # GET /links/new
  def new
    @link = Link.new
  end
  # POST /links
  def create
    @link = Link.new(link_params)

    if @link.save
      redirect_to @link, notice: 'Link was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # GET /links/:id/edit
  def edit
  end


  # PATCH/PUT /links/:id
  def update
    if @link.update(link_params)
      redirect_to @link, notice: 'Link was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /links/:id
  def destroy
    @link.destroy
    redirect_to links_path, status: :see_other, notice: 'Link was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_link
    @link = Link.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def link_params
    params.require(:link).permit(:title, :url, :description)
  end
end
