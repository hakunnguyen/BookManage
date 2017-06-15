<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
  <head>
     <meta charset="UTF-8">
     <title>Home Page</title>
  </head>
  <body>

    
      <h3>書籍一覧</h3>
      
       <table border="1" cellpadding="5" cellspacing="1" >
       <tr>
          <th>ID</th>
          <th>書籍名</th>
          <th>出版社</th>
          <th>ページ数</th>
          <th>操作</th>
               
       </tr>
       <c:forEach items="${bookList}" var="book" >
          <tr>
             <td>${book.id}</td>
             <td>${book.name}</td>
             <td>${book.publisher}</td>
             <td>${book.page}</td>
            　　　　　　　<td>
            	<button onclick="window.location.href='editBook?id=${book.id}'">修正</button>             
             
             
                <button onclick="window.location.href='deleteBook?id=${book.id}'">削除</button>            
             
                <button onclick="window.location.href='comment?id=${book.id}'">感情の一覧</button>
             </td>
             
          </tr>
       </c:forEach>
    </table>
      
    
 
 
 
  </body>
</html>