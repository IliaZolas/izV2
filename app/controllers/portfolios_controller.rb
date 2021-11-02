class PortfoliosController < ApplicationController

    def index
        @portfolios = Portfolio.all
    end

    def show
        @portfolios = Portfolio.find(params[:id])
    end

    def new
        @portfolios = Portfolio.new
    end

    def create
        @portfolios = Portfolio.new(portfolio_params)
        @portfolios.user = current_user
        if @portfolios.save!
            redirect_to portfolio_path(@portfolios)
            else
            render 'new'
        end
    end

    def edit
        @portfolios = Portfolio.find(params[:id])
    end

    def update
        @portfolios = Portfolio.find(params[:id])
        @portfolios.update(portfolio_params)
        redirect_to user_portfolios_path(@portfolios)
    end

    def destroy
        @portfolios = Portfolio.find(params[:id])
        @portfolios.destroy
        redirect_to user_portfolios_path(@portfolios)
    end

    private

    def portfolio_params
    params.require(:portfolio).permit(:user_id, :client_name, :client_url, :date, :client_description)
    end

end
