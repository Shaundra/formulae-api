class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :show]

  def index
    @users = User.all

    render json: @users
  end

  def create
    # byebug
    @user = User.create(user_params)

    if @user.valid?
      @token = encode_token({user_id: @user.id})
      # byebug
      render :json => { user: UserSerializer.new(@user).as_json(include: ['formulas.elements.notes', 'formulas.notes']), jwt: @token }, status: :created
    else
      # byebug
      render json: {error: 'Failed to create user.'}, status: :not_acceptable
    end
  end

  def show
    @user = User.find(params[:id])

    render json: @user, include: ['formulas.elements.notes', 'formulas.notes']
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :email)
  end
end
