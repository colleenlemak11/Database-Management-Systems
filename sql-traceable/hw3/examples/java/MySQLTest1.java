
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class MySQLTest1 {

  public static void main(String[] args) {

    try {
      // connection info
      Properties prop = new Properties();
      FileInputStream in = new FileInputStream("config.properties");
      prop.load(in);
      in.close();
      
      // connect to datbase
      String hst = prop.getProperty("host");
      String usr = prop.getProperty("user");
      String pwd = prop.getProperty("password");
      String dab = "bowersDB";
      String url = "jdbc:mysql://" + hst + "/" + dab;
      Connection cn = DriverManager.getConnection(url, usr, pwd);
      
      // create and execute query
      Statement st = cn.createStatement();
      String q = "SELECT id, name FROM pet ORDER BY name";
      ResultSet rs = st.executeQuery(q);
      
      // print results
      while(rs.next()) {
        String id = rs.getString("id");
        String name = rs.getString("name");
        System.out.println(id + ", " + name);
      }
      
      // release resources
      rs.close();
      st.close();
      cn.close();
    }
    catch(Exception err) {
      err.printStackTrace();
    }
  }
  
}
