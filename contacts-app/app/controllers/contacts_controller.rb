class ContactsController < ApplicationController
  def one
    @contact = Contact.find(1)
  end

  def all
    @contacts = Contact.all
  end

  def new_contact

  end

  def create_contact
    @contact = Contact.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number])
  end

end
