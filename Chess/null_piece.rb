require 'singleton'
require_relative "piece"

class NullPiece < Piece
    include Singleton

    attr_reader :color, :symbol

    def initialize

    end

    def color
        nil
    end

    def symbol
        nil
    end

end