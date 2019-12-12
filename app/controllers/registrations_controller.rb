class RegistrationsController < ApplicationController
    def create
        password = params['user']['password']
        password_confirmation = params['user']['password_confirmation']

        user = User.create(
            name: params['user']['name'],
            email: params['user']['email'],
            password: params['user']['password'],
            password_confirmation: params['user']['password_confirmation'],
            sessions_count: 0
        )
        if user.valid?
            session[:user_id] = user.id
            render json: {
                status: :created,
                user: user
            }
        else
            render json: user.errors, status: :bad_request
        end
    end
end