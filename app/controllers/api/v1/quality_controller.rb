require 'json'

class Api::V1::QualityController < ApplicationController
  respond_to :json

  def index
    respond_with Quality.all
  end

end