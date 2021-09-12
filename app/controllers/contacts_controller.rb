class ContactsController < ApplicationController

  def create
    @contact = Contact.new()
    raise
    @contact.name = params[:name]
    @contact.email = params[:email]
    @contact.subject= params[:subject]
    @contact.message = params[:message]
    if @contact.deliver
      # render json: {message: "Email sent successfully"}
      puts "delivered"
    else
      # render json: @contact.errors
      puts "error"
    end
  end

end
