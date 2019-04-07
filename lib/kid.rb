require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
# Remember to require fancy_dance!
require_relative './fancy_dance.rb'

class Kid
  # To lend our Kid all of the methods of the Dance module, we use "include".
  # =>          include Dance

  # We also want Kid to be able to access the CLASS method "metadata" from the
  # module called MetaDancing
  # =>          extend MetaDancing

  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end
