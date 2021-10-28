module Api
  module V1
    class OrdersController < ApplicationController
      def index
        orders = Orders::Index.new.call
        render json: { results: OrderSerializer.new(orders).as_json }, status: :ok
      end

      def show
        service = Orders::Show.new({ id: params[:id] })
        service.call

        render json: service, status: :ok
      end

      def create
        service = Orders::Create.new(orders_params)
        service.call

        render json: service, status: :created
      end

      def orders_params
        params.require(:order).permit(:total_amount, :description, :customer_id)
      end
    end
  end
end
