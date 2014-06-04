module ApplicationHelper
  def bootstrap_class_for(flash_type)
    case flash_type
      when "success"
        "alert-success"   # Green
      when "error"
        "alert-danger"    # Red
      when "alert"
        "alert-warning"   # Yellow
      when "notice"
        "alert-info"      # Blue
      else
        flash_type.to_s
    end
  end

  def icon(shape)
    "<span class='glyphicon glyphicon-#{shape}'></span>".html_safe
  end

  def active_menu(target_controller)
    "class=#{controller_name == target_controller ? 'active' : ''}"
  end

  def user_email(post)
    post.user.present? ? post.user.email : "an anonymous user"
  end

  def user_roles(user)
    user.roles.map(&:name).join(', ').titleize
  end

  def link_to_provider(user)
    provider = user.identities.map(&:provider).join(', ')
    provider = case provider
    when 'facebook' then link_to( 'Go to Facebook', "http://www.facebook.com" )
    when "twitter" then link_to( 'Go to Twitter', "http://twitter.com" )
    when "linkedin" then link_to( 'Go to Linkedin', "http://linkedin.com" )
    when 'kakao'    then link_to( 'Go to Kakao', "http://kakao.com")
    end

  end

  def link_to_add_an_item(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", u: builder)
    end
    link_to(name, '#', class: "add_an_item", data: {id: id, fields: fields.gsub("\n", "")})
  end
end
