<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
			<%@ include file="../include/header.jsp" %>
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">점수 조회 페이지 </h1>
					</div>
					<!-- /.col-lg-12 -->
				</div> <!-- /.row -->
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading"> 점수 조회 페이지 </div> <!-- /.panel-heading -->
							<div class="panel-body">
								<div class="form-group">
									<label for="sno">번호</label>
									<input class="form-control" name="sno" id="sno"
										value='<c:out value="${score.sno}"/>' readonly="readonly">
								</div>
								<div class="form-group">
									<label for="sname"></label> 이름</label>
									<input class="form-control" name="sname" id="sname"
										value='<c:out value="${score.sname}"/>' readonly="readonly">
								</div>
								<div class="form-group">
									<label for="spassword">비밀번호</label>
									<textarea class="form-control" rows="3" name="spassword" id="spassword"
										readonly="readonly"><c:out value="${score.spassword}"/> </textarea>
								</div>
								<div class="form-group">
									<label for="korea">국어</label>
									<input class="form-control" name="korea" id="korea"
										value='<c:out value="${score.korea}"/>' readonly="readonly">
								</div>
								<div class="form-group">
									<label for="math">수학</label>
									<input class="form-control" name="math" id="math"
										value='<c:out value="${score.math}"/>' readonly="readonly">
								</div>
								<div class="form-group">
									<label for="eng">영어</label>
									<input class="form-control" name="eng" id="eng"
										value='<c:out value="${score.eng}"/>' readonly="readonly">
								</div>
								<div class="form-group">
									<label for="total">총점</label>
									<input class="form-control" name="total" id="total"
										value='<c:out value="${score.korea+score.math+score.eng}"/>' readonly="readonly">
								</div>
								<div class="form-group">
									<label for="avg">평균</label>
									<input class="form-control" name="avg" id="avg"
										value='<c:out value="${(score.korea+score.math+score.eng)/3.0}"/>' readonly="readonly">
								</div>
								<button data-oper='modify' class="btn btn-default"
									onclick="location.href='/score/modify?sno=<c:out value="${score.sno}" />'"> 수정
								</button>
								<button data-oper='list' class="btn btn-info" 
									onclick="location.href='/score/list'">목록 </button>
							</div> <!-- end panel-body -->
						</div> <!-- end panel -->
					</div> <!-- col-lg-12 -->
				</div> <!-- row -->
				<%@ include file="../include/footer.jsp" %>