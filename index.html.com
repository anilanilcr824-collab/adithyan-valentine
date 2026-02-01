<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Adithyan ❤️ Ardra</title>

<style>
body {
  margin: 0;
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  background: linear-gradient(135deg,#ff4d6d,#ff8fab);
  font-family: Arial, sans-serif;
  overflow: hidden;
}

.card {
  background: white;
  padding: 35px;
  border-radius: 20px;
  text-align: center;
  box-shadow: 0 20px 40px rgba(0,0,0,0.25);
}

h1 {
  color: #ff4d6d;
}

button {
  font-size: 20px;
  padding: 12px 30px;
  border-radius: 30px;
  border: none;
  cursor: pointer;
  margin: 10px;
}

#yesBtn {
  background: #ff4d6d;
  color: white;
}

#noBtn {
  background: #eee;
  position: absolute;
}

#loveText {
  display: none;
  margin-top: 20px;
  font-size: 22px;
  color: #ff4d6d;
}
</style>
</head>

<body>

<div class="card">
  <h1>Adithyan ❤️ Ardra<br>Will you be my Valentine? 💘</h1>
  <button id="yesBtn">Yes 💖</button>
  <button id="noBtn">No 💔</button>
  <div id="loveText">
    Yayyy Ardra! 💞<br>
    You just made Adithyan the happiest person 😍
  </div>
</div>

<script>
const noBtn = document.getElementById("noBtn");
const yesBtn = document.getElementById("yesBtn");
const loveText = document.getElementById("loveText");

noBtn.addEventListener("mouseover", () => {
  noBtn.style.left = Math.random() * (window.innerWidth - 120) + "px";
  noBtn.style.top = Math.random() * (window.innerHeight - 60) + "px";
});

yesBtn.addEventListener("click", () => {
  loveText.style.display = "block";
});
</script>

</body>
</html>
