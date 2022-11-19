
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.util.Properties;
import java.util.Scanner;


public class MySQLTest2 {
  
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

      // get a category from the user
      System.out.print("Please enter a pet type (dog, cat, etc): ");
      Scanner reader = new Scanner(System.in);
      String userInput1 = reader.next();
      System.out.print("Please enter an appearance keyword: ");
      String userInput2 = reader.next();
      reader.close();
      
      // create and execute a prepared statement 
      String q =
        "SELECT id, name, appearance " +
        "FROM pet " + 
        "WHERE type = ? AND INSTR(appearance, ?)";
      PreparedStatement st = cn.prepareStatement(q);
      st.setString(1, userInput1);
      st.setString(2, userInput2);
      ResultSet rs = st.executeQuery();
      
      // print the result
      while(rs.next()) {
        int id = rs.getInt("id");
        String name = rs.getString("name");
        String appearance = rs.getString("appearance");
        System.out.println(id + ", " + name + ", " + appearance);
      }
      
      // release resources
      rs.close();
      st.close();
      cn.close();
      
    } catch(Exception err) {
      err.printStackTrace();
    }
  }
  
}
