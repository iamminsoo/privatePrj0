<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
   h2 {font-size: 50px;font-weight: 600;}
   .slider{
     width:100%;
     position: relative;
     margin-top: 50px;
   }
   .slide{
     width: 100%;
     height: 500px;
     display: flex;
     justify-content: center;
     align-items: center;
     color:white;
     position: absolute;
     top: 0 ;
     opacity: 0;
     transition: all 1.0s ease-in-out ;
   }
   .slide:nth-child(1){
     background-size : 100%;
     background-image: url("1.jpg");
   }
   .slide:nth-child(2){
     background-size : 100%;
     background-image: url("2.jpg");
   }
   .slide:nth-child(3){
     background-size : 100%;
     background-image: url("3.jpg");
   }
    .slide:nth-child(4){
     background-size : 100%;
     background-image: url("1.jpg"); 
   }
   .showing {
     opacity: 1;
     z-index: 1 ;
   }
   .btns {
     height: 500px;
     width: 100px;
     background: none;
     border: none;
     font-size: 28px;
     font-weight: 600;
     color :white;
     z-index: 9999;
     cursor:pointer;
   }
   .left {position: absolute; top:0;left:0;}
   .right{position: absolute; top:0; right:0;}
</style>
</head>
<body>
    <div class="slider">
      <div class="slide showing">
        <h2>
           
        </h2>
      </div>
      <div class="slide">
           
      </div>
      <div class="slide">
           
      </div>
      <div class="slide">
      
      </div>
      <button type="button" class="left btns" onclick="left_move();"></button>
      <button type="button" class="right btns" onclick="right_move();"></button>
    </div>
<script type="text/javascript">
   const showing_class = "showing";
   const firstslide = document.querySelector(".slide:nth-child(1)");
   const lastslide = document.querySelector(".slide:nth-child(4)");
   const left_btn = document.querySelector(".left");
   function right_move(){
     const currentslide = document.querySelector(".showing");
     if (currentslide) {
     const nextslide = currentslide.nextElementSibling;
       currentslide.classList.remove(showing_class);
       if(nextslide != left_btn){
         nextslide.classList.add(showing_class);
       }
       else{
         firstslide.classList.add(showing_class);
       }
     }
   }
   function left_move(){
     const currentslide = document.querySelector(".showing");
     if (currentslide){
     const prevslide = currentslide.previousElementSibling;
       currentslide.classList.remove(showing_class);
       if(prevslide){
         prevslide.classList.add(showing_class);
       }
       else{
         lastslide.classList.add(showing_class);
       }
     }
   }
   function right_move(){
        const currentslide = document.querySelector(".showing");
        // .showing 클래스를 가지고있는 요소를 currentslide 라는 변수에 담는다
        if (currentslide) {
        // showing 클래스 요소가 있을시 조건문 실행
        const nextslide = currentslide.nextElementSibling;
        // 현재 showing 클래스의 다음 요소를 변수에 담는다 
      //previousElementSibling 는 현재 요소의 다음요소에 대해 접근할수있게 해줍니다
          currentslide.classList.remove(showing_class);
        // 현재 showing 클래스가 있는 요소에 showing 클래스를 없앤다
          if(nextslide != left_btn){ //nextslide가 left_btn과 같지 않을때 조건문 실행
            nextslide.classList.add(showing_class);
        // 다음 접근 요소에 showing 클래스 부여
          }
          else{
            firstslide.classList.add(showing_class);
        // 첫번째 슬라이드에 showing 클래스 부여 (첫번째 슬라이드로 이동하게됨)
          }
        }
      }
</script>


</body>
</html>