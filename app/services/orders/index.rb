module Orders
  class Index
    include ::Serializable

    def initialize
    end

    serializer_class OrderSerializer

    def call
      Order.all
    end
  end
end
