<?php
function showShop($category){
    require('db.php');

    $quer = $pdo->query("SELECT * FROM catalogue WHERE `categ` LIKE '$category'");
    $output = '';
    while($row = $quer->fetch()){
        $display_image = json_decode($row['image'])->{'t1'}[0];
        $display_name  = $row['name'];
        $display_price = json_decode($row['price'])[0]->{'prices'}[0];
        $display_id    = $row['id'];
        $output .= "
            <a href='?page=article&id=$display_id'>
                <div class='article'>
                    <img class='image' src='$display_image'></img>
                    <div class='artfooter'>
                        <div class='name'>$display_name</div>
                        <div class='price'>$display_price</div>
                    </div>
                </div>
            </a>";
        
    }
    return $output;
}


