class EmploymentsController < ApplicationController
    def index
        @employments = Employment.all
    end

    def show
        @employments = Employment.find(params[:id])
    end

    def new
        @employments = Employment.new
    end

    def create
        @employments = Employment.new(employment_params)
        @employments.user = current_user
        if @employments.save!
            redirect_to employment_path(@employments)
            else
            render 'new'
        end
    end

    def edit
        @employments = Employment.find(params[:id])
    end

    def update
        @employments = Employment.find(params[:id])
        @employments.update(employment_params)
        redirect_to employments_path(@employments)
    end

    def destroy
        @employments = Employment.find(params[:id])
        @employments.destroy
        redirect_to employments_path(@employments)
    end

    private

    def employment_params
    params.require(:employment).permit(:user_id, :position_title, :company_name, :company_url, :company_description)
    end
end
