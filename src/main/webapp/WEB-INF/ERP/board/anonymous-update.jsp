<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="content">
		<div class="col-md-12">
			<form class="form-horizontal" method="post" action="/airport/erp/anonymousupdate.do" enctype="multipart/form-data">
			<div class="card">
				<div class="card-header card-header-primary">
					<h4 class="card-title">익명글</h4>
					<input type="hidden" name="ctg" value="anonymous">
					<input type="hidden" name="boardno" value="${post.boardno}">
				</div>
				<div class="card-body">
					<div>
					<span>제목</span>
					<input type="text" class="form-control" name="title" value="${post.title}" required>
					<input type="hidden" name="empno" value="0">
					</div>
					<div>
						<label>내용</label>
						<textarea class="form-control" rows="15" name="txt" required>${post.txt}</textarea>
					</div>
						<div><label>첨부파일</label>
						<div class="attr-value">
						<input type="file" id="upfile" name="upfile" value="${post.attach}">
						</div>
					</div>
				</div>
			</div>
			<button type="submit" class="btn btn-primary pull-right">등록하기</button>
			</form>
		</div>
	</div>
</body>
</html>