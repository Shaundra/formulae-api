class FormulasController < ApplicationController

  def index
    @formulas = Formula.all

    render json: @formulas
  end

  def show
    @formula = Formula.find(params[:id])

    render json: @formula
  end

  def create
    @formula = Formula.create(formula_params)
    # byebug
    render json: @formula
  end

  def update
    byebug
  end

  private

  def find_formula
    @formula = Formula.find(params[:id])
  end

  def formula_params
    params.require(:formula).permit(:title, :description, :is_public)
  end
end
