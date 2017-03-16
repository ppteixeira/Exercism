module BookKeeping
  VERSION = 2
end

class Robot
  @@all_names = []

  def initialize
    reset
  end

  def create_name
    define_prefix + define_suffix
  end

  def name
    @name
  end

  def define_prefix
    ('AA'..'ZZ').to_a.sample
  end

  def define_suffix
    (100..999).to_a.sample.to_s
  end

  def reset
    @name = create_name until conditions
    @@all_names << @name
  end

  def conditions
    @@all_names.include?(@name) == false && @name =~ /^[A-Z]{2}\d{3}$/
  end
end
