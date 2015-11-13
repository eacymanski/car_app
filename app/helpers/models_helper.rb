module ModelsHelper
  def make_options
    Make.all.map {|make| [make.name, make.id] }.sort
  end
  
  def type_options
    Type.all.map {|type| [type.name, type.id] }.sort
  end
end
