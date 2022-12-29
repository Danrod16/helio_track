class StepsController < ApplicationController

    def show 
        @company = current_user.company
        @step = Step.find(params[:id])
    end
end
