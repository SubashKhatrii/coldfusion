/*ADOBE SYSTEMS INCORPORATED
Copyright 2012 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.Window){
ColdFusion.Window={};
}
ColdFusion.Window.windowIdCounter=1;
ColdFusion.Window.TITLE_BGCOLOR_TEMPLATE="WINDOW_DIV_ID .x-window-tc , WINDOW_DIV_ID .x-window-tl, WINDOW_DIV_ID .x-window-tr, WINDOW_DIV_ID .x-window-bc, WINDOW_DIV_ID .x-window-br, WINDOW_DIV_ID"+" .x-window-bl, WINDOW_DIV_ID  .x-window-ml, WINDOW_DIV_ID .x-window-mr { background-image: none; background-color: COLOR_ID; }";
ColdFusion.Window.create=function(_6d1,_6d2,url,_6d4){
if(_6d1==null){
ColdFusion.handleError(null,"window.create.nullname","widget",null,null,null,true);
return;
}
if(_6d1==""){
ColdFusion.handleError(null,"window.create.emptyname","widget",null,null,null,true);
return;
}
var _6d5=ColdFusion.objectCache[_6d1];
var _6d6=false;
if(typeof (_6d5)!="undefined"&&_6d5!=null){
if(_6d5.callfromtag){
ColdFusion.handleError(null,"window.create.duplicatename","widget",[_6d1]);
}
if(typeof (_6d5.isConfObj)!="undefined"&&_6d5.isConfObj==true){
_6d6=true;
if(_6d4!=null&&typeof (_6d4.initshow)!="undefined"){
if(_6d4.initshow==false){
return;
}
}
}else{
if(!_6d4||(_6d4&&_6d4.initshow!==false)){
ColdFusion.Window.show(_6d1);
}
return;
}
}
if(!_6d5){
ColdFusion.Log.info("window.create.creating","widget",[_6d1]);
}
var _6d7=ColdFusion.Window.createHTML(_6d1,_6d2,url,_6d4,_6d6);
var _6d8=ColdFusion.objectCache[_6d1];
if(_6d8!=null&&typeof (_6d8.isConfObj)!="undefined"&&_6d8.isConfObj==true){
return;
}
return ColdFusion.Window.createJSObj(_6d1,url,_6d7);
};
ColdFusion.Window.createHTML=function(_6d9,_6da,url,_6dc,_6dd){
var _6de=null;
var _6df=null;
if(_6dc&&_6dc.divid){
_6de=document.getElementById(_6dc.divid);
}
if(_6de==null){
_6de=document.createElement("div");
_6df="cf_window"+ColdFusion.Window.windowIdCounter;
ColdFusion.Window.windowIdCounter++;
_6de.id=_6df;
_6de.className="x-hidden";
}
var _6e0=false;
var _6e1=null;
if(_6dc!=null&&typeof (_6dc.headerstyle)!="undefined"&&_6dc.headerstyle!=null){
var _6e2=new String(_6dc.headerstyle);
_6e2=_6e2.toLowerCase();
var _6e3=_6e2.indexOf("background-color");
if(_6e3>=0){
_6e0=true;
var _6e4=_6e2.indexOf(";",_6e3+17);
if(_6e4<0){
_6e4=_6e2.length;
}
_6e1=_6e2.substring(_6e3+17,_6e4);
}
}
var _6e5=document.getElementById(_6d9+"_title-html");
if(_6e0==true&&_6e1){
var _6e6="#"+_6dc.divid;
var _6e7="NAME_ID .x-window-tc , NAME_ID .x-window-tl, NAME_ID .x-window-tr, NAME_ID .x-window-bc, NAME_ID .x-window-br, NAME_ID .x-window-bl,NAME_ID .x-window-ml, NAME_ID .x-window-mr { background-image: none; background-color: COLOR_ID; }";
var _6e8=ColdFusion.Util.replaceAll(ColdFusion.Window.TITLE_BGCOLOR_TEMPLATE,"WINDOW_DIV_ID",_6e6);
var _6e8=ColdFusion.Util.replaceAll(_6e8,"COLOR_ID",_6e1);
Ext.util.CSS.createStyleSheet(_6e8);
}
if(_6e5==null){
_6e5=document.createElement("div");
_6e5.id=_6d9+"_title-html";
var _6e9="x-window-header";
_6e5.className=_6e9;
if(_6da){
_6e5.innerHTML=_6da;
}else{
_6e5.innerHTML="&nbsp;";
}
}
var _6ea=document.getElementById(_6d9+"-body");
if(_6ea==null){
_6ea=document.createElement("div");
_6ea.id=_6d9+"-body";
_6de.appendChild(_6ea);
}
var _6eb;
_6eb=ColdFusion.Window.getUpdatedConfigObj(_6dc,_6d9);
if(_6dc){
_6eb.header={style:_6dc.headerstyle};
}
if(typeof (_6eb)=="undefined"){
_6de.innerHTML="";
return;
}
if(_6df){
_6eb.divid=_6df;
}
_6eb.title=_6da;
if(typeof (_6eb.initshow)!="undefined"&&_6eb.initshow===false){
_6eb.url=url;
ColdFusion.objectCache[_6d9]=_6eb;
ColdFusion.objectCache[_6d9+"-body"]=_6eb;
}
_6eb.items=[{html:_6de.innerHTML}];
return _6eb;
};
ColdFusion.Window.createJSObj=function(_6ec,url,_6ee){
var _6ef;
var _6f0=false;
if(typeof (_6ee.childlayoutid)&&_6ee.childlayoutid!=null){
_6f0=true;
_6ee.layout="border";
_6ee.items=ColdFusion.objectCache[_6ee.childlayoutid];
}else{
var elem=document.getElementById(_6ec+"-body");
if(elem){
elem.parentNode.removeChild(elem);
}
_6ee.layout="fit";
}
if(typeof (_6ee.autoScroll)=="undefined"){
_6ee.autoScroll=true;
}
if(_6ee.onShow){
_6ee._cf_onShow=_6ee.onShow;
_6ee.onShow=null;
}
if(_6ee.onHide){
_6ee._cf_onHide=_6ee.onHide;
_6ee.onHide=null;
}
_6ef=new Ext.Window(_6ee);
_6ef.show();
_6ef.hide();
_6ef.cfwindowname=_6ec;
_6ef.tempx=_6ee.tempx;
_6ef.tempy=_6ee.tempy;
_6ef.divid=_6ee.divid;
if(typeof (_6ee.headerstyle)!="undefined"&&_6ee.headerstyle!=null){
var _6f2=document.getElementById(_6ec+"_title");
_6f2=_6f2||document.getElementById(_6ef.id+"_header_hd-textEl");
if(_6f2!=null){
_6f2.style.cssText="background:none;"+_6ee.headerstyle;
}
}
if(typeof (_6ee.bodystyle)!="undefined"&&_6ee.bodystyle!=null){
var _6f3=document.getElementById(_6ec+"-body");
if(_6f3){
var _6f4=_6f3.parentNode;
}
if(_6f4!=null){
_6f4.style.cssText=_6ee.bodystyle;
}
}
_6ef.isConfObj=false;
_6ef._cf_body=_6ec+"-body";
ColdFusion.objectCache[_6ec]=_6ef;
if(_6f0){
var _6f5=_6ef.getLayout();
var _6f6=ColdFusion.objectCache[_6ee.childlayoutid];
}
_6ef.addListener("beforeclose",ColdFusion.Window.beforeCloseHandler);
var _6f7=null;
if(typeof (url)!="undefined"&&url!=""){
_6f7=url;
}
if(_6f7==null){
if(typeof (_6ee.initshow)=="undefined"||_6ee.initshow==true){
_6ef.addListener("beforeshow",ColdFusion.Window.beforeShowHandler);
ColdFusion.Window.showandhide(_6ef,_6ee);
}
return;
}
ColdFusion.objectCache[_6ec+"-body"]=_6ef;
if(typeof (_6ee.callfromtag)=="undefined"){
var _6f8;
var _6f9;
_6ef._cf_visible=false;
_6ef._cf_dirtyview=true;
_6ef.addListener("show",ColdFusion.Window.showHandler);
_6ef.addListener("hide",ColdFusion.Window.hideHandler);
_6ef.url=_6f7;
if(_6ee){
if(typeof (_6ee.initshow)=="undefined"||_6ee.initshow==true){
ColdFusion.Window.showandhide(_6ef,_6ee);
}
_6f8=_6ee.callbackHandler;
_6f9=_6ee.errorHandler;
}
}else{
_6ef.callfromtag=true;
_6ef._cf_visible=false;
_6ef._cf_dirtyview=true;
_6ef.addListener("show",ColdFusion.Window.showHandler);
_6ef.addListener("beforeshow",ColdFusion.Window.beforeShowHandler);
_6ef.addListener("hide",ColdFusion.Window.hideHandler);
if(typeof (_6ee.initshow)=="undefined"||_6ee.initshow==true){
ColdFusion.Window.showandhide(_6ef,_6ee);
}
}
};
ColdFusion.Window.showandhide=function(_6fa,_6fb){
if(typeof (_6fb.tempinitshow)!="undefined"&&_6fb.tempinitshow==false){
var _6fc=Ext.Element.get(_6fa.divid);
if(typeof _6fc!="undefined"){
_6fc.show();
}
_6fc.hide();
}else{
_6fa.show();
}
};
ColdFusion.Window.destroy=function(_6fd,_6fe){
if(_6fd){
var _6ff=ColdFusion.Window.getWindowObject(_6fd);
if(_6ff){
if(_6fe===true){
_6ff.destroy(true);
}else{
_6ff.destroy();
}
ColdFusion.objectCache[_6fd]=null;
}
}
};
ColdFusion.Window.resizeHandler=function(_700,_701,_702){
if(typeof (_700.fixedcenter)!="undefined"&&_700.fixedcenter==true){
_700.center();
}
};
ColdFusion.Window.beforeShowHandler=function(_703){
if(typeof (_703.fixedcenter)!="undefined"&&_703.fixedcenter==true){
_703.center();
}
};
ColdFusion.Window.beforeCloseHandler=function(_704){
if(_704.destroyonclose!="undefined"&&_704.destroyonclose==true){
ColdFusion.objectCache[_704.cfwindowname]=null;
return true;
}else{
_704.hide();
return false;
}
};
ColdFusion.Window.showHandler=function(_705){
_705._cf_visible=true;
if(_705._cf_dirtyview){
if(typeof (_705.callfromtag)=="undefined"){
ColdFusion.Ajax.replaceHTML(_705._cf_body,_705.url,"GET",null,_705.callbackHandler,_705.errorHandler);
}else{
var _706=ColdFusion.bindHandlerCache[_705._cf_body];
if(_706){
_706();
}
}
_705._cf_dirtyview=false;
}
};
ColdFusion.Window.hideHandler=function(_707){
_707._cf_visible=false;
if(_707._cf_refreshOnShow){
_707._cf_dirtyview=true;
}
};
ColdFusion.Window.xPosition=50;
ColdFusion.Window.yPosition=50;
ColdFusion.Window.resetHTML=function(_708){
var _709=document.getElementById(_708);
if(_709){
_709.innerHTML="";
}
};
ColdFusion.Window.getUpdatedConfigObj=function(_70a,_70b){
var _70c={};
if(_70a!=null){
if(typeof (_70a)!="object"){
ColdFusion.Window.resetHTML(_70b);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidconfig","widget",[_70b],null,null,true);
return;
}
for(var key in _70a){
if(key=="center"&&ColdFusion.Util.isBoolean(_70a["center"])){
_70c["fixedcenter"]=_70a["center"];
}else{
_70c[key]=_70a[key];
}
}
}
if(typeof (_70c.initshow)!="undefined"){
if(ColdFusion.Util.isBoolean(_70c.initshow)==false){
ColdFusion.Window.resetHTML(_70b);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidinitshow","widget",[_70b],null,null,true);
return;
}else{
_70c.initshow=ColdFusion.Util.castBoolean(_70c.initshow);
_70c._cf_visible=_70c.initshow;
}
}
_70c.tempcenter=null;
if(typeof (_70c.fixedcenter)!="undefined"){
if(ColdFusion.Util.isBoolean(_70c.fixedcenter)==false){
ColdFusion.Window.resetHTML(_70b);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidcenter","widget",[_70b],null,null,true);
return;
}else{
_70c.fixedcenter=ColdFusion.Util.castBoolean(_70c.fixedcenter);
}
}
if(typeof (_70c.resizable)!="undefined"){
if(ColdFusion.Util.isBoolean(_70c.resizable)==false){
ColdFusion.Window.resetHTML(_70b);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidresizable","widget",[_70b],null,null,true);
return;
}else{
_70c.resizable=ColdFusion.Util.castBoolean(_70c.resizable);
}
}
if(typeof (_70c.draggable)!="undefined"){
if(ColdFusion.Util.isBoolean(_70c.draggable)==false){
ColdFusion.Window.resetHTML(_70b);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invaliddraggable","widget",[_70b],null,null,true);
return;
}else{
_70c.draggable=ColdFusion.Util.castBoolean(_70c.draggable);
}
}
if(typeof (_70c.closable)!="undefined"){
if(ColdFusion.Util.isBoolean(_70c.closable)==false){
ColdFusion.Window.resetHTML(_70b);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidclosable","widget",[_70b],null,null,true);
return;
}else{
_70c.closable=ColdFusion.Util.castBoolean(_70c.closable);
}
}
if(typeof (_70c.modal)!="undefined"){
if(ColdFusion.Util.isBoolean(_70c.modal)==false){
ColdFusion.Window.resetHTML(_70b);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidmodal","widget",[_70b],null,null,true);
return;
}else{
_70c.modal=ColdFusion.Util.castBoolean(_70c.modal);
}
}
if(typeof (_70c.refreshonshow)!="undefined"){
if(ColdFusion.Util.isBoolean(_70c.refreshonshow)==false){
ColdFusion.Window.resetHTML(_70b);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidrefreshonshow","widget",[_70b],null,null,true);
return;
}else{
_70c._cf_refreshOnShow=ColdFusion.Util.castBoolean(_70c.refreshonshow);
}
}
_70c.shadow=true;
if(!_70c.height){
_70c.height=300;
}else{
if(ColdFusion.Util.isInteger(_70c.height)==false){
ColdFusion.Window.resetHTML(_70b);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidheight","widget",[_70b],null,null,true);
return;
}
}
if(!_70c.width){
_70c.width=500;
}else{
if(ColdFusion.Util.isInteger(_70c.width)==false){
ColdFusion.Window.resetHTML(_70b);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidwidth","widget",[_70b],null,null,true);
return;
}
}
var _70e=false;
if(_70c.minwidth){
if(ColdFusion.Util.isInteger(_70c.minwidth)==false){
ColdFusion.Window.resetHTML(_70b);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidminwidth","widget",[_70b],null,null,true);
return;
}
var _70f=_70c.minwidth;
var _710=_70c.width;
if(typeof (_70f)!="number"){
_70f=parseInt(_70f);
}
if(typeof (_710)!="number"){
_710=parseInt(_710);
}
if(_70f>_710){
ColdFusion.Window.resetHTML(_70b);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidminwidth","widget",[_70b],null,null,true);
return;
}
_70c.minWidth=_70c.minwidth;
_70e=true;
}
if(_70c.minheight){
if(ColdFusion.Util.isInteger(_70c.minheight)==false){
ColdFusion.Window.resetHTML(_70b);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidminheight","widget",[_70b],null,null,true);
return;
}
var _711=_70c.minheight;
var _712=_70c.height;
if(typeof (_711)!="number"){
_711=parseInt(_711);
}
if(typeof (_712)!="number"){
_712=parseInt(_712);
}
if(_711>_712){
ColdFusion.Window.resetHTML(_70b);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidheightvalue","widget",[_70b],null,null,true);
return;
}
_70c.minHeight=_70c.minheight;
_70e=true;
}
if(_70c.x){
if(ColdFusion.Util.isInteger(_70c.x)==false){
ColdFusion.Window.resetHTML(_70b);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidx","widget",[_70b],null,null,true);
return;
}
}
if(_70c.y){
if(ColdFusion.Util.isInteger(_70c.y)==false){
ColdFusion.Window.resetHTML(_70b);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidy","widget",[_70b],null,null,true);
return;
}
}
if(typeof (_70c.x)=="undefined"&&(typeof (_70c.fixedcenter)=="undefined"||_70c.fixedcenter==false)){
_70c.x=ColdFusion.Window.xPosition;
ColdFusion.Window.xPosition+=15;
}
if(typeof (_70c.y)=="undefined"&&(typeof (_70c.fixedcenter)=="undefined"||_70c.fixedcenter==false)){
_70c.y=ColdFusion.Window.yPosition;
ColdFusion.Window.yPosition+=15;
}
if(typeof (_70c.initshow)!="undefined"&&_70c.initshow===false){
_70c.tempinitshow=false;
if(typeof (_70c.fixedcenter)!="undefined"&&_70c.fixedcenter===true){
_70c.tempcenter=_70c.fixedcenter;
_70c.fixedcenter=null;
}else{
_70c.tempx=_70c.x;
_70c.tempy=_70c.y;
}
_70c.x=-10000;
_70c.y=-10000;
}
_70c.constraintoviewport=true;
_70c.initshow=true;
if(_70c.resizable!=null&&_70c.resizable==false&&_70e==true){
ColdFusion.Window.resetHTML(_70b);
ColdFusion.handleError(null,"window.getupdatedconfigobject.minhwnotallowed","widget",[_70b],null,null,true);
return;
}
_70c.collapsible=false;
_70c.shadow=true;
_70c.isConfObj=true;
return _70c;
};
ColdFusion.Window.show=function(_713){
var _714=ColdFusion.objectCache[_713];
if(typeof (_714)!="undefined"&&_714!=null){
if(typeof (_714.isConfObj)!="undefined"&&_714.isConfObj==true){
_714.initshow=true;
var _715=ColdFusion.Window.createHTML(_713,null,_714.url,_714,true);
ColdFusion.Window.createJSObj(_713,_714.url,_715);
}else{
if(_714.isVisible()==false){
_714.show();
ColdFusion.Log.info("window.show.shown","widget",[_713]);
}
if(_714.tempcenter!=null){
_714.center();
_714.tempcenter=null;
}else{
if(_714.getEl()&&_714.getEl().getX()>0&&_714.getEl().getY()>0){
_714.tempx=null;
_714.tempy=null;
}else{
if(_714.tempx!=null&&_714.tempy!=null){
_714.setPosition(_714.tempx,_714.tempy);
_714.tempx=null;
_714.tempy=null;
}else{
var x=_714.getEl().getX();
var y=_714.getEl().getY();
_714.setPosition(x+1,y+1);
_714.setPosition(x,y);
}
}
}
}
}else{
ColdFusion.handleError(null,"window.show.notfound","widget",[_713],null,null,true);
}
};
ColdFusion.Window.hide=function(_718){
var _719=ColdFusion.objectCache[_718];
if(_719){
if(_719.isVisible&&_719.isVisible()==true){
_719.hide();
ColdFusion.Log.info("window.hide.hidden","widget",[_718]);
}
}else{
ColdFusion.handleError(null,"window.hide.notfound","widget",[_718],null,null,true);
}
};
ColdFusion.Window.onShow=function(_71a,_71b){
var _71c=ColdFusion.objectCache[_71a];
if(typeof (_71c)!="undefined"&&_71c!=null){
_71c._cf_onShow=_71b;
if(_71c.addListener){
_71c.addListener("show",ColdFusion.Window.onShowWrapper);
}
}else{
ColdFusion.handleError(null,"window.onshow.notfound","widget",[_71a],null,null,true);
}
};
ColdFusion.Window.onShowWrapper=function(_71d){
_71d._cf_onShow.call(null,_71d.cfwindowname);
};
ColdFusion.Window.onHide=function(_71e,_71f){
var _720=ColdFusion.objectCache[_71e];
if(typeof (_720)!="undefined"&&_720!=null){
_720._cf_onHide=_71f;
if(_720.addListener){
_720.addListener("hide",ColdFusion.Window.onHideWrapper);
}
}else{
ColdFusion.handleError(null,"window.onhide.notfound","widget",[_71e],null,null,true);
}
};
ColdFusion.Window.onHideWrapper=function(_721){
_721._cf_onHide.call(null,_721.cfwindowname);
};
ColdFusion.Window.getWindowObject=function(_722){
if(!_722){
ColdFusion.handleError(null,"window.getwindowobject.emptyname","widget",null,null,null,true);
return;
}
var _723=ColdFusion.objectCache[_722];
if(_723==null||(typeof (_723.isConfObj)=="undefined"&&Ext.Window.prototype.isPrototypeOf(_723)==false)){
ColdFusion.handleError(null,"window.getwindowobject.notfound","widget",[_722],null,null,true);
return;
}
if(typeof (_723.isConfObj)!="undefined"&&_723.isConfObj==true){
_723.initshow=true;
var _724=ColdFusion.Window.createHTML(_722,null,_723.url,_723,true);
ColdFusion.Window.createJSObj(_722,_723.url,_724);
ColdFusion.Window.hide(_722);
_723=ColdFusion.objectCache[_722];
}
return _723;
};
