class Release < ApplicationRecord
  has_many :entitlements, dependent: :destroy

  validates :distributable_total, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  validates :distributable_total, inclusion: { in: ->(i) { [i.distributable_total_was] } },
                                  on: :update,
                                  if: :notification_sent_at

  after_commit :issue_entitlements!, on: :create
  after_commit :reset_entitlements!, on: :update, if: :distributable_total_changed?

  def issue_entitlements!
    voices_per_user = User.left_joins(:voices).group(:id).count
    entitlement_plan = DistributionPlan.new(voices_per_user, distributable_total).log10_social
    entitlement_plan.each do |user_id, value|
      entitlements << Entitlement.new(user_id: user_id, value: value)
    end
    save!
  end

  def reset_entitlements!
    entitlements.destroy_all
    issue_entitlements!
  end
end
