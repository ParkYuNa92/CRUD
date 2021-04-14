<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

			<%@ include file="../include/header.jsp" %>
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">점수 수정 페이지 </h1>
					</div>
					<!-- /.col-lg-12 -->
				</div> <!-- /.row -->
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading"> 점수 수정 페이지 </div> <!-- /.panel-heading -->
							<div class="panel-body">
								<form action="/score/modify" role="form" method="post">
									<div class="form-group">
										<label for="sno">번호</label>
										<input class="form-control" name="sno" id="sno"
											value='<c:out value="${score.sno}"/>' readonly="readonly">
									</div>
									<div class="form-group">
										<label for="sname">이름</label>
										<input class="form-control" name="sname" id="sname"
											value='<c:out value="${score.sname}"/>'>
									</div>
									<div class="form-group">
										<label for="spassword">비밀번호</label>
										<input class="form-control" name="spassword" id="spassword"
											value='<c:out value="${score.spassword}"/>' readonly="readonly">
									</div>
									<div class="form-group">
										<label for="korea">국어</label>
										<input class="form-control" class="score" name="korea" id="korea"
											value='<c:out value="${score.korea}"/>'>
									</div>
									<div class="form-group">
										<label for="math">수학</label>
										<input class="form-control" class="score" name="math" id="math"
											value='<c:out value="${score.math}"/>'>
									</div>
									<div class="form-group">
										<label for="eng">영어</label>
										<input class="form-control" class="score" name="eng" id="eng"
											value='<c:out value="${score.eng}"/>'>
									</div>
									<div class="form-group">
										<label for="total">총점</label>
										<input class="form-control" name="total" id="total"
											value='<c:out value="${score.korea+score.math+score.eng}"/>'>
									</div>
									<div class="form-group">
										<label for="avg">평균</label>
										<input class="form-control" name="avg" id="avg"
											value='<c:out value="${(score.korea+score.math+score.eng)/3.0}"/>'>
									</div>
									
									<button type="submit" data-green='modify' class="btn btn-danger" > 수정</button>
									<button type="submit" data-green='delete' class="btn btn-warning">삭제</button>
									<button type="submit" data-green='list' class="btn btn-success" >목록</button>
								</form>
							</div> <!-- end panel-body -->
						</div> <!-- end panel -->
					</div> <!-- col-lg-12 -->
				</div> <!-- row -->
				<script type="text/javascript">
					$(document).ready(function(){
						var formObj = $("form");
						$('button').on("click", function(e){
							e.preventDefault(); //이벤트 잠시 멈춤 
							var operation = $(this).data("green");//위의 data- 이후의 값 추출 
							console.log(operation);
							
							if(operation ==='delete'){
								formObj.attr("action" ,"/score/delete");
							} else if(operation ==='list'){
								formObj.attr("action" ,"/score/list").attr("method", "get");
								formObj.empty();
							}
							formObj.submit();
						});
						
						var arr = ["korea", "math", "eng"]
						$.each(arr, function(item, index){
							
						});
						
						$("#korea").change(function() {
							var korea = parseInt($("#korea").val());
							var math = parseInt($("#math").val());
							var eng = parseInt($("#eng").val());
							$("#total").val(korea+math+eng);
							$("#avg").val((korea+math+eng)/3.0);
							
						})
						$("#math").change(function() {
							var korea = parseInt($("#korea").val());
							var math = parseInt($("#math").val());
							var eng = parseInt($("#eng").val());
							$("#total").val(korea+math+eng);
							$("#avg").val((korea+math+eng)/3.0);
							
						})
						$("#eng").change(function() {	
							var korea = parseInt($("#korea").val());
							var math = parseInt($("#math").val());
							var eng = parseInt($("#eng").val());
							$("#total").val(korea+math+eng);
							$("#avg").val((korea+math+eng)/3.0);
						})
					});
				</script>
				<%@ include file="../include/footer.jsp" %>