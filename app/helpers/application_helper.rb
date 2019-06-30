module ApplicationHelper
  def current_user
    User.first || User.new
  end

  def flash_class(level)
    case level.to_sym
    when :notice then 'alert alert-info'
    when :success then 'alert alert-success'
    when :error then 'alert alert-error'
    when :alert then 'alert alert-error'
    else raise "Unknown flash class #{level}"
    end
  end
end
