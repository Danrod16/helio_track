class ProjectsController < ApplicationController
    def index
        @projects = Project.all
    end

    def show
        @project = Project.find(params[:id])
        @steps = @project.journeys.extract_associated(:steps).flatten
    end
end
