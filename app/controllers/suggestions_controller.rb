class SuggestionsController < ApplicationController

  def index
    @suggestions = Clothing.all
    render json: suggestions, status: 200
  end

  def create
    # Comment this out because it was blocking out post!
    # raise params.inspect
    suggestion = Clothing.create(suggestion_params)
    render json: suggestion, status: 201
  end

  def update
    suggestion = Clothing.find(params[:id])
    suggestion.update_attributes(suggestion_params)
    render nothing: true, status: 204
  end

  def destroy
    suggestion = Clothing.find(params[:id])
    suggestion.destroy
    render nothing: true, status: 204
  end

  private

  def suggestion_params
    params.require(:suggestion).permit(:name, :image)
  end

end