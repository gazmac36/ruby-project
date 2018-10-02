DROP TABLE IF EXISTS volunteer_categories;
DROP TABLE IF EXISTS service_user_categories;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS befriendings;
DROP TABLE IF EXISTS service_users;
DROP TABLE IF EXISTS volunteers;

CREATE TABLE  volunteers (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  age VARCHAR(3),
  address_line1 VARCHAR(255),
  address_line2 VARCHAR(255),
  address_town VARCHAR(35),
  address_county VARCHAR(35),
  address_postcode VARCHAR(8),
  contact_phone VARCHAR(15),
  contact_email VARCHAR(255)
);

CREATE TABLE  service_users (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  age VARCHAR(3),
  address_line1 VARCHAR(255),
  address_line2 VARCHAR(255),
  address_town VARCHAR(35),
  address_county VARCHAR(35),
  address_postcode VARCHAR(8),
  contact_phone VARCHAR(15),
  contact_email VARCHAR(255)
);

CREATE TABLE categories (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE volunteer_categories (
  id SERIAL4 PRIMARY KEY,
  volunteer_id INT4 REFERENCES volunteers(id) ON DELETE CASCADE,
  category_id INT4 REFERENCES categories(id) ON DELETE CASCADE
);

CREATE TABLE service_user_categories (
  id SERIAL4 PRIMARY KEY,
  service_user_id INT4 REFERENCES service_users(id) ON DELETE CASCADE,
  category_id INT4 REFERENCES categories(id) ON DELETE CASCADE
);

CREATE TABLE befriendings (
  id SERIAL4 PRIMARY KEY,
  location VARCHAR(255),
  volunteer_id INT4 REFERENCES volunteers(id) ON DELETE CASCADE,
  service_user_id INT4 REFERENCES service_users(id) ON DELETE CASCADE
);
