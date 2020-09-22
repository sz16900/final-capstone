class CoachSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url, :slug, :description, :age, :tagline, :likes

  has_many :appointments 
  has_many :users
  has_many :reviews
end
