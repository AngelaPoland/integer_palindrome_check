# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  if number == nil || number.class != Integer || number < 0
    return false
  end

  return check_if_palindrome(number.to_s)

end


def check_if_palindrome(num)
  if num != nil
    i = 0
    j = num.length - 1
  else
    return false
  end

  while i <= j
    if num[i] == " "
      until num[i] != " "
        i += 1
      end
    end
    if num[j] == " "
      until num[j] != " "
        i += 1
        j -= 1
      end
    end
    if num[i] == num[j]
      i += 1
      j -= 1
    else
      return false
    end
  end
  return true
end
