module UserHelper
  def select_gender
    User.genders.keys.map{|gender| [gender.titleize, gender]}
  end

  def select_role
    User.roles.keys.map{|role| [role.titleize, role]}
  end
end
