<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' id='kboard-skin-thumbnail-css'
	href='/airport/resources/common/css/comments.css' type='text/css'
	media='all' />
</head>
<body>
	<div class="content">
		<div class="container-fluid">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header card-header-primary">
						<h4 class="card-title">공지사항</h4>
					</div>
					<div class="card-body">
						<div>
							<h4>제목</h4>
							<hr />
							<div class="row">
								<span class="col-md-3"><label>작성자</label>아이디</span> <span
									class="col-md-3"><label>작성일</label>20180909</span> <span
									class="col-md-3"><label>조회수</label>5</span>
							</div>
							<hr />
							<div>
								<div>
									<label>내용</label>
								</div>
								<div style="height: 300px">
									<p>내용~~~</p>
								</div>
							</div>
						</div>
						<div class="kboard-comments-area">
							<div id="kboard-comments-1851" class="kboard-comments-default">
								<div class="kboard-comments-wrap">
									<!-- 댓글 리스트 시작 -->
									<div id="kboard-comments-1851" class="kboard-comments-default">
										<div class="kboard-comments-wrap">
											<div class="comments-header">
												<div class="comments-count">
													전체 <span class="comments-total-count" id="cmtcount">
													1
													</span>
												</div>
												<hr />
											</div>
											<div class="comments-list" id="cmtlist">
													<ul>
														<li class="kboard-comments-item">
															<div class="comments-list-username">id</div>
															<div class="comments-list-create">20180909</div>
															<div class="comments-list-content">코멘트내용</div>
															<div class="comments-list-controller">
																<div class="right">
																	<a type="button" class="deletebtn" href="#">삭제</a> <input
																		type="hidden" id="cmt_no" value="${prdcmt.prdcmt_no }" />
																</div>
															</div>
														</li>
													</ul>
											</div>
											<form id="cmtform" method="post">
												<div class="kboard-comments-form">
													<div class="comments-field">
														<textarea name="pro_comment" id="pro_comment"
															placeholder="댓글을 입력하세요." style="color: black;"></textarea>
													</div>
													<div class="comments-submit-button">
														<input class="btn" type="submit" style="background-color:#9c27b0;"value="입력" id="insertcmt">
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
						<hr />
						<a class="pull-right" href="#"><i class="material-icons">delete</i>삭제</a>
						<a class="pull-right" href="#"><i class="material-icons">edit</i>수정</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>