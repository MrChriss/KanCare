module CareActionsHelper
  def renderCareActionIcon(care_action)
    return '' unless care_action&.category
    image_tag("care_actions/#{care_action.category}.png", width: 30, height: 30)
  end
end
