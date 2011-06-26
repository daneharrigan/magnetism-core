class FieldType < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :fields

  ['Text field', 'Text area', 'Asset'].each do |field_type|
    class_eval <<-STR
      def self.#{field_type.parameterize('_')}
        first(:conditions => { :name => "#{field_type}"})
      end
    STR
  end
end
