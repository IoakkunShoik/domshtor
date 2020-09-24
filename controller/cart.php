<?php
function showCart(){

    require('db.php');
    $ids = '-1';
    foreach($_SESSION['order'] as $id){
        $ids    .= ', '.json_decode($id)[0];
    }
    
    $query = $pdo->query("SELECT * FROM catalogue WHERE id IN ($ids)");
    $response = '';
    $rows = [];

    while($row = $query->fetch()){
        $rows[] = $row;
    }
    $i = 0;
    foreach($_SESSION['order'] as $a){
        $id = json_decode($a)[0];
        $type = json_decode($a)[1];
        $size = json_decode($a)[2];
        $compl=json_decode($a)[3];
        
        foreach($rows as $row){
            
            if($row['id']==$id){
                $response .= "<tr id='d$i'><td>".($i+1)."</td><td>";
                $response .= '<img src="'.json_decode($row['image'])->{$type}[0].'">';
                $response .= "<td>".$row['name'].'</td>';
                $response .= "<td>".json_decode($row['price'])[$size]->{'size'}.'</td><td>'.json_decode($row['price'])[$size]->{'compls'}[$compl].'</td>';
                $response .= '<td>'.json_decode($row['price'])[$size]->{'prices'}[$compl].'</td>';
                $response .= "<td id='n$i'><div class='del' onclick='delCart($a, $id, \"$type\", \"$i\")'>Убрать</div></td></tr>";

            }
        }
        $i++;
    }

    return $response;
}


function takeOrder(){
    require('db.php');
    if(!$_SESSION['order']  || $_SESSION['artcount']<=0) return "Ваша корзина пуста";
    $pdo->query("INSERT INTO `allorders` (`id`, `init`, `mail`, `phone`, `order`, `payment`) VALUES (NULL, '".$_POST['init']."', '".$_POST['mail']."', '".$_POST['phone']."', '".json_encode($_SESSION['order'])."', '".$_POST['payment']."')");
    unset($_SESSION['order']);
    unset($_SESSION['artcount']);
    echo 'заказ обрабатывается... <meta http-equiv="refresh" content="1;URL=?page=shop" />';
}