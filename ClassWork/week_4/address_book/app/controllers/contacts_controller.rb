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

    if contact.save
      redirect_to("/contacts")
    else
      render "new"
    end
  end

  def show

    @contact = Contact.find_by(id: params[:id])
  end

  def favorite

    id=params[:button]
    @contact =Contact.find_by(id: id)
    @contact.favorite="yes"
    @contact.save
    redirect_to "/contacts/fav"
  end

  def show_fav

    @contacts=Contact.where(favorite: "yes")

    if !@contacts.empty?
      render "fav"
    else
      redirect_to "/404"
    end
  end



end

