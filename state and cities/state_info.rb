$states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan'
}

$cities = {
  OR: ['aaaa', 'bbbb'],
  FL: ['ccccc'],
  CA: ['ffff','gggggg','hhhhhh'],
  NY: []
}
$cities.default = 0

$states2 = {
  OR: ['Oregon', ['aaaa', 'bbbb']],
  FL: ['Florida', ['ccccc']],
  CA: ['California', ['ffff','gggggg','hhhhhh']],
  NY: 'New York',
  MI: 'Michigan'
}

$taxes = {
  OR: 7.5,
  FL: 10,
  CA: 12,
  NY: 50
}
$taxes.default = 80

$states[:BC] = 'British Columbia'
$states[:TO] = 'Toronto'

p $states

def describe_state (code)
  count_cities = $cities[code.to_sym].count
  # part_two = '#{count_cities} major cities:'
  ans = "#{code} is for #{$states[code.to_sym]}. It has "

  if count_cities == 0
    ans << "no city"
  elsif count_cities == 1
    ans << "#{count_cities} major city: #{$cities[code.to_sym].join(', ')}"
  else 
    ans << "#{count_cities} major cities: #{$cities[code.to_sym].join(', ')}"
  end
end

p describe_state ('CA')
p describe_state ('FL')
p describe_state ('NY')

def calculate_tax(code, dollor)
  return "no key! " unless $taxes.has_key?(code.to_sym)
  $taxes[code.to_sym] * dollor.to_f
end

p calculate_tax('OR', 900)
p calculate_tax(:OR, 900)
p calculate_tax('FF', 900)

def find_state_for_city(city)
  ans = $cities.select { |k, v| v.include?(city)}.keys.join()
end

p find_state_for_city('aaaa')