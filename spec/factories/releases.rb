FactoryBot.define do
  factory :release do
    email_subject { "Heute Freigabe!" }
    email_template { <<~EMAIL_TEMPLATE }
      An das Brauzeugi mit der E-Mail %{user_email}

      Wir haben soeben %{release_distributable_total} Biere freigegeben.
      %{user_voices_count} Stimmen berechtigen dich zu %{entitlement_value} Bieren aus der Freigabe.

      Beste Grüsse
      Brauzeugen
    EMAIL_TEMPLATE
    distributable_total { 132 }
  end
end
