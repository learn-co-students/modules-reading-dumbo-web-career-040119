require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
# Remember to require fancy_dance!
require_relative './fancy_dance.rb'

class Dancer
  # To lend our Dancer all of the methods of the Dance module, we use "include".
  # When we use include, it allows Dancer to use all the methods in Dance as
  # instance methods for Dancer.
  # =>          include Dance

  # We also want Dancer to be able to access the CLASS method "metadata" from
  # the module called MetaDancing
  # =>          extend MetaDancing

  # To access data from inside nested modules, use :: notation!
  # ALWAYS EXTEND FOR CLASS AND INCLUDE FOR INSTANCE
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end
