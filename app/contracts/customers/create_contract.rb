# frozen_string_literal: true

module Customers
  class CreateContract < Dry::Validation::Contract
    params do
      required(:email).value(:string)
      required(:name).value(:string)
    end
  end
end
