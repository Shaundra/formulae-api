class ElementsController < ApplicationController
  before_action :find_parent, only: [:create]
  before_action :set_element, only: [:destroy]

  def create
    # if content_type == 'website', call method to run url through metainspector
    # byebug
    if element_params[:content_type] == 'website'
      preview_content = Element.set_site_preview_params(element_params[:source_url])
      @element = current_user.formulas.find(@parent.id).elements.create(element_params.merge(content: preview_content))
    else
      @element = current_user.formulas.find(@parent.id).elements.create(element_params)
    end

    render json: @element
  end

  def destroy
    @element.destroy
    # navbar, delete notes, notes display, logout, tags OR edit note
    render json: {message: 'Successfully deleted element.', status: 200}, status: :ok
  end

  private

  def set_element
    @element = Element.find(params[:id])
  end

  def find_parent
    @parent = Formula.find(element_params[:formula_id])
  end

  def element_params
    params.require(:element).permit(:id, :title, :position, :is_public, :source_url, :content_type, :content, :formula_id)
  end
end
