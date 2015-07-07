require 'json'

class Api::V1::IdeaController < ApplicationController
  respond_to :json

  def index
    respond_with Idea.all_with_details
  end

  def show
    respond_with Idea.find(params[:id].to_i)
  end

  def update
    respond_with :api, :v1, Idea.update(params[:id], idea_params)
  end

  def create
    respond_with :api, :v1, Idea.create(idea_params)
  end

  def destroy
    respond_with Idea.destroy(params[:id])
  end

  private

  def idea_params
    params.require(:idea).permit(:title, :body, :quality_id)
  end

end