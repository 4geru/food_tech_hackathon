class MaterialsController < ApplicationController
  def show
    @material = Material.find_by(name: params[:id])
    render 'show', formats: 'json'
  end
end
