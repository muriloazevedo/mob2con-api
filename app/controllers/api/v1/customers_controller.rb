module Api
  module V1
    class CustomersController < ApplicationController
      def index
        customers = Customers::Index.new.call
        render json: { results: CustomerSerializer.new(customers).as_json }, status: :ok
      end

      def show
        service = Customers::Show.new({ id: params[:id] })
        service.call

        render json: service, status: :ok
      end

      def create
        service = Customers::Create.new(customers_params)
        service.call

        render json: service, status: :created
      end


      def customers_params
        params.require(:customer).permit(:email, :name)
      end
    end
  end
end
