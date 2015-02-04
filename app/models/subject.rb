class Subject < ActiveRecord::Base
  has_many :tasks, dependent: :destroy

  accepts_nested_attributes_for :tasks, reject_if: :reject_tasks
	validates :name, presence: true, length: {maximum: 100}

  def reject_tasks(attributed)
    attributed['name'].blank?
  end
end