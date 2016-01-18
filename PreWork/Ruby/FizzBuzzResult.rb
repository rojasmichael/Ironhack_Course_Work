(1..100).each do |n|
    i_3=(n%3==0)
    i_5=(n%5==0)
    case
        when i_3&&i_5
            puts 'fizzbuzz'
        when i_3
            puts 'fizz'
        when i_5
            puts 'buzz'
        else
            puts n
    end
end