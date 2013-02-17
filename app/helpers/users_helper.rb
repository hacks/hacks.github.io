module UsersHelper
  def email_link(user, options={})
    if options[:icon]
      text = raw("<i class=\"icon-envelope\"></i>")
    else
      text = user.email
    end
    link_to text, "mailto:#{user.email}"
  end
  def twitter_link(user, options={})
    return nil if user.twitter.blank?
    if options[:icon]
      text = raw("<i class=\"icon-twitter\"></i>")
    else
      text = user.twitter
    end
    link_to text, "http://www.twitter.com/#{user.twitter}"
  end
  def github_link(user, options={})
    return nil if user.github.blank?
    if options[:icon]
      text = raw("<i class=\"icon-github-alt\"></i>")
    else
      text = user.github
    end
    link_to text, "http://www.github.com/#{user.github}"
  end
end
