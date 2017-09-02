module CareActionsHelper
  def renderCareActionIcon(care_action)
    return '' unless care_action&.category
    image_tag("dashboard/#{care_action.category}.jpg", width: 30, height: 30)
  end
end
