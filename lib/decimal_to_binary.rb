
def decimal_to_binary(decimal)
  bin = Array.new(8)
  i = 0

  while i < bin.length

    if(decimal - 2 ** (bin.length - 1 - i) < 0)
      bin[i] = 0
    else
      bin[i] = 1
      decimal -= 2 ** (bin.length - 1 - i)
    end
    i += 1
  end


  return bin
end

