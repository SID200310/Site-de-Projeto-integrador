var filters = [];

const relativeDir = "http://localhost/sacc-novo/static/imgs";
function addcards(res) {
    if (res.length == 0) {
        document.getElementById("cardselection").innerHTML = "<h1>Nenhum resultado encontrado</h1>";
        return;
    }

    const cards = document.getElementById("cardselection");
    cards.innerHTML = "";
    res.forEach(item => {
        const card = document.createElement("div");
        card.classList.add("card");

        const img = document.createElement("img");
        img.src = relativeDir + "/" + item.imagem;

        const title = document.createElement("h3");
        title.innerHTML = "<br>" + "<br>" + item.modelo;

        card.append(img);
        card.append(title);
        
        cards.append(card);
    });

}

const url = "http://localhost/sacc-novo/static/php/action/";

async function allCards() {
    try {
        const res = await fetch(url + "peca.php");
        const data = await res.json();
        console.log(data);
        addcards(data);
    } catch (error) {
        console.error(error);
    }
}

async function updateCards() {
    if (filters.length == 0) {
        allCards()
    }
    // get in url      
    try {
        const res = await fetch(url + "peca.php?ids=" + filters.join(","));
        const data = await res.json();
        console.log(data);
        addcards(data);
    } catch (error) {
        console.error(error);
    }
}

function changeFilter(id, state) {
    const tagRemove = document.getElementById("tag-remove-" + id);
    const tagAdd = document.getElementById("tag-add-" + id);

    if (state) {
        tagRemove.classList.remove("disable");
        tagAdd.classList.add("disable");

        if (filters.length != 0) {
            document.getElementById("tag-geral").classList.add("disable");
        }
    } else {
        tagRemove.classList.add("disable");
        tagAdd.classList.remove("disable");

        if (filters.length == 0) {
            document.getElementById("tag-geral").classList.remove("disable");
        }
    }

}

function addFilter(id) {
    var index = filters.indexOf(id);
    if (index > -1) {
        return;
    }

    filters.push(id);
    updateCards();
    changeFilter(id, true);
}

function removeFilter(id) {
    var index = filters.indexOf(id);
    if (index > -1) {
        filters.splice(index, 1);
    }
    updateCards();
    changeFilter(id, false);
}


window.onload = async function () {
    allCards()
}