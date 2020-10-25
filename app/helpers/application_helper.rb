module ApplicationHelper
  def admin_page?
    request.path.start_with?("/admin")
  end

  def nav_link(title, path)
    li_class = "nav-item"
    li_class << " active" if request.path == path

    content_tag :li, :class => li_class do
      link_to title, path, :class => "nav-link"
    end
  end

  def activity_link(title, seconds)
    video_url = "https://youtu.be/UnHOZnR2e00?t="

    link_to title, "#{video_url}#{seconds}"
  end

  def activity_row(page, lesson, activity, seconds)
    render(
      "activity_row",
      :page     => page,
      :lesson   => lesson,
      :activity => activity,
      :seconds  => seconds
    )
  end
end
