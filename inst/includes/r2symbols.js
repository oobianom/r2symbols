/*written by Obinna N Obianom */
var fontSize = "fsizex";
var fontWeight = "fwghtx";
var fontColor = "fcolrx";
var formatOutput = (str) => "<span style='color:" + fontColor + ";font-size:" + fontSize + "px;font-weight:" + fontWeight + ";'>" + str.htm + "</span>";
var fetchKeyMatch = (str) => symbolpkgkeys.find(el => el.alias2 == str);
var fetchAllIndexes = (arr, val = "))") => {
    var indexes = [],
        i = -1;
    while ((i = arr.indexOf(val, i + 1)) != -1) {
        indexes.push(i);
    }
    return indexes.length;
};

window.addEventListener('DOMContentLoaded', () => {
    let bodyg = $('body');
    bodyg.hide();
    let wholebody = bodyg.html();
    let matched2 = matched = wholebody.match(/(\(\(.{1,12}\)\))/g);
    matched.forEach((item, index) => {

        let itemrev = itemrepl = fAI = "";

        fAI = fetchAllIndexes(item);

        if (fAI > 1) {

            item.split("))").forEach((item0, index0) => {
              console.log("searching -- " + item0);
        console.log(item0.indexOf("(("));
                if (item0.indexOf("((") >= 0) {
                    itemrev = item0.replace(/[\(\(]|[\)\)]/g, "");
                    itemrepl = fetchKeyMatch(itemrev);
                    console.log("fetching -- " + itemrev);
                    if (itemrepl != undefined)
                        wholebody = wholebody.replace("((" + itemrev + "))", formatOutput(itemrepl));
                }
            });

        } else {
            itemrev = item.replace(/[\(\(]|[\)\)]/g, "");
            itemrepl = fetchKeyMatch(itemrev);
            if (itemrepl != undefined)
                wholebody = wholebody.replace(item, formatOutput(itemrepl));
        }



    });
    matched2 = wholebody.match(/<code>(.*?)<\/code>/g);
    matched2.forEach((item, index) => {
        let itemrev = itemrepl = "";
        itemrev = item.replace(/[<]code[>]|[<][\/]code[>]/g, "");
        itemrepl = fetchKeyMatch(itemrev);
        if (itemrepl != undefined)
            wholebody = wholebody.replace(item, formatOutput(itemrepl));
    });
    bodyg.html(wholebody);
    bodyg.show();
});
