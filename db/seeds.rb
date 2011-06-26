puts "** Creating Template Types **"

TemplateType.create(name: 'Page')
TemplateType.create(name: 'Snippet')
TemplateType.create(name: 'JavaScript')
TemplateType.create(name: 'Stylesheet')

puts "** Creating Field Types **"

FieldType.create(name: 'Text field')
FieldType.create(name: 'Text area')
FieldType.create(name: 'Asset')

puts '** Creating default "admin" user **'

User.create(name: 'Default User', login: 'admin',
            email: 'admin@example.com',
            password: 'password',
            password_confirmation: 'password')
