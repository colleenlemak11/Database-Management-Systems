
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;
import java.util.Scanner;


public class MySQLTest5 {

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
      
      // get a pet id, make sure it is valid
      System.out.print("Please enter a pet id: ");
      Scanner reader = new Scanner(System.in);
      int id = Integer.parseInt(reader.nextLine());
      String q = "SELECT * FROM pet WHERE id = ?";
      PreparedStatement st = cn.prepareStatement(q);
      st.setInt(1, id);
      ResultSet rs = st.executeQuery();
      if (!rs.next()) {
        System.out.println("This pet id is invalid");
        rs.close();
        st.close();
        cn.close();
        System.exit(1);
      }
      else {
        System.out.println("\nUpdating: " + rs.getString("name") + ", " + 
                           rs.getString("appearance"));
      }
      rs.close();
      st.close();

      // prompt for a new name and appearance
      System.out.print("\nPlease enter the pet's new name: ");
      String name = reader.nextLine();
      System.out.print("Please enter the pet's new appearance: ");      
      String appearance = reader.nextLine();
      
      // create and execute a prepared statement 
      q = "UPDATE pet SET name = ?, appearance = ? WHERE id = ?";
      st = cn.prepareStatement(q);
      st.setString(1, name);
      st.setString(2, appearance);
      st.setInt(3, id);
      st.execute();

      // exit program
      System.out.println("Pet " + id + " has been updated in the database!");
      
      reader.close();
      st.close();
      cn.close();
      
    } catch(Exception err) {
      err.printStackTrace();
    }
    
    
  }

}
