Given /^the following user_sessions:$/ do |user_sessions|
  UserSession.create!(user_sessions.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) user_session$/ do |pos|
  visit user_sessions_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following user_sessions:$/ do |expected_user_sessions_table|
  expected_user_sessions_table.diff!(tableish('table tr', 'td,th'))
end
