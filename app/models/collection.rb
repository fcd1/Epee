class Collection < ActiveRecord::Base
  validates :name, presence: true
  validates :atom_title, presence: true
  validates :slug, presence: true
  serialize :mime_types, Array
  serialize :sword_package_types, Array
  has_many :deposits
  has_many :depositor_collection_permissions
  has_many :depositors, through: :depositor_collection_permissions

  def info_for_service_document
    info = HashWithIndifferentAccess.new
    info[:atom_title] = atom_title
    info[:slug] = slug
    info[:mime_types] = mime_types
    info[:sword_package_types] = sword_package_types
    info[:abstract] = abstract
    info
  end
end
