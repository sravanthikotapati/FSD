<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>bouquet</title>
  <link rel="icon" type="image/x-icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8W9ok3roBDzpYCGuq8msXgLd0V5Cjg1RPfdH66AbAxrmIBO9ARqo4ZosA4zarrjtenWA&usqp=CAU">
<style>
* {
  box-sizing: border-box;
}
.column {
  float: left;
}
.column1 {
  float: left ;
  width: 25%;
  padding: 0px 10px;
  height: 20%;
}
.left {
  width: 35%;
  overflow: hidden;
}
.right {
  width: 65%;
  overflow: hidden;
}
body {
  font-family: cursive,bold;
}

.row {margin: 0 -5px;}

.row:after {
  content: "";
  display: table;
  clear: both;
}

@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 1%;
  text-align: center;
  border-radius: 5%;
  background-color: #f1f1f1;
  overflow:hidden;
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
  }

  .imgg {
    transform: scaleY(-1);
  }
     
  </style>
<script>
    function addCart(n){
    var name=document.getElementById("name"+n).innerHTML;
    var p=document.getElementById("price"+n);
    var price = p.getAttribute("value");
    window.location.href="http://localhost:8081/FSD-2/cart.jsp?name="+name+"&price="+price;
    }
</script>
</head>
<body onload="showAddToCart()">
<div class="row">

  <div class="column left" style="background-color:white;">
      <img src="https://images.unsplash.com/photo-1487530811176-3780de880c2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Ym91cXVldHxlbnwwfHwwfHw%3D&w=1000&q=80" width="170%" height="100%">
      <div class="imgg">
      <img src=" https://images.unsplash.com/photo-1487530811176-3780de880c2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Ym91cXVldHxlbnwwfHwwfHw%3D&w=1000&q=80" width="170%" height="100%">
    </div>
  </div>

  <div class="column right" style="background-color:white;">
    <div class="row">
  <div class="column1">
    <div class="card">
    <img src="https://images.pexels.com/photos/1488310/pexels-photo-1488310.jpeg?cs=srgb&dl=pexels-dimitri-kuliuk-1488310.jpg&fm=jpg" width="147%">
      <p id="name1" value="500">&#8377;500</p>
      <p id="name1">Rose</p>
      <button onclick="addcart(1)">Add to Cart</button>
      <p id="demo"></p>
    </div>
  </div>

  <div class="column1">
    <div class="card">
      <img src=" https://www.fnp.com/images/pr/l/v20220706124810/love-for-pastel-carnations-bouquet_1.jpg" width="104%">
      <p>&#8377;500</p>
      <p>Rose mary</p>
      <button onclick="addCart(1)">Add to Cart</button>
      <p id="demo"></p>
    </div>
  </div>
  
  <div class="column1">
    <div class="card">
      <img src="https://www.zieduserviss.lv/1403-large_default/flower-box-autumn-kiss.jpg" width="98%">
      <p>&#8377;500</p>
      <p>Iris</p>
      <button onclick="myFunction()">Add to Cart</button>
      <p id="demo"></p>
    </div>
  </div>
  
  <div class="column1">
    <div class="card">
      <img src="https://i.pinimg.com/originals/f9/e7/97/f9e797dc9b32ab3d8917a41e8f7b2d8a.jpg" width="129%">
      <p>&#8377;500</p>
      <p>Carnation</p>
      <button onclick="myFunction()">Add to Cart</button>
      <p id="demo"></p>
    </div>
  </div>
</div>

<br>

<div class="row">
  <div class="column1">
    <div class="card">
    <img src=" https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSofvaZhTMqD0q3RYa69jLxUAs4oT3d58W1lGWF4BubrwjBcf59wiA4jnKbhuESfo91HB8&usqp=CAU" width="75%">
      <p>&#8377;500</p>
      <p>Gardenia</p>
      <button onclick="myFunction()">Add to Cart</button>
      <p id="demo"></p>
    </div>
  </div>

  <div class="column1">
    <div class="card">
      <img src="https://i.pinimg.com/originals/f9/e7/97/f9e797dc9b32ab3d8917a41e8f7b2d8a.jpg" width="132%">
      <p>&#8377;500</p>
      <p>Lily</p>
      <button onclick="myFunction()">Add to Cart</button>
      <p id="demo"></p>
    </div>
  </div>
  
  <div class="column1">
    <div class="card">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKZIPRG9NBMu45-G9NNCAGFT3l2zqoQvYXAVX-FTVBP_RhP-F-EjTry7yZneSzSJIGmRo&usqp=CAU" width="80%">
      <p>&#8377;500</p>
      <p>Rose bud</p>
      <button onclick="myFunction()">Add to Cart</button>
      <p id="demo"></p>
    </div>
  </div>
  
  <div class="column1">
    <div class="card">
      <img src=" https://cdn.shopify.com/s/files/1/1532/8239/products/sweet-heart-rose-lily-bouquet.jpg?v=1613434925" width="100%">
      <p>&#8377;500</p>
      <p>Aster</p>
      <button onclick="myFunction()">Add to Cart</button>
      <p id="demo"></p>
    </div>
  </div>
