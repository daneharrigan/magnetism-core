# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
TemplateType.create(:name => 'Page')
TemplateType.create(:name => 'Snippet')
TemplateType.create(:name => 'JavaScript')
TemplateType.create(:name => 'Stylesheet')

FieldType.create(:name => 'Text field')
FieldType.create(:name => 'Text area')
FieldType.create(:name => 'Asset')
