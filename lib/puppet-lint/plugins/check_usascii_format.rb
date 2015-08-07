PuppetLint.new_check(:usascii_format) do
  def check
    
    tokens.each do |t|
      
      t.value.each_byte { |c|
      	if c > 127
          notify :warning, {
            :message => 'expected all text in us-ascii',
            :line    => t.line,
            :column  => t.column,
          }
        end
      }
      
    end
  end
end