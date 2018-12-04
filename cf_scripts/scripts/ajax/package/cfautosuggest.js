/*ADOBE SYSTEMS INCORPORATED
Copyright 2012 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.Autosuggest){
ColdFusion.Autosuggest={};
}
var staticgifpath=_cf_ajaxscriptsrc+"/resources/cf/images/static.gif";
var dynamicgifpath=_cf_ajaxscriptsrc+"/resources/cf/images/loading.gif";
ColdFusion.Autosuggest.loadAutoSuggest=function(_29b,_29c){
var _29d=ColdFusion.objectCache[_29c.autosuggestid];
if(typeof (_29b)=="string"){
_29b=_29b.split(",");
}else{
var _29e=false;
if(_29b&&ColdFusion.Util.isArray(_29b)){
_29e=true;
if(_29b.length>0&&(typeof (_29b[0])!="string"&&typeof (_29b[0])!="number")){
_29e=false;
}
}
if(!_29e){
ColdFusion.handleError(_29d.onbinderror,"autosuggest.loadautosuggest.invalidvalue","widget",[_29c.autosuggestid]);
return;
}
}
var _29f=document.getElementById(_29c.autosuggestid).value;
if(_29f.length==1&&_29b.length==0){
var _2a0=new Array();
_29d.dataSource.flushCache();
_29d.dataSource=new YAHOO.widget.DS_JSArray(_2a0);
_29d.autosuggestitems=_2a0;
}
if(_29b.length>0){
var i=0;
var _2a2=false;
var _2a0=new Array();
for(i=0;i<_29b.length;i++){
if(_29b[i]){
if(typeof (_29b[i])=="string"){
_2a0[i]=_29b[i];
}else{
if(typeof (_29b[i])=="number"){
_2a0[i]=_29b[i]+"";
}else{
_2a0[i]=new String(_29b[i]);
}
}
if(_2a0[i].indexOf(_29f)==0){
_2a2=true;
}
}
}
if(_2a2==false&&_29d.showloadingicon==true){
document.getElementById(_29c.autosuggestid+"_cf_button").src=staticgifpath;
}
_29d.dataSource.flushCache();
_29d.dataSource=new YAHOO.widget.DS_JSArray(_2a0);
_29d.autosuggestitems=_2a0;
if(_29d.queryMatchContains){
_29d.dataSource.queryMatchContains=_29d.queryMatchContains;
}
_29d._sendQuery(_29f);
}else{
if(_29d.showloadingicon==true){
document.getElementById(_29c.autosuggestid+"_cf_button").src=staticgifpath;
_29d.showloadingicon==false;
}
}
};
ColdFusion.Autosuggest.checkToMakeBindCall=function(arg,_2a4,_2a5,_2a6,_2a7){
var _2a6=document.getElementById(_2a4).value;
if(!_2a5.isContainerOpen()&&_2a6.length>0&&arg.keyCode!=39&&(arg.keyCode>31||(arg.keyCode==8&&_2a5.valuePresent==true))){
_2a5.valuePresent=false;
if(_2a5.showloadingicon==true){
document.getElementById(_2a4+"_cf_button").src=dynamicgifpath;
}
ColdFusion.Log.info("autosuggest.checktomakebindcall.fetching","widget",[_2a4,_2a6]);
if(_2a5.cfqueryDelay>0){
var _2a8=setTimeout(_2a7,_2a5.cfqueryDelay*1000,this);
if(_2a5._nDelayID!=-1){
clearTimeout(_2a5._cf_nDelayID);
}
_2a5._cf_nDelayID=_2a8;
}else{
_2a7.call(this);
}
}
};
ColdFusion.Autosuggest.checkValueNotInAutosuggest=function(_2a9,_2aa){
if(_2a9.autosuggestitems){
for(var i=0;i<_2a9.autosuggestitems.length;i++){
if(_2aa==_2a9.autosuggestitems[i]){
return false;
}
}
}
return true;
};
ColdFusion.Autosuggest.triggerOnChange=function(type,args){
var _2ae=args[0];
var _2af=document.getElementById(_2ae.id);
ColdFusion.Event.callBindHandlers(_2ae.id,null,"change");
};
ColdFusion.Autosuggest.init=function(_2b0,_2b1,_2b2){
return new YAHOO.widget.AutoComplete(_2b0,_2b1,_2b2);
};
ColdFusion.Autosuggest.getAutosuggestObject=function(_2b3){
var _2b4=ColdFusion.objectCache[_2b3];
if(_2b4==null||typeof (_2b4)=="undefined"){
ColdFusion.handleError(null,"autosuggest.getAutosuggestObject.notfound","widget",[_2b3],null,null,true);
}
return _2b4;
};
ColdFusion.Autosuggest.initJS_ARRAY=function(_2b5){
return new YAHOO.widget.DS_JSArray(_2b5);
};
