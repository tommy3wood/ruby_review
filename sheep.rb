class Sheep
  @@count = 0

  def initialize
    @@count += 1
    @id = @@count
  end

  def self.total_count
    @@count
  end
end

Sheep.new
Sheep.new
Sheep.new


p Sheep.total_count