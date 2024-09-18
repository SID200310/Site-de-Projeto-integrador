<?php

//verify if is post or get
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    exit('No implementation yet');
} else if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    // SELECT * FROM `peca` WHERE  `id` IN (
    //     SELECT `peca_id` FROM `peca_tipodeuso` WHERE `tipodeuso_id` IN (1, 2)
    // )
    if (isset($_GET['ids']) == false) {
        $sql = "SELECT * FROM `peca` ";

        try {
            include_once("../includes/conexao.php");

            $cursor = $conexao->query($sql);

            echo json_encode($cursor->fetchAll());
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    } else {
        $ids = $_GET['ids'];

        //sanitize parameters
        $ids = filter_var($ids, FILTER_SANITIZE_SPECIAL_CHARS);
        $ids = filter_var($ids, FILTER_SANITIZE_NUMBER_INT);
        $ids = htmlspecialchars($ids);

        $ids = explode(',', $ids);


        $sql = "SELECT * FROM `peca` WHERE  `id` IN (
            SELECT `peca_id` FROM `peca_tipodeuso` WHERE `tipodeuso_id` IN (" . implode(',', $ids) . ") ) GROUP BY `id`";

        try {
            include_once("../includes/conexao.php");

            $cursor = $conexao->query($sql);

            echo json_encode($cursor->fetchAll());
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }
} else {
    exit('Invalid request method');
}
