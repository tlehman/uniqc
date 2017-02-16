class Array
  def uniqc
    self.group_by { |x| x }.map { |k,v| [k,v.count] }
  end
end
