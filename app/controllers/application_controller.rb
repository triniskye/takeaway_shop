class ApplicationController < ActionController::API
    SECRET = "biggest_secret_inthe_west"
  
    before_action :authorized

    def encode_token(payload)
        JWT.encode(payload, SECRET)
    end

    def auth_header
        # { Authorization: 'Bearer <token>' }
        request.headers['Authorization']
    end

    def decoded_token
        if auth_header
            token = auth_header.split(' ')[1]

           
            begin
                JWT.decode(token, SECRET, true, algorithm: 'HS256')
            rescue JWT::DecodeError
                nil
            end
        end
    end

    def current_user
        if decoded_token
            user_id = decoded_token[0]['user_id']
            @user = User.find_by(id: user_id)
        end
    end

    def logged_in?
        !!current_user
    end

    def authorized
        unless logged_in?
            render json: { message: 'Please log in' }, status: :unauthorized
        end
    end
  end