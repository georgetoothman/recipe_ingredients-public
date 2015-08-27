# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  calories   :integer
#  vegetarian :boolean
#

class Ingredient < ActiveRecord::Base
end
