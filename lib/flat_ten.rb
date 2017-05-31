require 'pry'

class FlatTen

  def initialize
    @flat = []
  end

  def smash(array)

    container = []
    array.each do |piece|
      if piece.class != Array
        container << piece
      else
        piece.each do |pie|
          if pie.class == Array
            pie.each do |e|
              container << e
            end
          else
          container << pie
          end
        end
      end
    end
    container
  end

  def super_smash(data)
    data.each do |d|
      if d.class != Array
        @flat << d
      else
        super_smash(d)
      end
    end
    @flat

  end
end
