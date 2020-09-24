function tocart(info, size, compl){
   if(!document.select){
       document.select = 't1';
   }
   if(size==undefined && compl==undefined){
       if(document.size==undefined && document.compl==undefined) {
           alert('Пожалуйста, выберите размеры и комплектацию.');
           return;
       }else{
           size=document.size;
           compl=document.compl;
       }

   }
   document.querySelector('.cirCounter').style.opacity = '1';
   document.querySelector('.cirCounter').innerText++;
    $.ajax({
        method: "POST",
        url: "?page=neworder",
        data: {id : '"'+info+'"', type : '"'+document.select+'"', size : '"'+size+'"', compl : '"'+compl+'"'}
    }).done(function(msg){
        try{
        document.querySelector('.added').style.opacity = "1";
        setTimeout(function(){
         document.querySelector('.added').style.opacity = "0";
        }, 2000);}catch(e){}
    })
}

function returncart(type, info, num, blockname){
    document.select = type;
    document.querySelector("#d"+blockname).style.opacity="1";
    document.querySelector("#d"+blockname+" .del").innerText="Убрать";


    document.querySelector("#d"+blockname+" .del").onclick=undefined;

    document.querySelector("#n"+blockname).innerHTML="<div class='del' onclick='delCart("+num+", "+info+", \""+type+"\", \""+blockname+"\")'>Убрать</div>";
    let sico = JSON.parse(num);
    console.log(sico);
    tocart(info, sico[2], sico[3]);
}

function delCart(num, data, type, blockname){
    if(document.delay==undefined){
    console.log("num-("+num+") data("+data+") type("+type+") blockname-"+blockname);
num = JSON.stringify(num);
    $.ajax({
        method: "POST",
        url: "?page=delorder",
        data: {delid: num}
    }).done(function(){
        document.querySelector('.cirCounter').innerText--;
        document.querySelector("#d"+blockname).style.opacity="0.5";
        document.querySelector("#d"+blockname+" .del").innerText="Вернуть";
        document.querySelector("#d"+blockname+" .del").onclick=function(){
            returncart(type, data, num, blockname);
        }


    });
}
}