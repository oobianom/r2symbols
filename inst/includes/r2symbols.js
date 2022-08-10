/*written by Obinna N Obianom */

let symbolkeys = ({alpha : "ALPHAAA",the: "BETAAAAA"});



window.addEventListener('DOMContentLoaded', () => {
  let bodyg = $('body');
  bodyg.hide();
  let wholebody = bodyg.html();
  let matched = wholebody.match(/(\(\(.{1,8}\)\))/g);

  matched.forEach((item, index)=>{
    let itemrev = item.replace(/[\(\(]|[\)\)]/g,"");
    let itemrepl = symbolkeys[itemrev];
    if(itemrepl!= undefined)
    wholebody = wholebody.replace(itemrev,itemrepl);
  });
  bodyg.html(wholebody);
  bodyg.show();
});
