def inverte(x)
     raise ArgumentError, 'O argumento nao eh numerico' unless x.is_a? Numeric
     1.0 / x
   end
   puts inverte(2)
   puts inverte('nao eh um numero')