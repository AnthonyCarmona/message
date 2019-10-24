class ChatroomController < ApplicationController

    before_action :require_user
    def index
        @message = Messag.new
        @messages = Messag.all
    end
end