class ListsController < ApplicationController
  before_action :set_list, only: %i[show edit update destroy]

  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    # Create a new List object with the parameters from the form
    @list = List.new(list_params)

    # Check if the list object can be saved to the database
    if @list.save
      # if @list.photo.present?
      #   @list.update(photo_url: @list.photo.upload.public_id)
      # end
      redirect_to lists_path # Redirect to the index page
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
