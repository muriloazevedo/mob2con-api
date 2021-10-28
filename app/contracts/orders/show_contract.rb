# frozen_string_literal: true

module Orders
  class ShowContract < Dry::Validation::Contract
    params do
      required(:id).value(:uuid_v4?)
    end
  end
end
