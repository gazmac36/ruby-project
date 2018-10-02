require('minitest/autorun')
require('minitest/rg')
require_relative('../models/volunteer')

class TestVolunteer < MiniTest::Test
  def setup
    @volunteer_1 = Volunteer.new(
      'name' => 'volunteer1',
      'age' => 24,
      'address_line1' => '1 the street',
      'address_line2' => '',
      'address_town' => 'the town',
      'address_county' => 'the county',
      'address_postcode' => 'AB1 1CD',
      'contact_phone_number' => '01234 567890',
      'contact_email' => 'volunteer1@gmail.com',
      'categories' => %w[deaf blind dumb]
    )
  end

  def test_volunteer_name
    assert_equal('volunteer1', @volunteer_1.name)
  end

  def test_volunteer_age
    assert_equal(24, @volunteer_1.age)
  end

  def test_volunteer_street
    assert_equal('1 the street', @volunteer_1.address_line1)
  end

  def test_volunteer_city
    assert_equal('the town', @volunteer_1.address_town)
  end

  def test_volunteer_postcode
    assert_equal('AB1 1CD', @volunteer_1.address_postcode)
  end
  def test_volunteer_phone_number
    assert_equal('01234 567890', @volunteer_1.contact_phone)
  end

  def test_volunteer_email
    assert_equal('volunteer1@gmail.com', @volunteer_1.contact_email)
  end

  def test_volunteer_categories
    assert_equal(0, @volunteer_1.categories.count)
  end

end
