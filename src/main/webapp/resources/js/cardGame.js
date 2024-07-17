let cardArr = [];
        window.onload = function(){
            //1. 배열 초기화
            //1.1 cardArr 안에 0~51의 숫자 랜덤으로 넣어주기
            for(let i=0;i<52;i++){
                cardArr[i] = i;
                cardArr.sort(function(a,b){return Math.random()-0.5});
            }

            // 2. 카드 보여주기
            //2.1 부여된 랜덤숫자의 카드 앞, 뒷면 한세트로 html상에 52쌍 띄우기
            let tmp = '';
            for(let i=0;i<cardArr.length;i++){
                tmp += '<img src="img/' + cardArr[i] + '.png" alt="' + cardArr[i] + '" class="card_front"><img src="img/card_back.png" alt="" class="card_back">';
            }
            board.innerHTML = tmp;

            //2.2 카드 앞면은 화면에서 안보이게 display:none처리
            let card_front = document.getElementsByClassName("card_front");

            for(let i = 0; i<card_front.length; i++){
                card_front[i].style.display = "none";
            }

            let chosenCardNum = [];
            let chosenCard = [];
            // 3. 카드에 이벤트 등록(클릭했을때 작동하도록)
            // 3.1 뒷면 뒤집기(카드 숫자, 색상 체크)
            let cardBack = document.getElementsByClassName("card_back");
            for (let i = 0; i < cardBack.length; i++) {
                cardBack[i].addEventListener("click", cardBackClick);
            }
            function cardBackClick() {
                this.style.display = "none";
                this.previousSibling.style.display = "block";
                console.log(this.previousSibling.alt);
                
                chosenCardNum.push(parseInt(this.previousSibling.alt));
                chosenCard.push(this.previousSibling);
                //2장 뽑았으면
                if(chosenCardNum.length==2){
                    chosenCardNum.sort(function(a,b){return a-b});
                    let a = chosenCardNum[0];
                    let b = chosenCardNum[1];
                    //서로 같은 타입인가?
                    if(b-a==26){
                        // alert("you found me");
                        //찾은 카드2장 반짝이 효과
                        chosenCard[0].classList.add("found-card");
                        chosenCard[1].classList.add("found-card");

                        //찾은 카드는 더이상 클릭이벤트 안 먹힘
                        chosenCard[0].style.pointerEvents = "none";
                        chosenCard[1].style.pointerEvents = "none";
                    } 
                    //서로 다른 타입인가?
                    else {
                        let tmp = chosenCard.slice();
                        setTimeout(function() {
                            tmp[0].style.display = "none";
                            tmp[0].nextSibling.style.display = "block";
                            tmp[1].style.display = "none";
                            tmp[1].nextSibling.style.display = "block";
                        }, 1100);
                    }
                    //같던 다르던 2장 뽑는 배열은 초기화. 새로 뽑기.
                    chosenCardNum = [];
                    chosenCard = [];
                }
            }

            //3.2 앞면 뒤집기
            let cardFront = document.getElementsByClassName("card_front");
            for (let i = 0; i < card_front.length; i++) {
                card_front[i].addEventListener("click", cardFrontClick);
            }
            function cardFrontClick() {
                this.style.display = "none";
                this.nextSibling.style.display = "block";
                console.log(this);
            }
        }

        let myComputer = document.querySelector(".windowComcom");
            let thiss = document.querySelector(".this");

            document.querySelector(".comcom").addEventListener("click", function() {
                myComputer.classList.add("chosen");
                thiss.classList.remove("chosen");
                document.querySelector(".modal_box").style.display = "block";
            });

            document.querySelector(".windowComcom").addEventListener("click", function() {
                myComputer.classList.add("chosen");
                thiss.classList.remove("chosen");
                document.querySelector(".modal_box").style.display = "block";
            });

            document.querySelector(".cancel_btn").addEventListener("click", function() {
                myComputer.classList.remove("chosen");
                thiss.classList.add("chosen");
                document.querySelector(".modal_box").style.display = "none";
            });