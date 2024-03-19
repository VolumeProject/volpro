<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>

<link href="/resources/css/upper/upperRegist.css" rel='stylesheet'>

</head>

<style>

/* body, div {
    margin: 0;
}

.container {
    background-color: #f3f5f7;
    padding: 2rem;
    border-collapse: collapse;
}
.container:nth-child(n+2){
    margin-top: 1rem;
} */

.song-box {
    box-sizing: border-box;
    cursor: move;
}
.song-box:last-child {
    border-bottom: 1px solid #c5cdd7;
}

.song-box.dragging {
    opacity: .5;
    border: 2px dashed red;
}

.ico-drag {
    background-size: cover;
}

</style>

<body>

	<div class="col-lg-6 container">
		<h2>곡 리스트</h2>
		<div class="song-box">
			<div class="check-song">
				<span class="glyphicon glyphicon-align-justify" class="ico-drag" id="check-uppersong"></span>
			</div>
			<div class="album-img">
				<a href="#"><img src="/resources/images/logo3.png" alt="..." class="img-thumbnail"></a>
			</div>
			<div class="artist-album">
				<a href="#"><span>강기훈</span></a>
				<br/>
				<h3><a href="#">앨범이름 / 곡 이름</a></h3>
				<br/>
				<p>발매일자</p>
			</div>
			<div class="box-menu">
				<button type="button" class="btn-delete">삭제</button>
			</div>
		</div>
		<div class="song-box">
			<div class="check-song">
				<span class="glyphicon glyphicon-align-justify" class="ico-drag" id="check-uppersong"></span>
			</div>
			<div class="album-img">
				<a href="#"><img src="/resources/images/logo3.png" alt="..." class="img-thumbnail"></a>
			</div>
			<div class="artist-album">
				<a href="#"><span>홍혜림</span></a>
				<br/>
				<h3><a href="#">앨범이름 / 곡 이름</a></h3>
				<br/>
				<p>발매일자</p>
			</div>
			<div class="box-menu">
				<button type="button" class="btn-delete">삭제</button>
			</div>
		</div>
		<div class="song-box">
			<div class="check-song">
				<span class="glyphicon glyphicon-align-justify" class="ico-drag" id="check-uppersong"></span>
			</div>
			<div class="album-img">
				<a href="#"><img src="/resources/images/logo3.png" alt="..." class="img-thumbnail"></a>
			</div>
			<div class="artist-album">
				<a href="#"><span>박장수</span></a>
				<br/>
				<h3><a href="#">앨범이름 / 곡 이름</a></h3>
				<br/>
				<p>발매일자</p>
			</div>
			<div class="box-menu">
				<button type="button" class="btn-delete">삭제</button>
			</div>
		</div>
	</div>

<script>
   /**
    * [x] 엘리먼트의 .draggable, .container의 배열로 선택자를 지정합니다.
    * [x] draggables를 전체를 루프하면서 dragstart, dragend를 이벤트를 발생시킵니다.
    * [x] dragstart, dragend 이벤트를 발생할때 .dragging라는 클래스를 토글시킨다.
    * [x] dragover 이벤트가 발생하는 동안 마우스 드래그하고 마지막 위치해놓은 Element를 리턴하는 함수를 만듭니다.
    */

   (() => {
      const $ = (select) => document.querySelectorAll(select);
      const draggables = $('.song-box');
      const containers = $('.container');

      draggables.forEach(el => {
         el.addEventListener('dragstart', () => {
            el.classList.add('dragging');
         });

         el.addEventListener('dragend', () => {
            el.classList.remove('dragging')
         });
      });

      function getDragAfterElement(container, y) {
         const draggableElements = [...container.querySelectorAll('.song-box:not(.dragging)')]

         return draggableElements.reduce((closest, child) => {
            const box = child.getBoundingClientRect() //해당 엘리먼트에 top값, height값 담겨져 있는 메소드를 호출해 box변수에 할당
            const offset = y - box.top - box.height / 2 //수직 좌표 - top값 - height값 / 2의 연산을 통해서 offset변수에 할당
            if (offset < 0 && offset > closest.offset) { // (예외 처리) 0 이하 와, 음의 무한대 사이에 조건
               return { offset: offset, element: child } // Element를 리턴
            } else {
               return closest
            }
         }, { offset: Number.NEGATIVE_INFINITY }).element
      };

      containers.forEach(container => {
         container.addEventListener('dragover', e => {
            e.preventDefault()
            const afterElement = getDragAfterElement(container, e.clientY);
            const draggable = document.querySelector('.dragging')
            // container.appendChild(draggable)
            container.insertBefore(draggable, afterElement)
         })
      });
   })();
</script>

</body>
</html>
