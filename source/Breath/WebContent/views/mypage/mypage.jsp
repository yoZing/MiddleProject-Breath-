<%@page import="member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberVO vo = (MemberVO)session.getAttribute("memVO");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../../js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="../../css/main.css" />

<script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js" integrity="sha512-WFN04846sdKMIP5LKNphMaWzU7YpMyCU245etK3g/2ARYbPK9Ub18eG+ljU96qKRCWh+quCY7yefSmlkQw1ANQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.8.0/gsap.min.js" integrity="sha512-eP6ippJojIKXKO8EPLtsUMS+/sAGHGo1UN/38swqZa1ypfcD4I0V/ac5G3VzaHfDaklFmQLEs51lhkkVaqg60Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> 
<script defer src="../../js/main.js"></script>
<link href="../../css/mypage/mypage.css" rel="stylesheet" type="text/css" />
<style>
#hello{
	display : inline-block;
}
#myMenu{
	display: inline-block;
}
.wrap{
	padding-top: 100px;
}
</style>
</head>
<body>
 <header>
    <div class="inner">
      <a href="../../index.html" class="logo">
        BES
      </a>

      <div class="sub-menu">
        <ul class="menu">
          <li>
            <a href="../views/signin/signin.html">Sign In</a>
          </li>
          <li>
            <a href="javascript:void(0)">My Page</a>
          </li>
          <li>
            <a href="javascript:void(0)">Customer Service</a>
          </li>
        </ul>
        <div class="search">
          <input type="text" />
          <div class="material-icons">search</div>
        </div>
      </div>

      <ul class="main-menu">
        <li class="item">
          <div class="item__name">Breading</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>Breading</h4>
                  <ul>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                  </ul>
                </li>
                <li>
                  <h4>Breading</h4>
                  <ul>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                  </ul>
                </li>
                <li>
                  <h4>Breading</h4>
                  <ul>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                  </ul>
                </li>
                <li>
                  <h4>Breading</h4>
                  <ul>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                  </ul>
                </li>
              </ul>
            </div>
            
          </div>
        </li>
        <li class="item">
          <div class="item__name">Breading</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>Breading</h4>
                  <ul>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                  </ul>
                </li>
                <li>
                  <h4>Breading</h4>
                  <ul>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                  </ul>
                </li>
                <li>
                  <h4>Breading</h4>
                  <ul>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                  </ul>
                </li>
                <li>
                  <h4>Breading</h4>
                  <ul>
                    <li>????????????</li>
                    <li>????????????</li>
                  </ul>
                </li>
                <li>
                  <h4>Breading</h4>
                  <ul>
                    <li>????????????</li>
                    <li>????????????</li>
                  </ul>
                </li>
              </ul>
            </div>
        
          </div>
        </li>
        <li class="item">
          <div class="item__name">Breading</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>Breading</h4>
                  <ul>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                  </ul>
                </li>
                <li>
                  <h4>Breading</h4>
                  <ul>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                  </ul>
                </li>
              </ul>
            </div>
            
          </div>
        </li>
        <li class="item">
          <div class="item__name">Breading</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>Breading</h4>
                  <ul>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                  </ul>
                </li>
                <li>
                  <h4>Breading</h4>
                  <ul>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                  </ul>
                </li>
                <li>
                  <h4>Breading</h4>
                  <ul>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                  </ul>
                </li>
                <li>
                  <h4>Breading</h4>
                  <ul>
                    <li>????????????</li>
                    <li>????????????</li>
                    <li>????????????</li>
                  </ul>
                </li>
              </ul>
            </div>
            
          </div>
        </li>
        
      </ul>
    </div>

    <div class="badges">
      <div class="badge">
        ??????
        <!-- <img src="./images/badge1.jpg" alt="Badge" /> -->
      </div> 
      <!-- <div class="badge">
        <img src="./images/badge2.jpg" alt="Badge" />
      </div> -->
    </div>
  </header>
<div class="wrap">
  <div class="greenContainer">
    <div>
<!--       <div class="grade">????????????</div> -->
      <div class="name"><%=vo.getMemNm() %></div>
    </div>    
    <div class="modify">i</div>    
  </div>
  
  <div class="shippingStatusContainer">
    <div class="title">
    ??????List
    </div>
    <div class="status">
      
      <div class="item">
        <div>
          <div class="green number">6</div>
          <div class="text">?????? List</div>
        </div>
        <div class="icon"> > </div>
      </div>     
    </div>
  </div>  
  <div class="listContainer" id="myMenu">
    <a href="/Breath/updateMypage" class="item" id="myInformation">
        <div class="icon">ii</div>
        <div class="text">?????????<span class="circle"></span></div>
        <div class="right"> > </div>
    </a>
    <a href="/Breath/updatePass" class="item">
        <div class="icon">ii</div>
        <div class="text">??????????????????</div>
        <div class="right"> > </div>
    </a>
    <a href="/Breath/getShipList" class="item">
        <div class="icon">ii</div>
        <div class="text">????????? ????????????</div>
        <div class="right"> > </div>
    </a>
    <a href="#" class="item">
        <div class="icon">ii</div>
        <div class="text">??????????????????</div>
        <div class="right"> > </div>
    </a>
        <a href="/Breath/delete.Member" class="item">
        <div class="icon">ii</div>
        <div class="text">??????????????????</div>
        <div class="right"> > </div>
    </a>
  </div>
</div>
<script>

</script>
</body>
</html>