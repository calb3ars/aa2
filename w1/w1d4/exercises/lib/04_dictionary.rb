class Dictionary
  attr_reader :entries

  def initialize
    @entries = {}
  end

  def add(new_entry)
    if new_entry.is_a?(String)
      @entries[new_entry] = nil
    elsif new_entry.is_a?(Hash)
      @entries.merge!(new_entry)
    end
  end

  def keywords
    @entries.keys.sort {|a,b| a <=> b }
  end

  def include?(string)
    @entries.has_key?(string)
  end

  def find(fragment)
    results = @entries.select do |entry, definition|
      entry.match(fragment)
    end
  end

  def printable
    output = keywords.map do |keyword|
      %Q{[#{keyword}] "#{@entries[keyword]}"}
    end

    output.join("\n")
  end
end
