class ContactsController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create]

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    redirect_to root_path
    if @contact.deliver
      puts "Message sent"
    else
      puts "Message did not send"
    end
  end

  private

    def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
    end

end
