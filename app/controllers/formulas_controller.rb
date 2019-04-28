class FormulasController < ApplicationController

  def index
    @formulas = Formula.all

    render json: @formulas
  end

  def show
    @formula = Formula.find(params[:id])

    render json: @formula
  end
end
