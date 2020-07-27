class User::Operation::Show < Trailblazer::Operation
  step :valid?, fail_fast: true
  step :find_user
  fail :render_error

  def valid?(ctx, params:, **)
    params[:id]
  end

  def find_user(ctx, params:, **)
    ctx[:model] = User.where(id: params[:id])
    ctx[:model].present?
  end

  def render_error(ctx, **)
    ctx[:error] = 'Not found'
  end
end