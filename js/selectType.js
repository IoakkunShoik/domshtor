function selectType(type){
    for(var i in document.querySelectorAll('.otherimg')){
        try{document.querySelectorAll('.otherimg')[i].style.display='none';}catch(e){};
    }
    document.querySelector('.'+type).style.display='block';
    document.querySelector('.bigpict').src = document.querySelector('.'+type+' img').src;
    document.select = type;
}
function applyImage(link){
    document.querySelector('.bigpict').src = link;
}