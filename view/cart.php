<div class="header">
    Ваш заказ:
</div>
<div class="order">
    <table>
        {{ORDER}}
    </table>

    <form action="?page=payment" method="post">
        <p>ФИО <input type="text" name="init" placeholder="ФИО" required></p>
        <p>E-mail <input type="text" name="mail" placeholder="e-mail" required></p>
        <p>Мобильный телефон <input type="text" name="phone" placeholder="телефон" required></p>
        <p>
            <input type="radio" name="payment" value="0" id="pmt1" checked><label for="pmt1">Наличными</label>
            <input type="radio" name="payment" value="1" id="pmt2"><label for="pmt2">Онлайн</label>
        </p>
        <p><input type="submit" value="Оформить"></p>
    </form>


</div>