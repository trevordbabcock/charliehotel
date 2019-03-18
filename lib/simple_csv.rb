require 'csv'

module Tdb
  class InvalidCSVError < StandardError; end

  class SimpleCSV
    attr_accessor :values

    def initialize(csv_string)
      validate(csv_string)
      self.values = CSV.parse(csv_string)[0]
    end

    def sort!
      self.values.sort!.reverse!
    end

    def to_s
      #self.values.join(",")
      CSV.generate_line(self.values)
    end

    protected

    def validate(csv_string)
      # TODO implement
      # invalid if empty file
      # invalid if more than one line? assignment instructions ambiguous about this
      raise InvalidCSVError unless true
    end
  end
end
