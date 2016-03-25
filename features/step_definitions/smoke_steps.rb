
Given(/^(\d+)\+(\d+)$/) do |arg1, arg2|
  @arg1 = arg1.to_i
  @arg2 = arg2.to_i
end

Then(/^the answer is (\d+)$/) do |sum|
  expect(@arg1 + @arg2).to eq(sum.to_i)
end
