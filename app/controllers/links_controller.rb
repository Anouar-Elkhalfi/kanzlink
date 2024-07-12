class LinksController < ApplicationController
  before_action :set_link, only: [:show, :edit, :update, :destroy]
  before_action :set_collection, only: [:new, :create]

  # Other actions...

  # GET /links/:id
  def show
  end

  # GET /collections/:collection_id/links/new
  def new
    @link = @collection.links.build
  end

  # GET /links/:id/edit
  def edit
  end

  # POST /collections/:collection_id/links
  def create
    @link = @collection.links.build(link_params)

    if @link.save
      redirect_to @collection, notice: 'Link was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
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
    redirect_to collection_path(@link.collection), status: :see_other, notice: 'Link was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_link
    @link = Link.find(params[:id])
  end

  def set_collection
    @collection = Collection.find(params[:collection_id])
  end

  # Only allow a list of trusted parameters through.
  def link_params
    params.require(:link).permit(:title, :url, :description, :collection_id)
  end
end
