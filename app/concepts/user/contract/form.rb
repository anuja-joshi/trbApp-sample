require 'reform'

module User::Contract
  class Form < Reform::Form
    property :name
    property :email
  end
end