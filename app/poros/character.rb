class Character
  attr_reader :id, :allies, :enemies, :name, :affiliation

  def initialize(data)
    @id = data[:_id]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @name = data[:name]
    @affiliation = data[:affiliation]
  end
end
