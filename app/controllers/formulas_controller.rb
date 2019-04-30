class FormulasController < ApplicationController

  def index
    @formulas = Formula.all

    render json: @formulas
  end

  def show
    @formula = Formula.find(params[:id])

    render json: @formula
  end

  def update
    byebug
  end

  private

  def find_formula
    @formula = Formula.find(params[:id])
  end
end
