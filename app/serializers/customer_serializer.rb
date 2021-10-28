class CustomerSerializer
  include FastJsonapi::ObjectSerializer

  set_type :customer

  has_many :orders

  attributes :id, :name, :email, :created_at, :updated_at
end
