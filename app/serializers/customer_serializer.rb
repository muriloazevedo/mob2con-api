class CustomerSerializer
  include FastJsonapi::ObjectSerializer

  set_type :customer

  attributes :id, :name, :email, :created_at, :updated_at
end
