<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Página Azul | Sign Up</title>
  <!-- FAVICON -->
  <link rel="shortcut icon" href="/assets/img/logos/logo.png" type="image/x-icon">
  <!-- FONT AWESOME -->
  <script src="https://kit.fontawesome.com/d80615c6de.js" crossorigin="anonymous"></script>
  <!-- CSS -->
  <link rel="stylesheet" href="/assets/css/main.css">
  <!-- JavaScript -->
  <script src="/assets/js/main.js" defer></script>
</head>
<body>
  
  <?php
    require_once $_SERVER['DOCUMENT_ROOT'].'/assets/php/conexao.php';
    include_once $_SERVER['DOCUMENT_ROOT'].'/assets/include/header.html';
  ?>


  <main>
    <section id="signup" class="full-size">
      <div class="container">
        <h1 class="section-title">Registrar-se</h1>
        <form class="form" action="signup.php" method="post" enctype="multipart/form-data">
          <div class="form__cols">
            <div class="form__group">
              <label class="form__label" for="email">Email</label>
              <input class="form__input" type="email" name="email" id="email" placeholder="Insira seu e-mail">
            </div>
            <div class="form__group">
              <label class="form__label" for="senha">Senha</label>
              <input class="form__input" type="password" name="senha" id="senha" placeholder="Defina sua senha">
            </div>
          </div>

          <div class="form__group">
            <label class="form__label" for="nome">Nome</label>            
            <input class="form__input" type="text" name="nome" id="nome" placeholder="Insira o nome do seu negócio">
          </div>

          <div class="form__group">
            <label class="form__label" for="CNPJ">CNPJ</label>            
            <input class="form__input" type="text" name="CNPJ" id="CNPJ" placeholder="Insira o CNPJ do seu negócio">
          </div>
          
          <div class="form__cols">
            <div class="form__group">
              <label class="form__label" for="plano">Plano</label>
              <select class="form__input" name="plano" id="plano">
                <option value="-1" disabled selected>Selecione o plano</option>
                <?php
                  // Opções do select
                  $planosQuery = $conexao -> prepare('SELECT idPlano, nome FROM planos');
                  $planosQuery -> execute();
                  while($plano = $planosQuery->fetch(PDO::FETCH_ASSOC)) {
                ?>
                <option value="<?= $plano['idPlano'] ?>"><?= $plano['nome'] ?></option>
                <?php
                  }
                ?>
              </select>
            </div>

            <div class="form__group">
              <label class="form__label" for="categoria">Categoria</label>
              <select class="form__input" name="categoria" id="categoria">
                <option value="-1" disabled selected>Selecione a categoria do seu negócio</option>
                <?php
                  // Opções do select
                  $categoriasQuery = $conexao -> prepare('SELECT * FROM categorias');
                  $categoriasQuery -> execute();
                  while($categoria = $categoriasQuery->fetch(PDO::FETCH_ASSOC)) {
                    ?>
                    <option value="<?=$categoria['idCategoria']?>"><?= $categoria['nome'] ?></option>
                    <?php
                  }
                ?>
              </select>
            </div>
          </div>
          
          <div class="form__group">
            <label class="form__label" for="descricao">Descrição</label>
            <textarea class="form__input" type="text" name="descricao" id="descricao" placeholder="Insira a descrição do seu negócio"></textarea>
          </div>

          <div class="form__group">
            <label class="form__label" for="Whatsapp">Whatsapp</label>            
            <input class="form__input" type="text" name="Whatsapp" id="Whatsapp" placeholder="Insira o Whatsapp do seu negócio">
          </div>
          
          <div class="form__cols">
            <div class="form__group">
              <label class="form__label" for="Facebook">Facebook</label>
              <input class="form__input" type="text" name="Facebook" id="Facebook" placeholder="Insira o Facebook do seu negócio">
            </div>
            <div class="form__group">
              <label class="form__label" for="Instagram">Instagram</label>
              <input class="form__input" type="text" name="Instagram" id="Instagram" placeholder="Insira o Instagram do seu negócio">
            </div>
          </div>

          <div class="form__group">
            <label class="form__label" for="telefone">Telefone</label>            
            <input class="form__input" type="text" name="telefone" id="telefone" placeholder="Insira o telefone do seu negócio">
          </div>

          <div class="form__group">
              <label class="form__label" for="cidade">Cidade</label>
              <select class="form__input" name="cidade" id="cidade">
                <option value="-1" disabled selected>Selecione a cidade</option>
                <option value="Mococa">Mococa</option>
                <option value="Arceburgo">Arceburgo</option>
                <option value="Tapiratiba">Tapiratiba</option>
              </select>
          </div>

          <div class="form__group">
            <label class="form__label" for="CEP">CEP</label>            
            <input class="form__input" type="text" name="CEP" id="CEP" placeholder="Insira o CEP do seu negócio">
          </div>

          <div class="form__group">
            <label class="form__label" for="bairro">Bairro</label>            
            <input class="form__input" type="text" name="bairro" id="bairro" placeholder="Insira o bairro do seu negócio">
          </div>

          <div class="form__cols">
            <div class="form__group">
              <label class="form__label" for="rua">Rua</label>
              <input class="form__input" type="text" name="rua" id="rua" placeholder="Insira o rua do seu negócio">
            </div>
            
            <div class="form__group">
              <label class="form__label" for="numero">Número</label>
              <input class="form__input" type="text" name="numero" id="numero" placeholder="Insira o número do seu negócio">
            </div>
          </div>

          <div class="form__cols">
            <div class="form__group">
              <label class="form__label" for="imgPerfil">Imagem de perfil</label>
              <input class="form__input"type="file" name="imgPerfil" id="imgPerfil">
            </div>
            
            <div class="form__group">
              <label class="form__label" for="imgAnuncioP">Imagem de anúncio pequeno</label>
              <input class="form__input"type="file" name="imgAnuncioP" id="imgAnuncioP">
            </div>
            
            <div class="form__group">
              <label class="form__label" for="imgAnuncioG">Imagem de anúncio grande</label>
              <input class="form__input"type="file" name="imgAnuncioG" id="imgAnuncioG">
            </div>
          </div>
          
          <div class="form__submit">
            <input class="btn--dark" type="submit" value="Registrar" name="registrar">
            <input class="btn--outline-dark" type="reset" value="Limpar">
          </div>
        </form>
      </div>
    </section>
  </main>



  
  <?php
  
  function getImg($img){

    $img_tmp = $_FILES[$img]["tmp_name"];
    $img_original = $_FILES[$img]["name"];

    $path = $_SERVER['DOCUMENT_ROOT'] . "/assets/img/img-anunciante/";

    $fileExtension = strtolower(pathinfo($img_original, PATHINFO_EXTENSION));
        
        if (($fileExtension != "jpg") && ($fileExtension != "jpeg") && ($fileExtension != "png")) {
          echo "Imagem invalida";
        } else {
          
          // echo "Imagem $img_original é válida";
          // Nomeia o arquivo de imagem com a data e hora
          date_default_timezone_set("America/Sao_Paulo");
          $time = date("Ymd")."_".date("His");

          $imgName = $time. "." .$fileExtension;
          $img_final = $path . $imgName;
          
          
          move_uploaded_file($img_tmp, $img_final);        
          
          return $imgName;
          
        }
      }

      if (isset($_POST['registrar'])) {
        $nome = $_POST['nome'];
        $descricao = $_POST['descricao'];
        $idCategoria = $_POST['categoria'];
        $idPlano = $_POST['plano'];
        
        $imgPerfil = getImg('imgPerfil');
        $imgAnuncioP = getImg('imgAnuncioP');
        $imgAnuncioG = getImg('imgAnuncioG');

        
        $result = $conexao -> prepare("INSERT INTO `anunciante` values (null, :nome, :idPlano, :idCategoria, :descricao, :imgPerfil, :imgAnuncioP, :imgAnuncioG)");
        
        $result->bindValue(":nome", $nome);
        $result->bindValue(':idPlano', $idPlano);
        $result->bindValue(":idCategoria", $idCategoria);
        $result->bindValue(":descricao", $descricao);
        $result->bindValue(":imgPerfil", $imgPerfil);
        $result->bindValue(":imgAnuncioP", $imgAnuncioP);
        $result->bindValue(":imgAnuncioG", $imgAnuncioG);
        $result->execute();
        
      }

      if (isset($_POST['registrar'])) {

        $email = $_POST['email'];
        $senha = $_POST['senha'];

        $login = $conexao -> prepare("INSERT INTO `login` VALUES (null, :email, :senha)");

        $login -> bindValue(":email", $email);
        $login -> bindvalue(":senha", md5($senha));
        $login -> execute();

      }
    ?>

    <a href="#" class="back-to-top">
        <i class="fa-solid fa-arrow-up"></i>
    </a>

    <?php
      include_once $_SERVER['DOCUMENT_ROOT'].'/assets/include/footer.html';
    ?>
    
</body>
</html>