class ContactsController < ApplicationController
  def index
  	@contact_all = Contact.all.order("name ASC") 
  end
  def new


  end


  def create
     contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phone => params[:contact][:phone],
      :email => params[:contact][:email])

    contact.save
    redirect_to("/contacts")
  end

  def show

    @contact = Contact.find_by(id: params[:id])
  end

end

