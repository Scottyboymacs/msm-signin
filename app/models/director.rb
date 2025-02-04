# == Schema Information
#
# Table name: directors
#
#  id                :integer          not null, primary key
#  bio               :text
#  dob               :date
#  filmography_count :integer
#  image             :string
#  name              :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Director < ApplicationRecord

has_many(:filmography, { :class_name => "Movie", :foreign_key => "director_id", :dependent => :nullify })

validates(:name, { :presence => true })

end
