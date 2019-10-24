class ChatroomController < ApplicationController
    def index
        @messages = Messag.all
    end
end