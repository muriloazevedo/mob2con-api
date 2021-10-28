module Customers
  class Index
    include ::Serializable

    def initialize
    end

    serializer_class CustomerSerializer

    def call
      Customer.all
    end
  end
end
