class ContactsController < ApplicationController
  def contact_one
    contact = Contact.first

    render json: { id: contact.id, first_name: contact.first_name, last_name: contact.last_name, email: contact.email, phone_number: contact.phone_number }
  end

  def contact_all
    contact_array = []
    contacts = Contact.all
    contacts.each do |contact|
      contact_array << { id: contact.id, first_name: contact.first_name, last_name: contact.last_name, email: contact.email, phone_number: contact.phone_number }
    end
    render json: contact_array
  end
end
