class BlogpostController < ApplicationController

    def index
        @blogposts = Blogpost.all
    end

    def show
        @blogposts = Blogpost.find(params[:id])
    end

    def new
        @blogposts = Blogpost.new
    end

    def create
        @blogposts = Blogpost.new(blogpost_params)
        @blogposts.user = current_user
        if @blogposts.save!
            redirect_to user_blogpost_path(@blogposts)
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
    # redirect_to blogposts_path(@blogpost)
    end

    def destroy
        @blogposts = Blogpost.find(params[:id])
        @blogposts.destroy
    # redirect_to blogposts_path(@blogpost)
    end

    private

    def blogpost_params
    params.require(:blogposts).permit(:user_id, :blog_title, :blog_sub_heading, :blog_text, :photo)
    end


end
