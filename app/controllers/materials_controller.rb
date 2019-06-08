class MaterialsController < ApplicationController
  def show
    @material = Material.find_by(params.permit(:name))
    render 'show', formats: 'json'
  end
end
