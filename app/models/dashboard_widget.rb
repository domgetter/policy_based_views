class DashboardWidget
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_partial_path
    "dashboard_widgets/#{name}"
  end

  def self.all
    [
      DashboardWidget.new('list_books'),
      DashboardWidget.new('create_genre'),
      DashboardWidget.new('create_book'),
    ]
  end
end
