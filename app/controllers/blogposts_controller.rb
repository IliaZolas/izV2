class BlogpostsController < ApplicationController
    before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]

    def index
        @blogposts = Blogpost.all
    end

    def show
        @blogpost = Blogpost.find(params[:id])
    end

    def new
        @blogposts = Blogpost.new
    end

    def create
        @blogposts = Blogpost.new(blogpost_params)
        @blogposts.user = current_user
        if @blogposts.save!
            redirect_to blogpost_path(@blogposts)
            else
            render 'new'
        end
    end

    def edit
        @blogposts = Blogpost.find(params[:id])
    end

    def update
        @blogposts = Blogpost.find(params[:id])
        @blogposts.update(blogpost_params)
        redirect_to blogposts_path(@blogposts)
    end

    def destroy
        @blogposts = Blogpost.find(params[:id])
        @blogposts.destroy
        redirect_to blogposts_path(@blogposts)
    end

    private

    def blogpost_params
    params.require(:blogpost).permit(:user_id, :blog_title, :blog_sub_heading, :blog_text, :photo)
    end


end
