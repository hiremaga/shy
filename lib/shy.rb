module Shy
  autoload :DSL, 'shy/dsl'

  def self.included(klass)
    klass.extend(DSL)
  end

  def initialize(attributes={})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
end
