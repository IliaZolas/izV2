class ProjectsController < ApplicationController

    def index
        @projects = Project.all
    end

    def show
        @projects = Project.find(params[:id])
    end

    def new
        @projects = Project.new
    end

    def create
        @projects = Project.new(project_params)
        @projects.user = current_user
        if @projects.save!
            redirect_to project_path(@projects)
            else
            render 'new'
        end
    end

    def edit
        @projects = Project.find(params[:id])
    end

    def update
        @projects = Project.find(params[:id])
        @projects.update(project_params)
        redirect_to user_projects_path(@projects)
    end

    def destroy
        @projects = Project.find(params[:id])
        @projects.destroy
        redirect_to user_projects_path(@projects)
    end

    private

    def project_params
    params.require(:project).permit(:user_id, :project_name, :project_url, :project_description )
    end
end
