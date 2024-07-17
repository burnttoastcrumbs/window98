var arr = [];
            let i=0;
            document.getElementById("buttonnnn").onclick = function(){
                var inputValue = document.getElementById("textValue").value;
                arr.push(inputValue);
                console.log(arr);
    
                var li = document.createElement('li');
    
                li.innerHTML = arr[i];
                
                //삭제 버튼 달아주기
                var dbutton = document.createElement('button');
                var deleteNode = document.createTextNode('삭제');
                dbutton.classList.add('deleteButton');
                dbutton.appendChild(deleteNode);
                li.appendChild(dbutton);
    
                ulList.appendChild(li);
    
                i++;
            }
            document.querySelector("#ulList").onclick = function(e) {
                var t = e.target;
                if (t.classList.contains('deleteButton')) {
                    //delete버튼만 따로 모아서 순번을 잰다.
                    var deleteButtons = document.querySelectorAll("#ulList .deleteButton");
                    var indexDel = Array.from(deleteButtons).indexOf(t);
    
                    let cut = arr.splice(indexDel, 1);
    
                    t.parentNode.remove(); 
                    console.log(arr);
                }
            };

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


//     function cancel() {
//     window.location.href = 'board';
// }
//     document.getElementById('boardForm').addEventListener('keypress', function (e) {
//     if (e.key === 'Enter') {
//     e.preventDefault();
// }
// });