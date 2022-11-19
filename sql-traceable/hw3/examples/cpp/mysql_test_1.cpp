
#include <iostream>
#include <mysql_connection.h>
#include <driver.h>
#include <statement.h>
#include <resultset.h>
#include <exception.h>
#include "mysql_credentials.h"

using namespace std;

int main()
{
  sql::Driver *driver;
  sql::Connection* cn;
  sql::Statement* st;
  sql::ResultSet* rs;
  
  try {
    driver = get_driver_instance();
    cn = driver->connect(HOST, USER, PASS);
    cn->setSchema("bowersDB");

    st = cn->createStatement();
    string q = "SELECT id, name FROM pet ORDER BY name";
    rs = st->executeQuery(q);
    while (rs->next()) {
      string id = rs->getString("id");
      string name = rs->getString("name");
      cout << id << ", " << name << endl;
    }

  } catch (sql::SQLException &e) {
    cout << e.what() << endl;
  }
  
  delete rs;
  delete st;
  delete cn;
}
