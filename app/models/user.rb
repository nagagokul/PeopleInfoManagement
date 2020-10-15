class User < ApplicationRecord
    has_many :addresses
    validates_uniqueness_of :first_name, :last_name
    accepts_nested_attributes_for :addresses,
    :reject_if => proc {|attributes|
        attributes.all? {|k,v| v.blank?}
    },
    :allow_destroy => true
end
