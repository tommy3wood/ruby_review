require_relative "./employee.rb"
require_relative "./reportable.rb"

module Actualize
  class Intern < Employee

    include Reportable

  end
end