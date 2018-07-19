class CustomerDecorator < Draper::Decorator
  delegate_all



  def full_name
    if customerfirst_name.blank? && customerlast_name.blank?
      'No name provided.'
    else
      "#{ customerfirst_name } #{ customerlast_name }".strip
    end
  end


  def doctor_name
    if customeraddress.blank?
      'Doctor name must be provided .'

    end
  end





  def joined_at
    created_at.strftime("%B %Y")
  end
end


