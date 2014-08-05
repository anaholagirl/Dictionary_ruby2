class Definition

  @@all_definitions = []

  def Definition.all
    @@all_definitions
  end

  def initialize(definition)
    @definition = definition
  end

  def definition
    @definition
  end

  def save
    @@all_definitions << self
  end
end