</div>

<br>

<div class="row">
  <div class="column1">
    <div class="card">
      <img src="https://cdn.shopify.com/s/files/1/0019/4710/7393/products/SummerSplashLilyBouquet3_2000x.jpg?v=1618347472" width="105%">
      <p>&#8377;500</p>
      <p>Succulent</p>
      <button onclick="myFunction()">Add to Cart</button>
      <p id="demo"></p>
    </div>
  </div>

  <div class="column1">
    <div class="card">
      <img src=" https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIyMTkL3h0doed5ExuthF0doL0UXrdyXe7RA&usqp=CAU" width="105%">
      <p>&#8377;500</p>
      <p>Poppy</p>
      <button onclick="myFunction()">Add to Cart</button>
      <p id="demo"></p>
    </div>
  </div>
  
  <div class="column1">
    <div class="card">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxKdKsIlD7RmAizYO6nmnI6xRV66uFaIsobSng9mowKlgkp6YqYmQphO6qxYL7muCwELk&usqp=CAU" width="105%">
      <p>&#8377;500</p>
      <p>Marigold</p>
      <button onclick="myFunction()">Add to Cart</button>
      <p id="demo"></p>
    </div>
  </div>
  
  <div class="column1">
    <div class="card">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL7lwfPrvsRNagXtk0TT0NZd3gOnFiOLxBHg&usqp=CAU" width="133%">
      <p>&#8377;500</p>
      <p>Jasmin</p>
      <button onclick="myFunction()">Add to Cart</button>
      <p id="demo"></p>
    </div>
  </div>
</div>

<br>


<div class="row">
  <div class="column1">
    <div class="card">
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMbETLO3qD0EPcnZOjYdu2qavFbT9bNquLo-dC4uIEHBmYh3dMwCfOoRs-d_AG6SI5ovs&usqp=CAU" width="75%">
      <p>&#8377;500</p>
      <p>Passion</p>
      <button onclick="myFunction()">Add to Cart</button>
      <p id="demo"></p>
    </div>
  </div>

  <div class="column1">
    <div class="card">
      <img src="https://i.etsystatic.com/6366229/r/il/7f83d5/536764150/il_340x270.536764150_7e51.jpg" width="125%">
      <p>&#8377;500</p>
      <p>Sun flower</p>
      <button onclick="myFunction()">Add to Cart</button>
      <p id="demo"></p>
    </div>
  </div>
  
  <div class="column1">
    <div class="card">
      <img src="https://i.pinimg.com/736x/c7/93/43/c79343eebd314377b2f5145ccae77209.jpg" width="135%">
      <p>&#8377;500</p>
      <p>Daisy</p>
      <button onclick="myFunction()">Add to Cart</button>
      <p id="demo"></p>
    </div>
  </div>
  
  <div class="column1">
    <div class="card">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRt2NJ6ini_X8hjfZA9LV0uXmVpQBJfTtChCQ&usqp=CAU " width="100%">
      <p>&#8377;500</p>
      <p>Artichoke</p>
      <button onclick="myFunction()">Add to Cart</button>
      <p id="demo"></p>
    </div>
  </div>
</div>

<br>

<div class="row">
  <div class="column1">
    <div class="card">
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5jYi-R3quT2Dv0mCQB-ii43bQIKjOc0juDA&usqp=CAU" width="101%">
      <p>&#8377;500</p>
      <p>DayDreams</p>
      <button onclick="myFunction()">Add to Cart</button>
      <p id="demo"></p>
    </div>
  </div>

  <div class="column1">
    <div class="card">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQyntywgpkJ7hMLr3Hw4uCqtOTcM7Qg87oWrystqG95XbzkFuINv2dwLihpvlWENKA8SM&usqp=CAU" width="100%">
      <p>&#8377;500</p>
      <p>Crystal Coral</p>
      <button onclick="myFunction()">Add to Cart</button>
      <p id="demo"></p>
    </div>
  </div>
  
  <div class="column1">
    <div class="card">
      <img src=" https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzmczdTRDE9h4bStFXWGLOV6zxRIqIvI1dKg&usqp=CAU" width="100%">
      <p>&#8377;500</p>
      <p>Spring Sights</p>
      <button onclick="myFunction()">Add to Cart</button>
      <p id="demo"></p>
    </div>
  </div>
  
  <div class="column1">
    <div class="card">
      <img src="https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1651051156-peny-bouquet-1651051139.jpg?crop=1xw:1xh;center,top&resize=480:*" width="100%">
      <p>&#8377;500</p>
      <p>Summary Glory</p>
      <button onclick="myFunction()">Add to Cart</button>
      <p id="demo"></p>
    </div>
  </div>
</div>
  </div>

</div><br>
<h4><center><a href="index.html"><button name="button" type="button">Home</button></a></center></h4>
<h4><center><a href="mainproject.html"><button name="button" type="button">MainProject</button></a></center></h4>
</body>
</html>