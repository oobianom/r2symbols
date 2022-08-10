/*written by Obinna N Obianom */

var symbolpkgkeys = ({alpha : "&alpha;",the: "&delta;",beta: '&beta;'});



window.addEventListener('DOMContentLoaded', () => {
  let bodyg = $('body');
  bodyg.hide();
  let wholebody = bodyg.html();
  let matched = wholebody.match(/(\(\(.{1,8}\)\))/g);
  matched.forEach((item, index)=>{
    let itemrev = item.replace(/[\(\(]|[\)\)]/g,"");
    let itemrepl = symbolpkgkeys[itemrev];
    if(itemrepl!= undefined)
    wholebody = wholebody.replace(item,itemrepl);
  });
  let matched2 = wholebody.match(/<code>(.*?)<\/code>/g);
  matched2.forEach((item, index)=>{
    let itemrev = item.replace(/[<]code[>]|[<][\/]code[>]/g,"");
    let itemrepl = symbolpkgkeys[itemrev];
    if(itemrepl!= undefined)
    wholebody = wholebody.replace(item,itemrepl);
  });
  bodyg.html(wholebody);
  bodyg.show();
});
