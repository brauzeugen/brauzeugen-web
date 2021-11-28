class DistributionPlan
  # voices_per_user is a Hash of the form { user_key => voice_count }, e.g.: { 'sadi@example.com' => 5 }
  def initialize(voices_per_user, distributable_entitlements)
    @voices_per_user = voices_per_user
    @distributable_entitlements = distributable_entitlements
  end

  def log10_social
    voices_per_user = @voices_per_user.sort_by { |_id, count| [-count, rand] }.to_h
    entitlements_per_voice = @distributable_entitlements.fdiv(voices_per_user.values.sum)

    entitlement_plan = voices_per_user.transform_values do |individual_voice_count|
      (individual_voice_count * entitlements_per_voice).ceil.to_i
    end

    while entitlement_plan.values.sum > @distributable_entitlements
      entitlement_plan.each do |k, v|
        Math.log10(10 * v).to_i.times do
          if entitlement_plan.values.sum > @distributable_entitlements
            entitlement_plan[k] -= 1
          end
        end
      end
    end

    entitlement_plan
  end

  def socialist
    # deliberately unstable sorting:
    voices_per_user = @voices_per_user.sort_by { |_id, count| [-count, rand] }.to_h
    entitlements_per_voice = @distributable_entitlements.fdiv(voices_per_user.values.sum)

    integer_entitlements = voices_per_user.keys.index_with(0)
    float_entitlements = voices_per_user.transform_values do |individual_voice_count|
      individual_voice_count * entitlements_per_voice
    end

    distributable_entitlements = @distributable_entitlements
    try_distribute = ->(user_key, count) {
      if distributable_entitlements.positive? && count.positive?
        distributable_entitlements -= 1
        float_entitlements[user_key] -= 1
        integer_entitlements[user_key] += 1
      end
    }

    # Distribute one to everybody if possible, starting with the rich:
    float_entitlements.each { |k, v| try_distribute.call(k, v) }

    # Distribute the rest starting from the entitled poor:
    while distributable_entitlements.positive?
      float_entitlements.reverse_each.to_h.each { |k, v| try_distribute.call(k, v) }
    end

    integer_entitlements
  end
end
