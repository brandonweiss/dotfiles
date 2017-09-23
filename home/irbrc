IRB.conf[:PROMPT_MODE] = :SIMPLE

begin
  require "awesome_print"
  AwesomePrint.irb!
rescue LoadError => err
  warn "Couldn't load awesome_print: #{err}"
end

class Object
  def interesting_methods
    case self.class
    when Class  then self.public_methods.sort - Object.public_methods
    when Module then self.public_methods.sort - Module.public_methods
    else             self.public_methods.sort - Object.new.public_methods
    end
  end
end
