class CollectionsController < ApplicationController
  before_action :set_collection, only: [:show, :edit, :update, :destroy]

  # GET /collections
  # def index
  #   @collections = Collection.all
  # end
  def index
    @collections = current_user.collections
  end

  # GET /collections/:id
  # def show
  #   @links = @collection.links
  # end

  def show
  end


  # GET /collections/new
  # def new
  #   @collection = Collection.new
  # end
  def new
    @collection = current_user.collections.build
  end


  # GET /collections/:id/edit
  # def edit
  # end
  def edit
  end
  # POST /collections
  # def create
  #   @collection = Collection.new(collection_params)

  #   if @collection.save
  #     redirect_to @collection, notice: 'Collection was successfully created.'
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end
  def create
    @collection = current_user.collections.build(collection_params)
    if @collection.save
      redirect_to @collection, notice: 'Collection was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /collections/:id
  # def update
  #   if @collection.update(collection_params)
  #     redirect_to @collection, notice: 'Collection was successfully updated.'
  #   else
  #     render :edit
  #   end
  # end
  def update
    if @collection.update(collection_params)
      redirect_to @collection, notice: 'Collection was successfully updated.'
    else
      render :edit
    end
  end


  # DELETE /collections/:id
  # def destroy
  #   @collection.destroy
  #   redirect_to collections_url, notice: 'Collection was successfully destroyed.'
  # end
  def destroy
    @collection.destroy
    redirect_to collections_url, notice: 'Collection was successfully destroyed.'
  end


  private

  def set_collection
    @collection = current_user.collections.find(params[:id])
  end

  def collection_params
    params.require(:collection).permit(:name)
  end
end
