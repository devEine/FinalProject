<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- header -->
<jsp:include page="../include/header.jsp" />
<!-- header -->


<style>

.container{
/*  	border: 5px solid red; */
}

.container2{
/*  	border: 5px solid yellow; */

}

.container3{
/*  	border: 5px solid gray; */
	width: 100%;
}

.section-heading{
/* 	border: 5px solid blue; */
	text-align: center;
}

.contact-form-area{
/* 	border: 5px solid green; */
	
}

.form-group label{
	font-weight: bold;
}
#message{
	width: 100%;
    height: 400px;
/*      border-color: #f5f5f5; */
    resize: none;
/*      background-color: #f5f5f5;  */
}

.placeholder::placeholder{
	color: #b7b7b7; 
}

.form-control_real{
    position: relative;
    z-index: 2;
    height: 45px;
    width: 100%;
    background-color: #ffffff;
    font-size: 16px;
    margin-bottom: 15px;
    border: 1px solid #e1e1e1;
    border-radius: 2px;
     padding: 0px 20px;
    font-weight: 400;
    color: #b7b7b7;
    transition-duration: 500ms;
}
.form-control_file{
    position: relative;
    z-index: 2;
    height: 70px;
    width: 100%;
    background-color: #ffffff;
    font-size: 16px;
/*     margin-bottom: 5px; */
    border: 1px solid #e1e1e1;
    border-radius: 2px;
     padding: 15px 20px;
    font-weight: 400;
    color: #b7b7b7;
    transition-duration: 500ms;
}


.label{
	height: 40px;
}

.form-control_file input{
	background-color: white;
	color: red;
}
.board_btn{
/*  	border: 5px solid blue; */
	display: flex;
	flex-flow: row nowrap;
 	justify-content: center;

	
}

.board_btn button{
	width : 30px;
	margin : 10px 20px;
	background-color: #91C788;
	border: 0;
}

.board_btn button:hover{
	margin : 10px 20px;
	background-color: #C6EBC5;
	color: white;
	
}


</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>

<script type="text/javascript">


function readURL(input) {
	if(input.files && input.files[0]) {
		var reader = new FileReader();
		reader.onload = function(e) { document.getElementById('preview').src = e.target.result; };
		reader.readAsDataURL(input.files[0]);
	} else {
		document.getElementById('preview').src = "";
	}
}

$(document).ready(function(){
// 	alert("??????");
	$('form').submit(function(){
		alert("??????");
		// ???????????? ??????
		if($('#board_category option:selected').val()==""){
			alert('??????????????? ??????????????????.');
			$('#board_category').focus();
			return false;
		}
		
		// ?????? ??????
		if($('#contact-subject').val()==""){
			alert('????????? ???????????????.');
			$('#contact-subject').focus();
			return false;
		}
		// ?????? ??????
		if($('#message').val()==""){
			alert('????????? ???????????????.');
			$('#message').focus();
			return false;
		}
		
		alert("????????? ????????? ?????????????????????.");
	});
});
</script>

	
 <!-- ##### Breadcrumb Area Start ##### -->
    <div class="breadcrumb-area">
        
        <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url('/resources/img/bg-img/background-img (3).jpg');">
            <h2>COMMUNITY</h2>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="/"><i class="fa fa-home"></i> Home</a></li>
                            <li class="breadcrumb-item" aria-current="page"><a href="/"> Community</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Modify</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
<!-- ##### Breadcrumb Area End ##### -->


			<!-- ????????? ????????? ??????@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ --> 
<div class="container">
	<div class="row align-items-center justify-content-between container2">
		<div class="container3">			
 		
                    
			<!-- Section Heading -->
			<div class="section-heading">
				<h2>Modify Board</h2>
			</div>
                    
             
             
            <!-- ??????, ?????? ??? ????????? ????????? ?????? -->
            <div class="contact-form-area mb-100">
				<form action="/board/boardModify?oldfile1=${vo.content_img}&oldfile2=${vo.content_img2}&oldfile3=${vo.content_img3}" enctype="multipart/form-data" method="post">
                <input type="hidden" class="form-control" name="board_num" id="contact-name" readonly value="${vo.board_num }">
                	<div class="row">
                		
                		<!-- ????????? ?????? -->
                    	<div class="col-12 col-md-6">
                        	<div class="form-group">
                            	<select class="form-control_real" name="board_category" id="board_category" >
									<option value="??????">??????</option>
									<option value="??????">??????</option>
									<option value="??????">??????</option>
									<option value="??????">??????</option>
                               </select>
                            </div>
                        </div>
                        
                        
                        <!-- ???????????? -->
                        <div class="col-12 col-md-6">
                        	<div class="form-group">
                            	<input type="text" class="form-control_real" name="user_name" id="contact-name" readonly value="${vo.user_name }">
                            </div>
                        </div>
                        
                        
                        <!-- ?????? -->
                        <div class="col-12">
                            <div class="form-group">
                                <input type="text" class="form-control placeholder" name="title" id="contact-subject" value="${vo.title }">
                            </div>
                        </div>
                        
                        
                        <!-- ?????? -->
                        <div class="col-12">
                            <div class="form-group">
                            	<textarea class="form-control" name="content" id="message" cols="30" rows="10">${vo.content }</textarea>
                            </div>
                        </div>
                        
                        
                        <!-- ???????????? -->
<!--                         <div class="col-12 mb-4 ">
                        	<div class="form-group">
                        		<input type="file" class="form-control_file" id="content_img" name="img" onchange="readURL(this);">
                         	<img id="preview"/>
                        	</div>
                    	</div> -->
                    	<div class="carousel-item active">
                        	<a class="product-img" href="${pageContext.request.contextPath }/resources/board_file/${vo.content_img }" >
                            <img src="${pageContext.request.contextPath }/resources/board_file/${vo.content_img }" alt="1" style="width: 300px; margin: 20px;">
                            </a>
<!--                             		<input type="file" class="form-control_file" id="content_img" name="file1" onchange="readURL(this);"> -->
                            
                        </div>
                    	
                    	                        
                        <!-- ???????????? -->        
                        <div class="col-12 board_btn">
                            <button type="submit" class="btn alazea-btn mt-15" id="updateBoard">????????? ??????</button>
                            <button type="button" class="btn alazea-btn mt-15" onclick="location.href='/board/listBoardAll'">?????? ??????</button>
                        </div>
                        
                        
                    </div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- ????????? ????????? ???@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ --> 









<script type="text/javascript">

var ctg = "<c:out value='${vo.board_category}'/>";

$('select[name="board_category"]').val(ctg).prop("selected", true);

</script>



<!-- ?????????????????? ??? -->
<jsp:include page="../include/footer.jsp" />
<!-- ?????????????????? ??? -->





