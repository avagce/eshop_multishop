<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="boardListR.jsp">
<title>Travel Interact</title>
    <link href="${context}/font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<script src="${context}/js/jquery-1.9.1.js"></script>
	<script src="${context}/js/bootstrap.min.js"></script>

    <script src="${context}/js/plugins/metisMenu/metisMenu.min.js"></script>

    <script src="${context}/js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="${context}/js/plugins/dataTables/dataTables.bootstrap.js"></script>

    <script src="${context}/js/sb-admin-2.js"></script>
</head>

<script type="text/javascript">
	$(document).ready(function() {
	    $('#dataTables-example').dataTable();

	    $('#dataTables-example_filter').parent().remove();
	    $('#dataTables-example_length').parent().remove();


	});

	function fn_createBoard(){
		location.href = "${context}/work/board/createBoard.do";
	}
	function fn_createBoard2(){
		location.href = "${context}/work/board/createBoard2.do";
	}
	
	
</script>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
	<div id="jumbotron" class="container">
		<div class="jumbotron jumbotron-info" style="background-color: lightgreen;">
			<h1><font color="green"><strong>유저게시판</strong>&nbsp;<span class="glyphicon glyphicon-blackboard"></span></font></h1>
			<p><font color="green">GKYK MALL</font></p>
		</div>
		
		<div class="row">
			
			
			
			<div class="col-md-12">
				<div class="page-header" style="float: right;">
					  <button type="button" class="btn btn-success btn-lg" onclick="fn_createBoard2()">새 글 쓰기</button>
				</div>
			</div>
			
			
			
			<div class="col-md-12">
				    <div class="panel panel-default">
				        <!-- /.panel-heading -->
				        <div class="panel-body">
				            <div class="table-responsive">
				                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
				                    <thead>
				                        <tr>
				                        	<th style="text-align: left; vertical-align: middle; width: 30px;">Board</th>
				                        </tr>
				                    </thead>
				                    <tbody>
				                    	<c:forEach items="${dsBoardList}" var="dsBoardList" varStatus="courseIdx">
				                         <tr>
				                         	<td style="vertical-align: middle;">
				                         		<div class="col-md-7"><a href ="${context}/work/board/retrieveBoard2.do?boardNo=${dsBoardList.BOARD_NO}"><font size="5px">${dsBoardList.BOARD_TITLE}</font></a></div>
				                         		<div class="col-md-1"><span class="glyphicon glyphicon-eye-open fa-1x"></span><b>${dsBoardList.BOARD_HITS}</b></div>
												<div class="col-md-1" style="color: gray;"><small>${dsBoardList.BOARD_TIMEAGO}</small></div>
				                         	</td>
				                         </tr>
					                    </c:forEach>
				                    </tbody>
				                </table>
				            </div>
				            <!-- /.table-responsive -->
				        </div>
				        <!-- /.panel-body -->
				    </div>
			    <!-- /.panel -->
			</div>
			
		</div>
	</div>
	
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>