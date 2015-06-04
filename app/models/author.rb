class Author < ActiveRecord::Base
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: "should match confrimation", if: :password
end
