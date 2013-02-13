module RemarksHelper

  def remark_format(remark)
    remark.title + ": " + remark.explanation 
  end

  def remark_header(id)
    Connotation.find(id).name
  end
end