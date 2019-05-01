class ElementsController < ApplicationController
  before_action :find_parent, only: [:create]

  def create
    @element = current_user.formulas.find(@parent.id).elements.create(element_params)

    render json: @element
  end

  private

  def find_parent
    @parent = Formula.find(element_params[:formula_id])
  end

  def element_params
    params.require(:element).permit(:id, :title, :position, :is_public, :source_url, :content_type, :content, :formula_id)
  end
end
