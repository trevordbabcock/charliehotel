module TDB
  class InvalidCSVError < StandardError; end

  class CSV
    attr_accessor :values

    def initialize(csv_string)
      validate(csv_string)
      self.values = csv_to_array(csv_string)
    end

    def sort!
      self.values.sort!
    end

    def to_s
      self.values.join(",")
    end

    protected

    def validate(csv_string)
      # TODO implement
      # invalid if empty file
      # invalid if more than one line? assignment instructions ambiguous about this
      raise InvalidCSVError unless true
    end

    def csv_to_array(csv_string)
      # TODO handle commas in double-quotes
      csv_string.split(",")
    end
  end
end

csv_string = "Copenhagen,Stockholm,Oslo"

csv = TDB::CSV.new(csv_string)
csv.sort!

puts csv.to_s
