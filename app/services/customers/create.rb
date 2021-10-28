# frozen_string_literal: true
module Customers
  class Create
    include Serializable
    include HasContract
    include Validations::Model

    serializer_class CustomerSerializer
    contract_class Customers::CreateContract

    def initialize(parameters)
      create_contract(parameters.to_h)
    end

    def call
      check_contract!
      check_model!
      process
    end

    def customer
      @customer ||= Customer.new(contract.values)
    end

    alias model customer
    alias serializable_object customer

    private

    def process
      ActiveRecord::Base.transaction do
        customer.save!
      end
    end
  end
end
