class Task < ApplicationRecord

    validates :title, presence: true
    validates :status, inclusion: { in: %w[pending in_progress finished]}

    # assciate Tasks with People trough Assignments
    has_many :assignments, dependent: :destroy
    has_many :people, through: :assignments

    after_create_commit -> {TaskObserver.after_create(self)}
end
