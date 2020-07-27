class UsersController < ApplicationController
  def index
    run User::Operation::Index, params: show_params do |result|
      render json: result[:model]
    end
  end

  def show
    run User::Operation::Show, params: params do |result|
      render json: result[:model]
    end
    render json: @_result[:error], status: :unprocessable_entity
  end

  private

  def show_params
    {
      from_web: request.headers[:source] == 'web'
    }
  end
end