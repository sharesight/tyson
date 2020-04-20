# What is the return value of the following statements, and why?

[].any?
# => false
# because the array is empty

[1].any?
# => true
# because the array is not empty

[true].any?
# => true
# because the array is not empty

[nil].any?
# => false
# because it's actually `[nil].any? { |item| item }` and any? returns true
# only if the block yields a truthy value

[false].any?
# => false
