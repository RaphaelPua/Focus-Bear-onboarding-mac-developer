function getNewsFromWeb(type) {
    const allNews = getNewsFromWeb();
    const news = [];
    
    for (let i = allNews.length - 1; i >= 0; i--){
        if (allNews[i].type === type) {
            news.push(allNews[i]);
        }
    }
    return news;
}

function getJavascriptNews() {
   getNewsFromWeb("javascript");
}
 
function getRustNews() { 
    getNewsFromWeb("rust");
}

function getGolangNews() { 
    getNewsFromWeb("golang");
}
