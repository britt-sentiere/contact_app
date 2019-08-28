class Api::ContactsController < ApplicationController
  def first_contact_action
    @contact = Contact.find(3)
    render "first_contact_view.json.jb"
  end

  def all_contacts_action
    @contacts = Contact.all
    render "all_contacts_view.json.jb"
  end
end