class User::Operation::Index < Trailblazer::Operation
  step :from_web, Output(:failure) => Track(:mobile)
  step :filter_interval
  step :filter_status
  step :set_web_response
  # step :order_by_created_at, magnetic_to: :mobile
  # step :set_mobile_response


  def from_web(ctx, params:, **)
    params[:from_web]
  end

  def filter_interval
  end

  def filter_status
  end

  def set_web_response
  end
end