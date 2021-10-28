# frozen_string_literal: true

module Orders
  class CreateContract < Dry::Validation::Contract
    params do
      required(:total_amount).value(:integer)
      required(:customer_id).value(:uuid_v4?)
    end
  end
end
