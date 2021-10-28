module Orders
  class Show
    include Serializable
    include HasContract
    include Validations::Model

    contract_class Orders::ShowContract
    serializer_class OrderSerializer

    def initialize(params)
      create_contract(params)
    end

    def call
      order
    end

    def order
      @order ||= Order.find(contract.values[:id])
    end

    alias model order
    alias serializable_object order
  end
end
