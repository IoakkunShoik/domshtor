<?php

if(!$_GET['page'] || $_GET['page']=='main'){
    $render = file_get_contents('view/main.php');

    echo $render;
}

if($_GET['page']=='shop'){
    $category = 'Шторы';
    require_once('controller/shop.php');
    $render = file_get_contents('view/shop.php');
    $render = str_replace('{{CATEG}}', "Шторы",$render);
    $render = str_replace('{{ARTIC}}', showShop("Шторы"),$render);
    echo $render;
}

if($_GET['page']=='article'){
    require_once('controller/article.php');
    $render  = file_get_contents('view/article.php');
    $replace = showArticle($_GET['id']);

    $types = '';
    $i = 1;
    while(json_decode($replace['image'])->{"t".$i}){
        $types .= '<img src="'.json_decode($replace['image'])->{"t".$i}[0].'" onclick="selectType(\'t'.$i.'\')">';
        $i++;
    }
    $imgs  = '';
    $i = 1;
    while(json_decode($replace['image'])->{"t".$i}){
        $imgs .= '<div class="otherimg t'.$i.'">';

        foreach(json_decode($replace['image'])->{"t".$i} as $tmp){
            $imgs .= "<img src='$tmp' onclick='applyImage(\"$tmp\")'>";
        }

        $imgs .= '</div>';
        $i++;
    }

    $size = "";
    $compl="";
    $locIdS = 0;

    $locIdC = 0;
    if($replace)
    foreach(json_decode($replace['price']) as $tmp){
        $locIdC2 = 0;
        $size .= '<input id="size'.$locIdS.'" type="radio" name="size" required><label onclick="hideAll(\'.compl'.$locIdS.'\')" class="sizeSelect" for="size'.$locIdS.'">'.$tmp->{'size'}.'</label>';
        foreach($tmp->{'compls'} as $tmp2){
            $compl .= '<input id="compl' . $locIdC . '" type="radio" name="compl" required><label onclick="setSizeCompls('.$locIdS.', '.$locIdC2.', \''.json_decode($replace['price'])[$locIdS]->{'prices'}[$locIdC2].'\')" class="sizeSelect compl'.$locIdS.'" for="compl' . $locIdC . '">' . $tmp2 . '</label>';
            $locIdC++;
            $locIdC2++;
        }

        $locIdS++;
    }

    $render = str_replace('{{SIZE}}', $size,  $render);
    $render = str_replace('{{COMPL}}', $compl,  $render);
    $render = str_replace('{{NAME}}',  $replace['name'],   $render);
    $render = str_replace('{{CATEG}}', $replace['categ'],  $render);
    $render = str_replace('{{DISCR}}', $replace['discr'],  $render);
    $render = str_replace('{{COMP}}',  $replace['compos'], $render);
    $render = str_replace('{{CARE}}',  $replace['care'],   $render);
    $render = str_replace('{{TYPES}}', $types,             $render);
    $render = str_replace('{{IMGS}}',  $imgs,              $render);
    $render = str_replace('{{INFO}}',  $replace['id'],     $render);
    $render = str_replace('{{INFO}}',  $replace['id'],     $render);
    $render = str_replace('{{MAINIMG}}', json_decode($replace['image'])->{'t1'}[0], $render);

    if(!$replace)
        echo "Товар не найден";
    if($replace)
        echo $render;
}


if($_GET['page']=='cart'){
    require_once('controller/cart.php');
    if(!$_SESSION['order'] || $_SESSION['artcount']<=0){ $render = "Ваша корзина пуста";}else {
        $render = file_get_contents('view/cart.php');
    }
    $replace = '';
    foreach($_SESSION['order'] as $tmp){
        $replace .= '<tr><td>'.$tmp. '</td></tr>';
        
    }


    //echo $replace;
    $render = str_replace('{{ORDER}}', showCart(), $render);
    $render = str_replace('{{SESS}}', json_encode($_SESSION['order']), $render);
    echo $render;
}

if($_GET['page']=='neworder'){
    if($_SESSION['artcount']){
        $_SESSION['artcount']++;
    }else{
        $_SESSION['artcount'] = 1;
    }
    $_SESSION['order'][] = '['.$_POST['id'].','.$_POST['type'].','.$_POST['size'].','.$_POST['compl'].']';
    if($_GET['erase']=='y'){
        unset($_SESSION['order']);
        unset($_SESSION['artcount']);
    }
    echo '';
}

if($_GET['page']=='delorder'){
    unset($_SESSION["order"][array_search($_POST['delid'], $_SESSION["order"])]);
    $_SESSION['artcount']--;
}

if($_GET['page']=='payment'){
    require_once('controller/cart.php');
    takeOrder();
}