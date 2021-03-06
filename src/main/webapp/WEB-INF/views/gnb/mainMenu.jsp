<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="mainMenu">
	<ul id="mainMenuList">
		<li class="md1 m1"><a><span class="glyphicon glyphicon-th-list" aria-hidden="true"></span></a></li>
		<li class="md1">
			<a <c:choose><c:when test="${param.activeMainMenu eq 1 }">class="selectedMainMenu md1Text"</c:when><c:otherwise>class="md1Text"</c:otherwise></c:choose>>NEWS</a>
			<div class="subMenu s1">
				<div class="subMenuListWrap">
					<ul class="subMenuList">
						<li><a>전체</a></li>
						<li><a>주요뉴스</a></li>
						<li><a>인터뷰</a></li>
						<li><a>게임리뷰</a></li>
						<li><a>프리뷰</a></li>
					</ul>
				</div>
				<div class="subMenuContents">
					<div>ㅇㄴㅁㄻ???</div>
				</div>
			</div>
		</li>
		<li class="md1 m2">
			<a <c:choose><c:when test="${param.activeMainMenu eq 2}">class="selectedMainMenu md1Text"</c:when><c:otherwise>class="md1Text"</c:otherwise></c:choose>>VR Machine</a>
 			<div class="subMenu s2">
				<div class="subMenuListWrap">
					<ul class="subMenuList">
						<li><a>VR이란?</a></li>
						<li><a href="/vrMachine/typicalVrMachine">대표 VR기기</a></li>
						<li><a>VR HDM 상세제원</a></li>
						<li><a>VR HDM 기기별 비교</a></li>
						<li><a>VR HDM 리뷰</a></li>
						<li><a>VR 주변기기</a></li>
						<li><a>VR 기기 사용자 후기</a></li>
					</ul>
				</div>
			</div>
		</li>
		<li class="md1">
		<a <c:choose><c:when test="${param.activeMainMenu eq 3 }">class="selectedMainMenu md1Text"</c:when><c:otherwise>class="md1Text"</c:otherwise></c:choose>>VR Game</a>
		 	<div class="subMenu s2">
				<div class="subMenuListWrap">
					<ul class="subMenuList">
						<li><a href="/vrGame/vrGameList">게임목록</a></li>
						<li><a>랭킹 순위</a></li>
						<li><a>추천 게임</a></li>
						<li><a>신작</a></li>
						<li><a>리뷰</a></li>
					</ul>
				</div>
			</div>
		</li>
		<li class="md1"><a class="md1Text">VR Movie</a></li>
		<li class="md1"><a class="md1Text">VR Shopping</a></li>
		<li class="md1"><a class="md1Text">VR Community</a></li>
		<li class="md1"><a class="md1Text">VR Room</a></li>
	</ul>
</div>
<script>
$(document).ready(function(){
 	$('.md1').on("mouseover", function(){
		var menuText = $(this).find('.md1Text'); 
		menuText.addClass("selectedMainMenu");
		var subMenu = $(this).find('.subMenu');
		if (subMenu.css("display") == "none"){
			$('.subMenuList:first-child > li:first > a').removeClass("subMenuSelected");
			$('.subMenuList:first-child > li:first > a').addClass("subMenuSelected");
			subMenu.slideDown(200);
		}
	}).on("mouseleave", function(){
		var subMenu = $(this).find('.subMenu');
		var menuText = $(this).find('.md1Text');
		menuText.removeClass("selectedMainMenu");

		if (subMenu.css("display") == "block"){
			$('.subMenuList:first-child li:first').removeClass("subMenuSelected");
			subMenu.slideUp(200);
		}
	});
});

</script>
