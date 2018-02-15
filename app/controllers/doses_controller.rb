class DosesController < ApplicationController

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = Cocktail.find(:cocktail_id)
    @dose.save
    redirect_to cocktail_path(@cocktail)
  end


end
