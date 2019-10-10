module ApplicationHelper

  def get_colleague_name(id)
    @colleague = Colleague.find_by(id: id)
    return @colleague.full_name
  end

end
