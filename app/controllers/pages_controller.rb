class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @blogposts = Blogpost.all.order("date DESC")
    @employments = Employment.all.order("date DESC")
    @portfolios = Portfolio.all.order("date DESC")
    @projects = Project.all.order("date DESC")
    @contact = Contact.new

  end
end
