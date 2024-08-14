
#include <iostream>
#include <mysql_connection.h>
#include <driver.h>
#include <prepared_statement.h>
#include <resultset.h>
#include <exception.h>
#include "mysql_credentials.h"

using namespace std;


int main()
{
  sql::Driver* driver;
  sql::Connection* cn;
  sql::PreparedStatement* st;
  sql::ResultSet* rs;
  
  try {
    // create a connection
    driver = get_driver_instance();
    cn = driver->connect(HOST, USER, PASS);
    cn->setSchema("bowersDB");

    // get a category from the user
    string user_input_1;
    string user_input_2;
    cout << "Please enter a pet type (dog, cat, etc): ";
    cin >> user_input_1;
    cout << "Please enter an appearance keyword: ";
    cin >> user_input_2;

    // create and execute query
    string q =
      "SELECT id, name, appearance "
      "FROM pet "
      "WHERE type = ? AND INSTR(appearance, ?)";
    st = cn->prepareStatement(q);
    st->setString(1, user_input_1);
    st->setString(2, user_input_2);

    // print the result
    rs = st->executeQuery();
    while (rs->next()) {
      cout << rs->getInt("id") << ", "
           << rs->getString("name") << ", "
           << rs->getString("appearance") << endl;
    }

  } catch (sql::SQLException &e) {
    cout << e.what() << endl;
  }

  delete rs;
  delete st;
  delete cn;
}

