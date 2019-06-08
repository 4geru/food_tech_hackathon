class MaterialsController < ApplicationController
  def show
    @material = Material.find_by(params.permit(:id))
    render 'show', formats: 'json'
  end
end
