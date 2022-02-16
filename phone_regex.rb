# INSTRUCTIONS:
# 1. Review the tests on lines 21 and 24.
# 2. Replace the placeholder RegEx on line 18 with one that would pass these tests.
# 3. Use the shell command 'irb phone_regex.rb' (no quotation marks) to evaluate this entire file.
# 4. If successful, repeat these steps to pass the tests on line 41, modifying your original RegEx as necessary.

# Part 1: Creating a regular expression for phone numbers
# ---------------------------
# Valid phone numbers
phone_pass = ['4123456789', '412-456-7890', '412.456.7890', '(412) 345-6789', '412 345-6789']

# Invalid phone numbers
phone_fail = ['14123456789', '412-EAT-FOOD', '412.4567.890', '345-6789']

# Modify the following line and write your own regex that passes the valid phone numbers and fails the invalid ones
# Keep the "/" boundaries at the beginning and the end. This is Ruby's syntax for RegEx construction
# Don't forget to add the ^ and $ anchors
phone_regex = /YOUR REGEX HERE/

# This should print 5 lines of "PASSED!"
phone_pass.each do |phone| puts phone.match(phone_regex) ? "PASSED!" : "FAILED!" end

# This should print 4 lines of "FAILED!"
phone_fail.each do |phone| puts phone.match(phone_regex) ? "PASSED!" : "FAILED!" end


# Part 2: Using the MatchData Object with your phone RegEx
# ---------------------------
good_phone = '412-456-7890'

match_obj = good_phone.match(phone_regex)

match_obj_tests = [match_obj != nil,	
                   match_obj[0] == '412-456-7890', 
                   match_obj[1] == '412', 
                   match_obj[2] == '456', 
                   match_obj[3] == '7890'
                  ]

# This should print 5 lines of "PASSED!"
match_obj_tests.each do |test| puts test ? "PASSED!" : "FAILED!" end
