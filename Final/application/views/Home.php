<?php require 'Header.php' ?>

    <div class="food-container">
        <h1>Order Your Favourite Foods!</h1>

        <form method="post">
            <h2 class="category-title" id="category-title">
                Category:
                <label onclick="fetch('Burger')" id="Burger">Burger</label>
                <label onclick="fetch('Pizza')" id="Pizza">Pizza</label>
                <label onclick="fetch('Drinks')" id="Drinks">Drinks</label>
                <label onclick="fetch('Coffee')" id="Coffee">Coffee</label>
                <label onclick="fetch('Desert')" id="Desert">Desert</label>
                <label onclick="fetch('Sides')" id="Sides">Sides</label>
            </h2>
        </form>
        <table id="foods-table"></table>
    </div>

    <script src="../../public/js/Home.js"></script>

<?php include 'Footer.php' ?>