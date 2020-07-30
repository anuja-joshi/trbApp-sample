class UsersController < ApplicationController
  def index
    run User::Operation::Index do |result|
      return render cell(User::Cell::Index, @model)
    end
    # return render cell(User::Cell::Index)
  end

  def new
    run User::Operation::New do |result|
      return render cell(User::Cell::New, @form)
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