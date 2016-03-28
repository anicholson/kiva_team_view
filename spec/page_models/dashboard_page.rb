class DashboardPage
  def initialize(page)
    self.page = page
  end

  def matches?
    !!page.body.match(/Dashboard/)
  end

  private

  attr_accessor :page
end
