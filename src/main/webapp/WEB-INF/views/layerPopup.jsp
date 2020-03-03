<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>layerPopup</title>
</head>
<style>
	#dimBg{
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		background: #000;
		opacity: .7;
		filter: alpha(opacity=50);
	}
	#popInfo{
		position: relative;
		top: 50px;
		left: 200px;
		text-align : center;
		width : 200px;
		height : auto;
		background-color: #fff;
		border: 1px solid #3571B5;
		z-index: 10;
	}
</style>
<body>
	<div>
		<h1>LayerPopup & DIM</h1>
		<a href="#popInfo" onclick="viewPop();">LayerPopup & DIM</a>
	</div>
	
	<div id="dimBg" hidden="hidden"></div>
	<div id="popInfo" hidden="hidden">
		<div>
			<p>LayerPopup</p>
		</div>
		<div>
			<a class="ui-close">닫기</a>
		</div>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" charset="utf-8">
		viewPop = function(){
			$("#dimBg").show();
			$("#popInfo").show();
			
			//$('html, body').animate({scrollTop : 0}, 600);
		}
		
		$(function(){
			$(".ui-close").click(function(){
				$("#dimBg").hide();
				$("#popInfo").hide();
			});
		});
	</script>
	
</body>
</html>
