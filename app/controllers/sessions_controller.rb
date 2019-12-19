class SessionsController < ApplicationController
  include CurrentUserConcern
  def create
    user = User
            .find_by(email: params["user"]["email"])
            .try(:authenticate, params["user"]["password"])

    if user.valid?
      sessions_count = user.sessions_count + 1 
      last_login = DateTime.now.in_time_zone("Eastern Time (US & Canada)")
      user.update_attributes(:sessions_count => sessions_count, :last_login => last_login)
      session[:user_id] = user.id
      render json: {
        status: :created,
        logged_in: true,
        user: user
      }
    else
      render json: { status: 401 }
    end
  end

  def logged_in
    if @current_user
      render json: {
        logged_in: true,
        user: @current_user
      }
    else
      render json: {
        logged_in: false
      }
    end
  end

  def logout
    # reset_session
    render json: { status: 200, logged_out: true }
  end
end