class ContactsController < ApplicationController
  def one
    @contact = Contact.find(1)
  end

  def all
    @contacts = Contact.all
  end
end
