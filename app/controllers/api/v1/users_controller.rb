class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  skip_before_action :authorize_request, only: :create
  # GET /users
  def index
    @users = User.all

    if params[:greater_kills]
      @users = @users.where("users.kill_count >= ?", (params[:greater_kills]))
    end

    if params[:lesser_kills]
      @users = @users.where("users.kill_count <= ?", (params[:lesser_kills]))
    end

    if params[:game_sessions]
      @game_sessions = GameSession.all
      @users = @game_sessions.where("user_id = ?", (params[:game_sessions]))
    end


    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    #@user = User.new(user_params)

    #if @user.save
     # render json: @user, status: :created, location: api_v1_user_url(@user)
    #else
     #render json: @user.errors, status: :unprocessable_entity
    #end
    user = User.create!(user_params)
    auth_token = AuthenticateUser.new(user.username, user.password).call
    response = { message: Message.account_created, auth_token: auth_token }
    json_response(response, :created)
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      #params.permit(:username, :avg_rank, :kill_count, :games_played)
      params.permit(
      :username,
      :password,
      :password_digest,
      :password_confirmation,
      :avg_rank,
      :kill_count,
      :games_played
      )

    end
end
