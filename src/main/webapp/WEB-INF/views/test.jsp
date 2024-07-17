<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-1.11.3.js"></script>
</head>
<body>
<h2>comment Test</h2>
comment : <input type="text" name="comment"><br>
<button id="sendBtn" type="button">SEND</button>
<button id="modBtn" type="button">수정</button>
<div id="commentList"></div>

<script>
    let bno = 2104;

    let showList = function(bno){
        $.ajax({
            type:'GET',       // 요청 메서드
            url: '/comments?bno='+bno,  // 요청 URI
            // headers : { "content-type": "application/json"}, // 요청 헤더
            // dataType : 'json', // 전송받을 데이터의 타입(타입이 json이면 생략 가능. json이 디폴트라...)
            // data : JSON.stringify(person),  // 서버로 전송할 데이터. stringify()로 직렬화 필요. -> json으로 지정해서 PARSE필요 없음
            success : function(result){
                // person2 = JSON.parse(result);    // 서버로부터 응답이 도착하면 호출될 함수 -> json으로 지정해서 PARSE필요 없음
                $("#commentList").html(toHTML(result)); // result를 #commentList에 담는다.
            },
            error   : function(){ alert("error") } // 에러가 발생했을 때, 호출될 함수
        });
    }
    $(document).ready(function(){
        showList(bno);

        $("#modBtn").click(function(){
            let cno = $(this).attr("data-cno");
            let comment = $("input[name=comment]").val();

            if(comment.trim() ==''){
                alert("댓글을 입력해주세요.");
                $("input[name=comment]").focus();
                return;
            }

            $.ajax({
                type:'PATCH',       // 요청 메서드
                url: '/comments/'+cno,  // 요청 URI
                headers : { "content-type": "application/json"}, // 요청 헤더
                data : JSON.stringify({cno:cno, comment:comment}),  // 서버로 전송할 데이터. stringify()로 직렬화 필요. 이 부분을 컨트롤러의 @RequestBody가 받는다.
                success : function(result){
                    alert(result);
                    showList(bno);
                },
                error   : function(){ alert("error") } // 에러가 발생했을 때, 호출될 함수
            });
        });

        $("#sendBtn").click(function(){
            let comment = $("input[name=comment]").val();

            if(comment.trim() ==''){
                alert("댓글을 입력해주세요.");
                $("input[name=comment]").focus();
                return;
            }

            $.ajax({
                type:'POST',       // 요청 메서드
                url: '/comments?bno='+bno,  // 요청 URI
                headers : { "content-type": "application/json"}, // 요청 헤더
                data : JSON.stringify({bno:bno, comment:comment}),  // 서버로 전송할 데이터. stringify()로 직렬화 필요. 이 부분을 컨트롤러의 @RequestBody가 받는다.
                success : function(result){
                    alert(result);
                    showList(bno);
                },
                error   : function(){ alert("error") } // 에러가 발생했을 때, 호출될 함수
            });
        });

        $("#commentList").on("click",".modBtn",function() {  // -> 각 댓글의 삭제 버튼을 누르면
            let cno = $(this).parent().attr("data-cno");
            let comment = $("span.comment", $(this).parent()).text();

            //1. comment의 내용을 input에 뿌려주기
            $("input[name=comment]").val(comment);
            //2. cno 전달하기
            $("#modBtn").attr("data-cno", cno);
            //이렇게 두가지 역할을 함.
        });

        // $(".delBtn").click(function(){   -> send 버튼을 클릭해야지만 생기는 버튼이라 존재하지 않는상태에서 준 이벤트는 걸리지 않음
        $("#commentList").on("click",".delBtn",function(){  // -> 이미 존재하는 요소에 이벤트를 걸어야 함. : 동적으로 생성되는 요소에 이벤트 거는 법
            let cno = $(this).parent().attr("data-cno");
            let bno = $(this).parent().attr("data-bno");
            alert(123);
            $.ajax({
                type:'DELETE',       // 요청 메서드
                url: '/comments/'+cno+'?bno='+bno,  // 요청 URI
                success : function(result){
                    alert(result);
                    showList(bno);
                },
                error   : function(){ alert("error") } // 에러가 발생했을 때, 호출될 함수
            });
        });
    });

    let toHTML = function(comments){
        let tmp = "<ul>";

        comments.forEach(function(comment){
            tmp +='<li data-cno=' + comment.cno
            tmp +=' data-pcno=' + comment.pcno
            tmp +=' data-bno=' + comment.bno + '>'
            tmp +=' commenter=<span class="commenter">' + comment.commenter + '</span>'
            tmp +=' comment=<span class="comment">' + comment.comment + '</span>'
            tmp +=' up_date=' + comment.up_date
            tmp +=' <button class="delBtn">삭제</button>'
            tmp +=' <button class="modBtn">수정</button>'
            tmp +='</li>'
        })
        return tmp + "</ul>";
    }
</script>
</body>
</html>