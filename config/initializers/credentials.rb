module Credentials
  def self.dig(*args)
    Rails.application.credentials.dig(*args) || local_yaml.dig(*args) || raise("Credential '#{args}' not present!")
  end

  def self.local_yaml
    @local_yaml ||= YAML.safe_load(read_local_config, symbolize_names: true)
  end

  def self.read_local_config
    File.read(Rails.root.join("config", "credentials.local.yml"))
  end
end
