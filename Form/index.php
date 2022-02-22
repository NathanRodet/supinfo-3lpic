<?php
        // Initialiser la session
        session_start();
        // Vérifiez si l'utilisateur est connecté, sinon redirigez-le vers la page de connexion
        if(!isset($_SESSION["username"])){
                header("Location: login.php");
                exit(); 
        }
?>
<?php
$filename = $_FILES['monfichier']['name'];
        echo $filename;

        //test taille
        if($_FILES['monfichier']['size'] > 15000000){
                $error = "Votre fichier est trop lourd.";
        }

        // test extension
        $extension = strrchr($_FILES['monfichier']['name'],'.');
        if($extension != '.py'){
                        $error = "Votre fichier n'est pas conforme.";
        }
         
        $target = '/var/www/html/projet/upload/'.$filename;
        echo $target;
        move_uploaded_file($_FILES['monfichier']['tmp_name'], $target);

        $output = shell_exec("cd /var/www/html/projet/upload && pylint $filename");
        echo "<pre>$output</pre>";
?>


<!DOCTYPE html>
<html>
        <head>
        <link rel="stylesheet" href="style.css" />
        </head>
        <body>
<?php
        // Initialiser la session
        session_start();
        // Vérifiez si l'utilisateur est connecté, sinon redirigez-le vers la page de connexion
        if(!isset($_SESSION["username"])){
                header("Location: login.php");
                exit(); 
        }
?>
<?php
$filename = $_FILES['monfichier']['name'];
        echo $filename;

        //test taille
        if($_FILES['monfichier']['size'] > 15000000){
                $error = "Votre fichier est trop lourd.";
        }

        // test extension
        $extension = strrchr($_FILES['monfichier']['name'],'.');
        if($extension != '.py'){
                        $error = "Votre fichier n'est pas conforme.";
        }
         
        $target = '/var/www/html/projet/upload/'.$filename;
        echo $target;
        move_uploaded_file($_FILES['monfichier']['tmp_name'], $target);

        $output = shell_exec("cd /var/www/html/projet/upload && pylint $filename");
        echo "<pre>$output</pre>";
?>


<!DOCTYPE html>
<html>
        <head>
        <link rel="stylesheet" href="style.css" />
        </head>
        <body>

        <div class="sucess">
                        <h1>Bienvenue <?php echo $_SESSION['username']; ?>!</h1>
                        <p>vous pouvez rendre votre script</p>
                        <div style="color:red"><p><?php if(isset($error)) echo $error; ?></p></div>


                        <form method="POST" action="" enctype="multipart/form-data">
                                <input type="file" name="monfichier" value="">
                                <input type= "submit" name="chargement" value="charger le fichier">
                        </form>

                        <a href="logout.php">Déconnexion</a>
                </div>
        </body>
</html>