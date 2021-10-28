# frozen_string_literal: true
module Orders
  class Create
    include Serializable
    include HasContract
    include Validations::Model

    serializer_class OrderSerializer
    contract_class Orders::CreateContract

    def initialize(parameters)
      create_contract(parameters.to_h)
    end

    def call
      check_contract!
      check_model!
      process
    end

    def order
      @order ||= Order.new(contract.values)
    end

    alias model order
    alias serializable_object order

    private

    def process
      ActiveRecord::Base.transaction do
        order.save!
      end
    end
  end
end
