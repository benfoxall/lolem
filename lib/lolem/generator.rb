# This is a dumbed down markov chain implementation
# not very efficient, but works for what we need it for
class Generator
  
  def initialize start = ''
    # hash with a default value of another
    # hash with a default value of zero
    @map = Hash.new {|h,k| h[k] = Hash.new 0}
    @last = start
  end


  # Link this thing to the one before
  def add thing
    @map[@last][@last = thing] += 1
  end


  # Get a statistically appropriate next item
  def get given

    # proportional to the total or the values
    total = @map[given].values.inject {|a,b| a + b}
    index = rand(total)

    @map[given].each do |k,v|
      return k if (index -= v) < 0
    end

  end

end

# g = Generator.new
# 
# t = 'this is a test, this'
# t.split(' ').each do |tok|
#   g.add tok
# end
# 
# last = ''
# for i in 0..20
#   print last, ' '
#   last = g.get last
# end
