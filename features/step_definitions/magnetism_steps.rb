Given /I have seed data/ do
  Factory(:field_type_text_field)
  Factory(:field_type_text_area)
  Factory(:field_type_asset)

  Factory(:template_type_page)
  Factory(:template_type_snippet)
  Factory(:template_type_javascript)
  Factory(:template_type_stylesheet)
end

Given /I have a login/ do
  Factory(:jsmith)
end

