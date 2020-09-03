class ApiVersionConstraint
  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  def matches?(req)
    @default || req.headers["Aceppt"].include?("application/vnd.taskmanager.v#{@version}")
  end
end
