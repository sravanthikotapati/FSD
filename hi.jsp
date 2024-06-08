<html>
<head>
  <title>Cakes</title>
  <style>
    .product {
      border: 1px solid #ccc;
      padding: 10px;
      margin-bottom: 10px;
    }

    .product {
      border: 2px solid #ccc;
      padding: 10px;
      margin-bottom: 10px;
    }

    .add-to-cart {
      display: inline-block;
      padding: 5px 10px;
      background-color: #4CAF50;
      color: white;
      border: none;
      cursor: pointer;
      font-size: 14px;
      border-radius: 4px;
    }

    .add-to-cart:hover {
      background-color: #45a049;
    }
  
  </style>
  <script>
    
    function addToCart(n) {
    var name=document.getElementById("name"+n).innerHTML;
    var p=document.getElementById("price"+n);
    var price = p.getAttribute("value");
    window.location.href="http://localhost:8081/FSD-2/cart.jsp?name="+name+"&price="+price;
    }
</script>

</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

.checked {
  color: orange;
}
* {
  box-sizing: border-box;
}
 .row {
  display: flex;
}

 .column {
  float:left;
  flex: 33.33%;
  padding: 5px;
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
  font-family: arial;
}

.card:hover {
  box-shadow: 0 8px 12px 0 rgba(0,0,0,0.2);
  }

 .imgg {
    transform: scaleY(-1);
  }

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: .
}
</style>
</head>
<body>
 <h2 style="color:skyblue;">Welcome To The Online Gift shop </h2>
<div class="row">
<div class="column left" style="background-color:white;">
      <img src="https://funcakes.com/content/uploads/2020/03/Rainbow_Surprise_Cake-960x960-c-default.jpg" width="100%" height="100%">
      <div class="imgg">
      <img src="https://funcakes.com/content/uploads/2020/03/Rainbow_Surprise_Cake-960x960-c-default.jpg" width="100%" height="100%">
    </div>
  </div>

  <div class="column right" style="background-color:white;">
    <div class="row">

    <div class="column 1">
    <div class="card">
    <img src="https://livforcake.com/wp-content/uploads/2017/07/black-forest-cake-thumb.jpg" width="80%">
      <p id="Product 1" value="500">&#8377;500</p>
      <p id="demo1">Angel cake</p>
    <!-- <a href="signin.html" class ="btn btn-primary">Add to Cart-->
<button class="add-to-cart"  ><a href="cart.jsp"> Add to Cart</button>
       
     
   </div>
  </div>

  <div class="column1">
    <div class="card">
      <img src="https://i.pinimg.com/originals/26/9a/e0/269ae08020d0dddd050cda68a0e1a35b.png" width="100%">
      <p>&#8377;450</p>
      <p>Apple cake</p>
      <button class="add-to-cart" data-name="Product 2" data-price="450" onclick="addToCart.call(this)">Add to Cart</button>
      <p id="demo2"></p>
    </div>
  </div>
  
  <div class="column1">
    <div class="card">
      <img src="https://i.pinimg.com/originals/ea/14/4a/ea144a6c14d810faa9705cb2a28ebee6.jpg" width="100%">
      <p>&#8377;340</p>
      <p>Applesauce cake</p>
      <button class="add-to-cart" data-name="Product 3" data-price="340" onclick="addToCart.call(this)">Add to Cart</button>
      <p id="demo3"></p>
    </div>
  </div>
  
  <div class="column1">
    <div class="card">
      <img src="https://ourtableforseven.com/wp-content/uploads/chocolate-rainbow-bundt-cake-main-ourtableforseven.com_-480x480.jpg" width="100%">
      <p>&#8377;500</p>
      <p>Babka</p>
      <button class="add-to-cart" data-name="Product 4" data-price="500.00" onclick="addToCart.call(this)">Add to Cart</button>
      <p id="demo4"></p>
    </div>
  </div>
</div>

<br>

