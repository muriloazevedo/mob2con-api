module Customers
  class Index
    include ::Serializable

    def initialize
    end

    serializer_class CustomerSerializer

    def call
      Customer.find()
    end
  end
end
