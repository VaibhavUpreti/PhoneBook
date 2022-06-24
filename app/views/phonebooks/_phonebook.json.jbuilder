json.extract! phonebook, :id, :first_name, :last_name, :phone, :email, :twitter, :instagram, :irc_hangle, :discord, :created_at, :updated_at
json.url phonebook_url(phonebook, format: :json)
