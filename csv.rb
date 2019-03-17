module TDB
  class CSV
    attr_accessor :values

    def initialize(csv_string)
      # TODO validate csv?
      self.values = csv_to_array(csv_string)
    end

    def sort!
      self.values.sort!
    end

    def to_s
      self.values.join(",")
    end

    protected

    def csv_to_array(csv_string)
      csv_string.split(",")
    end
  end
end

csv_string = "Copenhagen,Stockholm,Oslo"

csv = TDB::CSV.new(csv_string)
csv.sort!

puts csv.to_s
