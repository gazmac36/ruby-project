require('minitest/autorun')
require('minitest/rg')
require_relative('../models/service_user')

class TestServiceUser < MiniTest::Test
  def setup
    @service_user_1 = ServiceUser.new(
      'name' => 'service user 1',
      'age' => 34,
      'address_line1' => '1 the street',
      'address_line2' => '',
      'address_town' => 'the town',
      'address_county' => 'the county',
      'address_postcode' => 'BC1 1DE',
      'contact_phone_number' => '04321 987650',
      'contact_email' => 'serviceuser1@gmail.com',
      'categories' => %w[deaf]
    )
  end

  def test_volunteer_name
    assert_equal('service user 1', @service_user_1.name)
  end

  def test_volunteer_age
    assert_equal(34, @service_user_1.age)
  end

  def test_volunteer_street
    assert_equal('1 the street', @service_user_1.address_line1)
  end

  def test_volunteer_city
    assert_equal('the town', @service_user_1.address_town)
  end

  def test_volunteer_postcode
    assert_equal('BC1 1DE', @service_user_1.address_postcode)
  end

  def test_volunteer_phone_number
    assert_equal('04321 987650', @service_user_1.contact_phone)
  end

  def test_volunteer_email
    assert_equal('serviceuser1@gmail.com', @service_user_1.contact_email)
  end

  def test_volunteer_categories
    assert_equal(0, @service_user_1.categories.count)
  end
end
