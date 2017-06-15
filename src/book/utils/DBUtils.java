package book.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import book.bean.Book;
 

 
public class DBUtils {
 

 
  public static List<Book> queryProduct(Connection conn) throws SQLException {
      String sql = "Select * from book.bookmanage ";
 
      PreparedStatement pstm = conn.prepareStatement(sql);
 
      ResultSet rs = pstm.executeQuery();
      List<Book> list = new ArrayList<Book>();
      while (rs.next()) {
          int id = rs.getInt("id");
          String name = rs.getString("name");
          String publisher = rs.getString("publisher");
          int page = rs.getInt("page");
          
          Book book = new Book();
          book.setId(id);
          book.setName(name);
          book.setPublisher(publisher);
          book.setPage(page);
          
          list.add(book);
      }
      return list;
  }
}