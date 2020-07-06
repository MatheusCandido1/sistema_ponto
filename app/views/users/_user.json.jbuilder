json.extract! user, :id, :name, :cpf, :address, :phone, :birth_date, :status, :created_at, :updated_at
json.url user_url(user, format: :json)
