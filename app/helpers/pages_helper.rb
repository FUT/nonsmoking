module PagesHelper
  def active_class(controller, action)
    'active' if controller.to_s == controller_name && (action.to_s == action_name || action == :any)
  end
end
