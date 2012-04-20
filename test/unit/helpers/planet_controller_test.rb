require 'test_helper'
# Rails genera estos tests automaticamente.
##
Prueban que devuelve correctamente las páginas index y contact
#
class PlanetControllerTest < ActionController::TestCase
test "should get index" do
get :index # Invoca “get” en acción “index”
assert_response :success # código HTTP: “200 OK”
end
test "should get contact" do
get :contact # Invoca “get” en acción “contact”
assert_response :success # código HTTP: “200 OK”
end

test "should get author" do
get :author # Invoca “get” en acción “contact”
assert_response :success # código HTTP: “200 OK”
end

test "should get ejemplo" do
get :ejemplo # Invoca “get” en acción “contact”
assert_response :success # código HTTP: “200 OK”
end

end