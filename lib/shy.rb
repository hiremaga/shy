module Shy
  autoload :DSL, 'shy/dsl'

  def self.included(klass)
    klass.extend(DSL)
  end

  def self.new(*attribute_names)
    warn 'Shy.new is deprecated, please use the Shy::DSL style instead.'
    Class.new do
      include Shy
      shy *attribute_names
    end
  end

  def initialize(attributes={})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
end
