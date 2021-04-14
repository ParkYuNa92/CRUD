<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


			<%@ include file="../include/header.jsp" %>
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">테이블</h1>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								점수 조회 페이지		
							</div>
							<!-- /.panel-heading -->
							<div class="panel-body">
								<table width="100%" class="table table-striped table-bordered table-hover"
									id="dataTables-example">
									<thead>
										<tr>
											<th>#번호</th>
											<th>이름</th>
											<th>비밀번호</th>
											<th>국어</th>
											<th>수학</th>
											<th>영어</th>
											<th>총점</th>
											<th>평균</th>
										</tr>
									</thead>
									<c:forEach items="${list}" var="score">
										<tr>
											<td>
												<a href='/score/get?sno=<c:out value=" ${score.sno}" />'>
												<c:out value="${score.sno}" /></a>
											</td>
											
											<td>
												<c:out value="${score.sname}" />
											</td>
											<td>
												<c:out value="${score.spassword}" />
											</td>
											<td>
												<c:out value="${score.korea}" />
											</td>
											<td>
												<c:out value="${score.math}" />
											</td>
											<td>
												<c:out value="${score.eng}" />
											</td>
											<td>
												<c:out value="${score.korea+score.math+score.eng}" />
											</td>
											<td>
												<c:out value="${(score.korea+score.math+score.eng)/3.0}" />
											</td>
											
										</tr>
									</c:forEach>
								</table>
								<!--  모달 추가  -->
								<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title">모달 제목 </h5>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close" aria-hidden="true">&times;</button>
											</div>
											<div class="modal-body">처리가 완료되었습니다 </div>
											<div class="modal-footer">
												<button type="button" class="btn btn-primary">변경내용 저장 </button>
												<button type="button" class="btn btn-secondary"
													data-dismiss="modal">닫기</button>
											</div>
										</div> <!--  modal-content -->
									</div> <!--  modal-dialog -->
								</div> <!--  modal -->
							</div> <!--  panel-body -->
						</div> <!--  panel-->
					</div> <!--  col-lg-12 -->
				</div> <!--  row -->

				<script type="text/javascript">
					$(document).ready(
						function () {
							var result = '<c:out value="${result}"/>';
							console.log("여기값은 ", result);
							checkModal(result); //함수 호출 
							history.replaceState({}, null, null); //첫번째 파라미터는 객체,두번쨰 파라미터는 제목(null), 세번쨰 파라미터는  option(null)
							function checkModal(result) {
								if (result === '' || history.state) return;
								if (parseInt(result) > 0) $(".modal-body").html("게시글 " + parseInt(result) + " 번이 등록되었습니다.");
								$("#myModal").modal("show");
							} // checkModal 끝 
							$("#regBtn").on("click", function () {
								self.location = "/board/register";
							});
						});
				</script>
				<%@ include file="../include/footer.jsp" %>