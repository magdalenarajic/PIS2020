<?php 
    $id = $_GET['id'];
    $link = mysqli_connect("localhost", "root", "", "baza");

    $sql = "DELETE FROM prikazivanje WHERE idPrikazivanje = $id"; 

    if ($link->query($sql) === TRUE) {
        header('Location: admin.php');
        exit;
    } else {
        echo "Error deleting record: " . $link->error;
    }
?>