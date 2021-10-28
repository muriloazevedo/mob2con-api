module Customers
  class Show
    include Serializable
    include HasContract
    include Validations::Model

    contract_class Customers::ShowContract
    serializer_class CustomerSerializer

    def initialize(params)
      create_contract(params)
    end

    def call
      customer
    end

    def customer
      @customer ||= Customer.find(contract.values[:id])
    end


    alias model customer
    alias serializable_object customer
  end
end
