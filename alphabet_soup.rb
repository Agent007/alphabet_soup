number_of_test_cases = gets.chomp.to_i

def numberOfTimesStringCanBeFormed(test_case_string)
#  print test_case_string
  string_array = "HACKERCUP".split(//)
  numberOfTimes = 0;
  stopSearching = false;
  until stopSearching
    string_array.each do |character|
      #print character
      i = test_case_string.index character
      if (nil == i)
        stopSearching = true
        break
      end
      test_case_string.slice! i
    end
    if (!stopSearching)
      numberOfTimes += 1
    end
  end
  
  numberOfTimes
end

for t in 1..number_of_test_cases do
  test_case_string = gets.chomp!
  print 'Case #', t, ': ', numberOfTimesStringCanBeFormed(test_case_string)
  #if (t < number_of_test_cases)
  puts
  #end
end
