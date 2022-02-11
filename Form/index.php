<?php

try {
    $pdo = new PDO("mysql:host=$DB_Host;dbname=$DB_Database", $DB_User, $DB_Password);
    $DB_Open = true;
} catch (PDOException $e) {
    echo $e;
    exit;
}

?>

<form action="PylintTreatment.php" method="post">
 <p>Votre nom : <input type="text" name="nom" /></p>
 <p>Votre âge : <input type="text" name="age" /></p>
 <p><input type="submit" value="OK"></p>
</form>

