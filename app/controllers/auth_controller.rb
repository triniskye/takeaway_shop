class AuthController < ApplicationController
  skip_before_action :authorized, only: [:login]

    # authentication
    # need to produce a jwt (access token) for the client to store in localStorage
    def login
        @user = User.find_by(email: login_params[:email])

        if @user && @user.authenticate(login_params[:password])
            token = encode_token({ user_id: @user.id })
            render json: {
                        user: UserSerializer.new(@user),
                        jwt: token,
                        status: :accepted
                    },
                    status: :accepted
        else
            render json: {
               message: 'Invalid email or password',
               status: :unauthorized
             },
            status: :unauthorized
        end
    end

    private

    def login_params
        params.permit(:email, :password)
    end

end
