require "test_helper"

class WarehouseTest < ActiveSupport::TestCase
  test "name of warehouse returns capitalized" do
    warehouse = Warehouse.new(name: "ikea", location: "london")
    assert_equal "Ikea", warehouse.name_capitalized
    end
end
