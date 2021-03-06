class User::Operation::New < Trailblazer::Operation
  step Model(User, :new)
  step Contract::Build(constant: User::Contract::Form)
end