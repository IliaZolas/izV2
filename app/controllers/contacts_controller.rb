class ContactsController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create]

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.name = params[:name]
    @contact.email = params[:email]
    @contact.subject= params[:subject]
    @contact.message = params[:message]
  end

  private

    def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
    end

end
