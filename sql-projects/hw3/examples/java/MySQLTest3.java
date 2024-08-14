
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;
import java.util.Scanner;
import java.util.Date;
import java.text.SimpleDateFormat;


public class MySQLTest3 {

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
      
      // get a pet id, make sure it is unique
      System.out.print("Please enter a pet id: ");
      Scanner reader = new Scanner(System.in);
      int id = Integer.parseInt(reader.nextLine());
      String q = "SELECT * FROM pet WHERE id = ?";
      PreparedStatement st = cn.prepareStatement(q);
      st.setInt(1, id);
      ResultSet rs = st.executeQuery();
      if (rs.next()) {
        System.out.println("This pet id is already taken");
        rs.close();
        st.close();
        cn.close();
        System.exit(1);
      }
      rs.close();
      st.close();
      
      // get pet name, breed, type, bday, and size
      System.out.print("Please enter the pet's name: ");
      String name = reader.nextLine();
      System.out.print("Please enter the pet's type (dog, cat, etc): ");
      String type = reader.nextLine();
      System.out.print("Please enter the pet's breed: ");
      String breed = reader.nextLine();
      System.out.print("Please enter the pet's birthdate ('MM/DD/YYYY'): ");
      Date bday = new SimpleDateFormat("MM/dd/yyy").parse(reader.nextLine());
      System.out.print("Please enter the pet's size (S, M, L, XL): ");
      String size = reader.nextLine();
      System.out.print("Please enter the pet's appearance: ");
      String appearance = reader.nextLine();
      
      // create and execute a prepared statement 
      q = "INSERT INTO pet VALUES (?,?,?,?,?,?,?)";
      st = cn.prepareStatement(q);
      st.setInt(1, id);
      st.setString(2, name);
      st.setString(3, type);
      st.setString(4, breed);
      st.setDate(5, new java.sql.Date(bday.getTime()));
      st.setString(6, size);
      st.setString(7, appearance);
      st.execute();

      // program exit message
      System.out.println("Pet " + id + " was added to the database!");
      
      reader.close();
      st.close();
      cn.close();
      
    } catch(Exception err) {
      err.printStackTrace();
    }
    
    
  }

}
