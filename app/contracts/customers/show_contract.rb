# frozen_string_literal: true

module Customers
  class ShowContract < Dry::Validation::Contract
    params do
      required(:id).value(:uuid_v4?)
    end
  end
end
