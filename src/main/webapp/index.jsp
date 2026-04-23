<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>NexusShop — Stylish UI</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">

<style>
:root {
    --bg: #0f172a;
    --primary: #ffffff;
    --accent: #6366f1;
    --accent2: #22c55e;
    --muted: #94a3b8;
    --glass: rgba(255,255,255,0.05);
    --border: rgba(255,255,255,0.1);
}

* { box-sizing: border-box; transition: all 0.2s ease; }

body {
    margin:0;
    font-family: Inter;
    color: var(--primary);
    background: radial-gradient(circle at top, #1e293b, #020617);
}

/* HEADER */
header {
    position: sticky;
    top:0;
    background: rgba(15,23,42,0.8);
    backdrop-filter: blur(10px);
    padding:15px 20px;
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.brand {
    font-family:Poppins;
    font-size:22px;
    font-weight:700;
}

.brand span { color: var(--accent); }

nav a {
    margin:0 10px;
    text-decoration:none;
    color:white;
}

nav a:hover {
    color: var(--accent);
    text-shadow: 0 0 10px var(--accent);
}

/* HERO */
.hero {
    text-align:center;
    padding:80px 20px;
}

.hero h1 {
    font-size:48px;
    background: linear-gradient(90deg, #6366f1, #22c55e);
    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
}

/* BUTTON */
.btn {
    padding:12px 20px;
    border:none;
    border-radius:25px;
    cursor:pointer;
    margin:10px;
}

.btn-primary {
    background: linear-gradient(135deg,#6366f1,#22c55e);
    color:white;
}

.btn-primary:hover { transform: scale(1.05); }

/* GRID */
.grid {
    display:grid;
    gap:20px;
    padding:40px;
}

.products { grid-template-columns: repeat(auto-fit,minmax(250px,1fr)); }

/* CARD */
.product {
    background: var(--glass);
    backdrop-filter: blur(12px);
    border:1px solid var(--border);
    border-radius:12px;
    overflow:hidden;
    box-shadow:0 8px 32px rgba(0,0,0,0.3);
}

.product:hover {
    transform: translateY(-8px) scale(1.02);
}

.product img {
    width:100%;
    height:200px;
    object-fit:cover;
}

.product:hover img { transform: scale(1.1); }

.product-body {
    padding:15px;
}

.price {
    font-weight:700;
}

/* FOOTER */
footer {
    text-align:center;
    padding:30px;
    color:var(--muted);
}
</style>
</head>

<body>

<header>
    <div class="brand">Nexus<span>Shop</span></div>
    <nav>
        <a href="#">Home</a>
        <a href="#">Products</a>
        <a href="#">Deals</a>
    </nav>
</header>

<section class="hero">
    <h1>Premium Collection</h1>
    <p>Modern stylish eCommerce UI</p>
    <button class="btn btn-primary">Shop Now</button>
</section>

<section class="grid products" id="products"></section>

<footer>
    © 2026 NexusShop
</footer>

<script>
const products = [
    {name:"iPhone 14 Pro", price:1099, img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb"},
    {name:"MacBook Pro", price:1999, img:"https://images.unsplash.com/photo-1593642632823"},
    {name:"Headphones", price:399, img:"https://images.unsplash.com/photo-1600185365483"},
    {name:"Sneakers", price:150, img:"https://images.unsplash.com/photo-1542272604"}
];

const container = document.getElementById("products");

products.forEach(p=>{
    container.innerHTML += `
    <div class="product">
        <img src="${p.img}">
        <div class="product-body">
            <h3>${p.name}</h3>
            <div class="price">$${p.price}</div>
            <button class="btn btn-primary">Add to Cart</button>
        </div>
    </div>
    `;
});
</script>

</body>
</html>
