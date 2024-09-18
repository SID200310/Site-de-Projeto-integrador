<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/stylesexplorar.css">
    <title>SACC</title>
</head>

<body>
    <div class="container">
        <header>
            <h1>SACC</h1>
        </header>
        <main>
            <div class="explorer">
                <?php

                include_once("../php/includes/conexao.php");
                $sql = "SELECT * FROM `tipodeuso`";
                $tiposuso = $conexao->query($sql);
                $tiposuso = $tiposuso->fetchAll();

                ?>
                <div class="TagsSelecionadas">
                    <?php
                    echo '<div class="tag" id="tag-geral">'
                        .   'todas'
                        . '</div>';
                    foreach ($tiposuso as $t) {
                        echo '<div class="tag disable" id="tag-remove-' . $t['id'] . '">'
                            . $t['nome']
                            .   '<div class="tag-command">'
                            .       '<div class="tag-remove" onClick="removeFilter(`' . $t['id'] . '`)">X</div>'
                            .   '</div>'
                            . '</div>';
                    }
                    ?>
                </div>
                <hr style="margin: 10px" />
                <div class=" TagsNaoSelecionadas">
                    <?php
                    foreach ($tiposuso as $t) {
                        echo '<div class="tag" id="tag-add-' . $t['id'] . '">'
                            . $t['nome']
                            .   '<div class="tag-command" >'
                            .       '<div class="tag-add" onClick="addFilter(`' . $t['id'] . '`)">+</div>'
                            .   '</div>'
                            . '</div>';
                    }
                    ?>
                </div>
            </div>
            <div class="cardselection" id="cardselection">
            </div>
        </main>
        <footer>
            <p>Desenvolvido por Sid, Amanda e Antonnio</p>
        </footer>
    </div>
    <script src="../js/filter.js"></script>
</body>