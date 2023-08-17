class ApplicationController < ActionController::Base
    before_action :basic_auth
    before_action :configure_permitted_parameters, if: :devise_controller?
<<<<<<< Updated upstream
=======

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name , :last_name])
    end
  
>>>>>>> Stashed changes
  
    private
  
      def basic_auth
        authenticate_or_request_with_http_basic do |username, password|
        username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]  # 環境変数を読み込む記述に変更
      end

      def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
      end
<<<<<<< Updated upstream
=======
    
>>>>>>> Stashed changes
    end
  end
  