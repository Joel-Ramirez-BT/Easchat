<?php
session_start();
if (isset($_SESSION['unique_id'])) {
  header("location: users.php");
}
?>

<?php include_once "header.php"; ?>

<body>
<div class="wrapper">
    <section class="form signup">
      <center><header>UNAN-CHAT</header></center>

  
  <div class="wrapper">
    <section class="form login">
      <center> <header>Inicio de secion</header></center>
      <form action="./php/login.php" method="POST" enctype="multipart/form-data" autocomplete="off">
        <div class="error-text"></div>
        <div class="field input">
          <label>Dirección de Correo Electrónico</label>
          <input type="text" name="email" placeholder="Ingresa tu Correo Registrado" required>
        </div>
        <div class="field input">
          <label>Contraseña</label>
          <input type="password" name="password" placeholder="Ingresa tu Contraseña" required>
          <i class="fas fa-eye"></i>
        </div>
        <div class="field button">
          <input type="submit" name="submit" value="Ingresar">
        </div>
      </form>
      <div class="link">Aún no te has registrado? <a href="index.php">Regístrarse</a></div>
    </section>
  </div>

  <script src="javascript/pass-show-hide.js"></script>
  <script src="javascript/login.js"></script>

</body>

</html>