<div class="left">
    <div class="mainimg">
        <img class='bigpict' src="{{MAINIMG}}" alt="">
        <div class="othertypes">
            {{TYPES}}
        </div>
    </div>

        {{IMGS}}
    <br><br><br>
    <div class="commerce">
        <div class="price">Выберите размеры <br> и комплектацию</div>
        <div class="add" onclick='tocart("{{INFO}}")'>В корзину</div>
    </div>
</div>
<div class="right">
    <div class="added">Товар добавлен в корзину</div>
    <div class="name">{{NAME}}</div>
    <div class="category">{{CATEG}}</div>
   
    <div class="discription"> <hr>{{DISCR}}</div>
    <hr>
    <div class="comp">Состав: {{COMP}}</div>
    <div class="care">Уход: {{CARE}}</div>
    <div class="select">
        <div class="size">Размеры: <br>
            <br>
            <div class="sel">
                {{SIZE}}
            </div>
        </div>
        <div class="compl">Комплектация: <br>
            <br>
            <div class="sel">
                {{COMPL}}
            </div>
        </div>
    </div>

</div>
<script>
    function hideAll(id){
        for(i in document.querySelectorAll(".compl label")){
            try {
                document.querySelectorAll(".compl label")[i].style.display = "none";
                document.querySelectorAll(".compl input")[i].checked = false;
            }catch(e){}
        }
        for(i in document.querySelectorAll(id)){
            try {
                document.querySelectorAll(id)[i].style.display = "block";
            }catch(e){}
        }
    }
    function setSizeCompls(size, compl, price){
        document.size=size;
        document.compl=compl;
        document.querySelector('.price').innerText = "Цена:     " + price+" ₽";
        console.log(document.size + " "+ document.compl);
    }
</script>