class OrderSerializer
  include FastJsonapi::ObjectSerializer

  set_type :order

  attributes :id, :total_amount, :created_at, :updated_at
end
