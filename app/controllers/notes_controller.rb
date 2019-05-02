class NotesController < ApplicationController
  before_action :find_parent, only: [:create, :update]
  before_action :set_note, only: [:destroy]

  def create
    @note = @parent.notes.create(
      user: @user,
      content: note_params[:content],
      seek_to_time: note_params[:seek_to_time],
    )
    # byebug
    render json: @note
  end

  def update

  end

  def destroy
    @note.destroy

    render json: {message: 'Successfully deleted note.', status: 200}, status: :ok
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def find_parent
    if note_params[:notable_type] == 'Formula'
      @parent = Formula.find(note_params[:notable_id])
      @user = @parent.user
    else
      @parent = Element.find(note_params[:notable_id])
      @user = @parent.formula.user
    end
  end

  def note_params
    params.require(:note).permit(:content, :notable_type, :notable_id, :seek_to_time)
  end
end
