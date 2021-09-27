class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @blogposts = Blogpost.all.order("updated_at DESC")
    @employments = Employment.all
    @portfolios = Portfolio.all
    @projects = Project.all
    @contact = Contact.new

  end
end
