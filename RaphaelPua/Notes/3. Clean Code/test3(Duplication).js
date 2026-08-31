function fetchAllNews() {
    return [
        { title: 'JS News 1', type: 'javascript' },
        { title: 'Rust News 1', type: 'rust' },
        { title: 'JS News 2', type: 'javascript' },
        { title: 'Golang News 1', type: 'golang' },
    ];
}

function getNewsFromWeb(type) {
    const allNews = fetchAllNews();
    const news = [];
    for (let i = allNews.length - 1; i >= 0; i--) {
        if (allNews[i].type === type) {
            news.push(allNews[i]);
        }
    }
    return news;
}

function getJavascriptNews() {
    return getNewsFromWeb("javascript");
}

function getRustNews() {
    return getNewsFromWeb("rust");
}

function getGolangNews() {
    return getNewsFromWeb("golang");
}

console.log('JavaScript news:', getJavascriptNews());
console.log('Rust news:', getRustNews());
console.log('Golang news:', getGolangNews());