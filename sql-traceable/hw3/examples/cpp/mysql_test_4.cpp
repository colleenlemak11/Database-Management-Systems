
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

    // get a pet id, make sure it is valid
    cout << "Please enter a pet id: ";
    int id;
    cin >> id;
    cin.ignore();
    string q = "SELECT * FROM pet WHERE id = ?";
    st = cn->prepareStatement(q);
    st->setInt(1, id);
    rs = st->executeQuery();
    if (!rs->next()) {
      cout << "This pet id is invalid" << endl;
      delete rs;
      delete st;
      delete cn;
      return 1;
    }
    delete rs;
    delete st;

    q = "DELETE FROM pet WHERE id = ?";
    st = cn->prepareStatement(q);
    st->setInt(1, id);
    st->executeUpdate();

    cout << "Pet id " << id << " has been removed from the database" << endl;
    
  } catch (sql::SQLException &e) {
    cout << e.what() << endl;
  }

  delete st;
  delete cn;

}
