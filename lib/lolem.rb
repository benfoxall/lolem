require 'lolem/generator'

# This trains the generator with some source text 
# which is then used to output something similiar
class Lolem
  
  def initialize
    @generator = Generator.new
    
    SOURCE.split.each {|word| @generator.add word}
  end
  
  def words n
    words = []
    word = ''
    (0...n).each do
      word = @generator.get word
      words << word
    end

    words.join ' '
  end
  
  SOURCE = <<-END
    Lolem ipsum loller sit amet, consectetur adipisicing elit, 
    sed do eiusmod tempor incididunt ut lolerskates et dolore magna 
    aliqua. Ut enim lol ad minim veniam, quis nostrud exercitation 
    ullamco. Lol-athon nisi ut aliquip ex ea commodo consequat. 
    Duis aute irure loller in reprehenderit in voluptate velit 
    esse cillum dolore eu fugiat nulla pariatur. Lolburger sint 
    occaecat cupidatat non proident, sunt in lolcano qui officia 
    deserunt mollit lolz anim id est laborum.
  END
  
  
end

#l = Lolem.new
#puts l.words(30).inspect
