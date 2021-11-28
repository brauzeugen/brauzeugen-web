class Release < ApplicationRecord
  has_many :entitlements, dependent: :restrict_with_exception

  def issue_entitlements!(distributable_total)
    voices_per_user = User.left_joins(:voices).group(:id).count
    entitlement_plan = DistributionPlan.new(voices_per_user, distributable_total).social
    entitlement_plan.each do |user_id, value|
      entitlements << Entitlement.new(user_id: user_id, value: value)
    end
    save!
  end
end