<div class="row">
  <div class="column1">
    <div class="card">
    <img src="https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimg1.cookinglight.timeinc.net%2Fsites%2Fdefault%2Ffiles%2Fstyles%2F4_3_horizontal_-_1200x900%2Fpublic%2F1542062283%2Fchocolate-and-cream-layer-cake-1812-cover.jpg%3Fitok%3DR_xDiShk" width="133%">
      <p>&#8377;430</p>
      <p>Banana Cake</p>
      <button class="add-to-cart" data-name="Product 5" data-price="430" onclick="addToCart.call(this)">Add to Cart</button>
      <p id="demo5"></p>
    </div>
  </div>

  <div class="column1">
    <div class="card">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQeAkYFwdu97_3LZl9KTHhKAlc7SsEMLjMbA&usqp=CAU" width="150%">
      <p>&#8377;540</p>
      <p>Batik cake</p>
      <button class="add-to-cart" data-name="Product 6" data-price="540" onclick="addToCart.call(this)">Add to Cart</button>
      <p id="demo6"></p>
    </div>
  </div>
  
  <div class="column1">
    <div class="card">
      <img src="https://cdn.shopify.com/s/files/1/1147/6896/products/IMG_8455_2048x2048.jpg?v=1653581105" width="100%">
      <p>&#8377;420</p>
      <p>Baumkuchen</p>
     <button class="add-to-cart" data-name="Product 7" data-price="420" onclick="addToCart.call(this)">Add to Cart</button>
      <p id="demo7"></p>
    </div>
  </div>
  
  <div class="column1">
    <div class="card">
      <img src=" https://hpbd.name/uploads/w450/2023/03/03/almond-birthday-cake-with-name-editing-1_95f87.jpg" width="150%">
      <p>&#8377;380</p>
      <p>Brownie</p>
      <button class="add-to-cart" data-name="Product 8" data-price="380" onclick="addToCart.call(this)">Add to Cart</button>
      <p id="demo8"></p>
    </div>
  </div>
</div>

<br>

<div class="row">
  <div class="column1">
    <div class="card">
    <img src="https://iambaker.net/wp-content/uploads/2014/03/green-ombre-cake.jpg" width="70%">
      <p>&#8377;400</p>
      <p>Blondie</p>
      <button class="add-to-cart" data-name="Product 9" data-price="400" onclick="addToCart.call(this)">Add to Cart</button>
      <p id="demo9"></p>
    </div>
  </div>

  <div class="column1">
    <div class="card">
      <img src="https://aclassictwist.com/wp-content/uploads/2016/05/Makeup-Cake-2-720x540.jpg" width="140%">
      <p>&#8377;320</p>
      <p>Cheesecake</p>
      <button class="add-to-cart" data-name="Product 10" data-price="320" onclick="addToCart.call(this)">Add to Cart</button>
      <p id="demo10"></p>
    </div>
  </div>
  
  <div class="column1">
    <div class="card">
      <img src="https://i.pinimg.com/originals/24/b7/93/24b7931733dc45de216bbfdcb2c706e6.jpg" width="105%">
      <p>&#8377;460</p>
      <p>Bundt cake</p>
      <button class="add-to-cart" data-name="Product 11" data-price="460" onclick="addToCart.call(this)">Add to Cart</button>
      <p id="demo11"></p>
    </div>
  </div>
  
  <div class="column1">
    <div class="card">
      <img src=" https://i.pinimg.com/originals/5b/56/b8/5b56b836e36f5909d38b5837c219cf8d.jpg" width="100%">
      <p>&#8377;410</p>
      <p>Butter Cake</p>
      <button class="add-to-cart" data-name="Product 12" data-price="410" onclick="addToCart.call(this)">Add to Cart</button>
      <p id="demo12"></p>
    </div>
  </div>
</div>

<br>


