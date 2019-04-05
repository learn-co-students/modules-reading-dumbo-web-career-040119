require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative './fancy_dance.rb'

class Dancer
  include FancyDance::InstanceMethods #We refer to the name-spaced modules or classes with ::. This syntax references the parent and child relationship of the nested modules.
  extend FancyDance::ClassMethods
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
