/*ADOBE SYSTEMS INCORPORATED
Copyright 2012 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.ProgressBar){
ColdFusion.ProgressBar={};
}
var $P=ColdFusion.ProgressBar;
ColdFusion.ProgressBar.create=function(_69a,_69b,_69c,_69d,_69e,_69f,_6a0,_6a1,_6a2,_6a3){
var _6a4={renderTo:_69a,interval:_69d,onComplete:_6a1,autodisplay:_6a0,onError:_6a3};
var _6a5={renderTo:_69a};
if(_69f!=null&&typeof (_69f)!=undefined){
_6a4.width=_69f;
_6a5.width=_69f;
}else{
_6a5.width=400;
}
if(_69e!=null&&typeof (_69e)!=undefined){
_6a4.height=_69e;
_6a5.height=_69e;
}else{
_6a4.autoHeight=true;
_6a5.autoHeight=true;
}
if(_69b!=null){
_6a4.manual=true;
_6a4.status_retrieval_fn=_69b;
}else{
_6a4.manual=false;
_6a4.duration=_69c;
}
_6a4.hidden=!_6a0;
_6a5.hidden=_6a4.hidden;
if(_6a2!=null&&typeof _6a2!="undefined"){
_6a4.cls=_6a2;
_6a5.cls=_6a2;
}
var _6a6=new Ext.ProgressBar(_6a5);
_6a4.progressBarComp=_6a6;
ColdFusion.objectCache[_69a]=_6a4;
ColdFusion.Log.info("progressbar.create.created","widget",[_69a]);
};
$P.start=function(_6a7){
var _6a8=$P.getProgressBarObject(_6a7);
var _6a9=ColdFusion.objectCache[_6a7];
if(!_6a8.isVisible()){
_6a8=_6a8.show();
}
_6a9.started=true;
if(_6a9.manual==false){
var _6aa=_6a9.interval;
var _6ab=_6a9.duration;
var _6ac=_6ab/_6aa;
_6a8.wait({interval:_6aa,duration:_6ab,increment:_6ac,fn:$P.automaticPBCompleteHandler,scope:_6a9});
}else{
var _6ad=setInterval(_6a9.status_retrieval_fn,_6a9.interval);
_6a9.processId=_6ad;
}
ColdFusion.Log.info("progressbar.start.started","widget",[_6a7]);
};
$P.stop=function(_6ae,_6af){
var pBar=$P.getProgressBarObject(_6ae);
var _6b1=ColdFusion.objectCache[_6ae];
var _6b2=_6b1.processId;
if(typeof _6b1.started!="undefined"&&_6b1.started==true){
_6b1.started=false;
}else{
ColdFusion.Log.info("progressbar.stop.nonrunning","widget",[_6ae]);
return;
}
if(_6b2!=null&&typeof (_6b2)!="undefined"){
clearInterval(_6b2);
}
if(typeof _6b1.manual!="undefined"&&_6b1.manual==false){
pBar.reset();
}
if(_6af&&_6af==true){
var _6b3=_6b1.onComplete;
if(_6b3!=null&&_6b3.call){
_6b3.call();
}
}
ColdFusion.Log.info("progressbar.stop.stopped","widget",[_6ae]);
};
$P.hide=function(_6b4){
var pBar=$P.getProgressBarObject(_6b4);
if(pBar.isVisible()){
pBar.hide();
}
ColdFusion.Log.info("progressbar.hide.hidden","widget",[_6b4]);
};
$P.show=function(_6b6){
var pBar=$P.getProgressBarObject(_6b6);
if(!pBar.isVisible()){
pBar.show();
}
ColdFusion.Log.info("progressbar.show.shown","widget",[_6b6]);
};
$P.reset=function(_6b8){
var pBar=$P.getProgressBarObject(_6b8);
if(typeof pBar!="undefined"){
pBar.reset();
}
ColdFusion.Log.info("progressbar.reset.reset","widget",[_6b8]);
};
$P.updateStatus=function(_6ba,_6bb,_6bc){
var pBar=$P.getProgressBarObject(_6ba);
if(typeof (_6bb)=="undefined"||typeof (_6bb)!="number"){
ColdFusion.handleError(null,"progressbar.updatestatus.invalidstatus","widget",[_6ba,_6bb],null,null,true);
return;
}
if(typeof pBar!="undefined"){
pBar.updateProgress(_6bb,_6bc);
}
ColdFusion.Log.info("progressbar.updatestatus.updated","widget",[_6ba]);
};
$P.update=function(_6be,_6bf){
var _6c0={};
var _6c1=ColdFusion.objectCache[_6be];
if(_6c1==null||typeof (_6c1)=="undefined"){
ColdFusion.handleError(null,"progressbar.update.notfound","widget",[_6be],null,null,true);
return;
}
if(_6bf.duration){
if(typeof _6bf.duration==="number"||typeof _6bf.duration=="object"){
_6c0.duration=_6bf.duration;
}else{
ColdFusion.handleError(null,"progressbar.update.invalidduration","widget",[_6be],null,null,true);
return;
}
}
if(_6bf.interval){
if(typeof _6bf.interval==="number"||typeof _6bf.interval=="object"){
_6c0.interval=_6bf.interval;
}else{
ColdFusion.handleError(null,"progressbar.update.invalidinterval","widget",[_6be],null,null,true);
return;
}
}
if(_6bf.oncomplete){
if(typeof _6bf.oncomplete==="function"||typeof _6bf.oncomplete=="object"){
_6c0.onComplete=_6bf.oncomplete;
}else{
ColdFusion.handleError(null,"progressbar.update.invalidoncomplete","widget",[_6be],null,null,true);
return;
}
}
for(key in _6c0){
_6c1[key]=_6c0[key];
}
ColdFusion.Log.info("progressbar.update.updated","widget",[_6be]);
};
$P.loadStatus=function(data,_6c3){
var _6c4=ColdFusion.AjaxProxy.JSON.decode(data);
var _6c5=_6c4.MESSAGE;
var _6c6=_6c4.STATUS;
var pBar=$P.getProgressBarObject(_6c3._cf_progressbarid);
pBar.updateProgress(_6c6,_6c5);
if(_6c6&&(_6c6===1||_6c6==1||_6c6>1)){
$P.stop(_6c3._cf_progressbarid,true);
}
};
$P.automaticPBCompleteHandler=function(){
var _6c8=this.progressBarComp;
_6c8.updateProgress(1);
if(this.onComplete&&typeof this.onComplete=="function"){
this.onComplete.call(_6c8,_6c8);
}
};
$P.errorHandler=function(_6c9,_6ca,_6cb){
var pbId=_6cb.bindToParams._cf_progressbarid;
var _6cd=ColdFusion.objectCache[pbId];
var _6ce=_6cd.onError;
if(_6ce!=null&&typeof _6ce==="function"){
_6ce.call(null,_6c9,_6ca);
}
$P.stop(pbId);
};
$P.getProgressBarObject=function(_6cf){
var _6d0=ColdFusion.objectCache[_6cf];
if(_6d0==null||typeof (_6d0)=="undefined"){
ColdFusion.handleError(null,"progressbar.getProgressBarObject.missingprogressbarid","widget",[_6cf],null,null,true);
return;
}
if(_6d0.progressBarComp&&typeof _6d0.progressBarComp!="undefined"){
return _6d0.progressBarComp;
}else{
ColdFusion.handleError(null,"progressbar.getProgressBarObject.missingprogressbarcomponent","widget",[_6cf],null,null,true);
return;
}
};
