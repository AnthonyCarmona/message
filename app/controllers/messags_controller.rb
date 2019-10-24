class MessagsController < ApplicationController
    before_action :require_user
    def create 
        messag = current_user.build(messag_params)
        if messag.save
            redirect_to chatroom_path

        end 
    end
    private 
    def messag_params
        params.require(:message).permit(:body)
    end
end