<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>

	
	
	<div class="baidu" id="fix">
	
<form  action="SearchName" method="post" name="f" onsubmit="return chkForm(this)" id="f">    
      <div class="search_bgimg"><!--select class="option" name="choice" style="width:500px;height:35.78px;"BACKGROUND-COLOR: #FFFFF0;color: #003366;>
                                <option value="title">Title</option>
                                <option value="author">Author</option>
                                <option value="isbn">ISBN</option>
                              </select-->
              <input type="hidden" id="historyCount" name="historyCount" value="1" />
          <span class="sone">
          Please input the name of reader
		  <input  type="text" name="strText"class="sou" style ="width:500px ;heigh:400px" style="center">
		  </span>
			 <span>
			<input class="btn" type="submit" value="search">
		    </span>
             
              <br>
              <p><span id="msg" style="color:red"></span><br></p>
       
    					
                       
    	</div></form>
</div>



	<div class="panel admin-panel">

		<table class="table table-hover text-center">
			<tr>
				<th width="9%" style="text-align: left;">Record ID</th>
				<th width="9%">Reader phone</th>
				<th width="9%">Reader name</th>
				<th width="9%">Book id</th>
				<th width="10%">Book name</th>
				<th width="10%">Borrow date</th>
				<th width="9%">Return date</th>
			</tr>
			<c:forEach items="${borrowRecordses}" var="borrowRecords" varStatus="bo">
				<tr>
					<td style="text-align: left;"><!--input type="checkbox" name="focus" value="${BorrowRecords.getId()}" /-->
					${borrowRecords.getId()}</td>
					<td>${borrowRecords.getPhone()}</td>
					<td>${borrowRecords.getName()}</td>
					<td>${borrowRecords.getBookId()}</td>
					<td>${borrowRecords.getBookName()}</td>
					<td>${borrowRecords.getBorrowDate()}</td>
					<td>${borrowRecords.getReturnDate()}</td>
					<td>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>

</body>
</html>