

const selectGenre = document.getElementById("genre");
const genreContainer = document.getElementById("random-genre-article");

getMainArticle("Rock", function (html, url) {
    genreContainer.innerHTML = html;
    genreContainer.setAttribute('href', url);
    genreContainer.setAttribute('target', "_blank");
});


function getMainArticle(genre, callback) {
    $.ajax({
        url: "https://newsapi.org/v2/everything",
        data: {
            q: genre,
            apiKey: "8e75fc845f574f8e80f9a0c88132bf12",
            pageSize: 1
        }
    }).done(function (data) {
        var articles = data.articles;
        var article = articles[0];

        var title = article.title;
        var description = article.description;
        var url = article.url;
        var imageUrl = article.urlToImage;

        var articleElement = $("<div>");
        $("<img>").attr("src", imageUrl).appendTo(articleElement);

        const flex = $("<div>").addClass("main-article").appendTo(articleElement);

        $("<h2>").text(title).appendTo(flex);

        $("<p>").text(description).appendTo(flex);

        callback(articleElement.html(), url);
    });
}


selectGenre.addEventListener('change', (event) => {
    const selectedValue = event.target.value;
    while (genreContainer.firstChild) {
        genreContainer.removeChild(genreContainer.firstChild);
    }
    getMainArticle(selectedValue, (html, url) => {
        genreContainer.innerHTML = html;
        genreContainer.setAttribute('href', url);
        genreContainer.setAttribute('target', "_blank");
    });
});

$.ajax({
    url: "https://newsapi.org/v2/everything",
    data: {
        q: "music",
        apiKey: "8e75fc845f574f8e80f9a0c88132bf12",
        pageSize: 9
    }
}).done(function (data) {
    var articles = data.articles;

    // loop through the articles and create HTML elements to represent each one
    for (var i = 0; i < articles.length; i++) {
        var article = articles[i];
        var title = article.title;
        var description = article.description;
        var url = article.url;
        var imageUrl = article.urlToImage;
        const columnNumber = i % 3;

        // create an HTML element to represent the article
        var articleElement = $("<div>").addClass("article");

        if (!imageUrl) {
            continue;
        }

        $("<img>").attr("src", imageUrl).appendTo(articleElement);

        // add the article title to the element
        $("<h2>").text(title).appendTo(articleElement);

        // add the article description to the element
        $("<p>").text(description).appendTo(articleElement);

        // add a link to the article URL to the element
        $("<a>").attr("target", "_blank").text("Read more").attr("href", url).appendTo(articleElement);

        // add the article element to the page    
        if (columnNumber === 0)
            articleElement.appendTo("#articles-column-1");
        else if (columnNumber == 1)
            articleElement.appendTo("#articles-column-2");
        else
            articleElement.appendTo("#articles-column-3");
    }
});
