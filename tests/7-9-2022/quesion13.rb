def change_format(paragraph)
  order = [3, 4, 2]

  paragraph.scan(/\d{3}-\d{2}-\d{4}/).each do |policy_num|
    reformated_policy_num = policy_num.split('-').sort_by { |element| order.index(element.size) }.join('/')

    paragraph.gsub!(policy_num, reformated_policy_num)
  end

  paragraph
end

puts change_format('Please quote your policy number: 1121-39-8552. Please quote your policy number: 144-43-8552., Please quote your policy number: 552-11-8552.')