<!--<div class="row">
  <div class="column1">
    <div class="card">
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSb8t1QbI44duplCVIm7_4h2i4hnPocJT5Dkg&usqp=CAU" width="150%">
      <p>&#8377;520</p>
      <p>Chiffon cake</p>
      <button class="add-to-cart" data-name="Product 13" data-price="520" onclick="addToCart.call(this)">Add to Cart</button>
      <p id="demo13"></p>
    </div>
  </div>

  <div class="column1">
    <div class="card">
      <img src="https://faircake.co.uk/wp-content/uploads/2020/06/buttercreamflowerscakeclass.jpg" width="67%">
      <p>&#8377;280</p>
      <p>Dundee cake</p>
      <button class="add-to-cart" data-name="Product 14" data-price="280" onclick="addToCart.call(this)">Add to Cart</button>
      <p id="demo14"></p>
    </div>
  </div>
  
  <div class="column1">
    <div class="card">
      <img src="https://i.pinimg.com/originals/25/0a/da/250ada05b2f17cea276f4c47bbebe26c.jpg" width="76%">
      <p>&#8377;290</p>
      <p>Coconut cake</p>
     <button class="add-to-cart" data-name="Product 15" data-price="290" onclick="addToCart.call(this)">Add to Cart</button>
      <p id="demo15"></p>
    </div>
  </div>
  
  <div class="column1">
    <div class="card">
      <img src="https://i.pinimg.com/736x/f2/df/5d/f2df5db9d9ef1b59bfceb274df244dd6--homemade-baby-cake-decorations.jpg" width="75%">
      <p>&#8377;520</p>
      <p>Batik cake</p>
      <button class="add-to-cart" data-name="Product 16" data-price="520" onclick="addToCart.call(this)">Add to Cart</button>
      <p id="demo16"></p>
    </div>
  </div>
</div>

<br>

<div class="row">
  <div class="column1">
    <div class="card">
    <img src="https://images.pexels.com/photos/1702373/pexels-photo-1702373.jpeg?cs=srgb&dl=pexels-brent-keane-1702373.jpg&fm=jpg" width="141%">
      <p>&#8377;550</p>
      <p>Chocolate cake</p>
      <button class="add-to-cart" data-name="Product 17" data-price="550" onclick="addToCart.call(this)">Add to Cart</button>
      <p id="demo17"></p>
    </div>
  </div>

  <div class="column1">
    <div class="card">
      <img src="https://www.freshboo.com/wp-content/uploads/2014/10/pinkblue-baby-shower-cake-400x330.jpg" width="122%">
      <p>&#8377;546</p>
      <p>Birthday cake</p>
      <button class="add-to-cart" data-name="Product 18" data-price="546" onclick="addToCart.call(this)">Add to Cart</button>
      <p id="demo18"></p>
    </div>
  </div>
  
  <div class="column1">
    <div class="card">
      <img src=" https://1.bp.blogspot.com/-EX4QjTBykKI/YTzrEBLCjhI/AAAAAAALbw0/bMqEjeIp18kLKakGLhCPb81yb1n1dkwaQCLcBGAsYHQ/s4032/IMG_0910%2B%25281%2529.JPG" width="75%">
      <p>&#8377;432</p>
      <p>Blackout cake</p>
      <button class="add-to-cart" data-name="Product 19" data-price="432" onclick="addToCart.call(this)">Add to Cart</button>
      <p id="demo19"></p>
    </div>
  </div>
  
  <div class="column1">
    <div class="card">
      <img src="https://edibletimes.com/wp-content/uploads/2020/08/cake-decorating-tips-1024x683.jpg"width="149%">
      <p>&#8377;200</p>
      <p>Chestnut cake</p>
      <button class="add-to-cart" data-name="Product 20" data-price="200" onclick="addToCart.call(this)">Add to Cart</button>
      <p id="demo20"></p>
    </div>
  </div>-->
</div>
  </div>

</div><br>
<h4><center><a href="index.html"><button name="button" type="button">Home</button></a></center></h4>
<h4><center><a href="addtocart.jsp"><button name="button" type="button">MainProject</button></a></center></h4>
</body>
</html>