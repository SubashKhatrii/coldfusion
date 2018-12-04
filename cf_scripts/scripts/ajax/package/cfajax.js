/*ADOBE SYSTEMS INCORPORATED
Copyright 2012 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
function cfinit(){
if(!window.ColdFusion){
ColdFusion={};
var $C=ColdFusion;
if(!$C.Ajax){
$C.Ajax={};
}
var $A=$C.Ajax;
if(!$C.AjaxProxy){
$C.AjaxProxy={};
}
var $X=$C.AjaxProxy;
if(!$C.Bind){
$C.Bind={};
}
var $B=$C.Bind;
if(!$C.Event){
$C.Event={};
}
var $E=$C.Event;
if(!$C.Log){
$C.Log={};
}
var $L=$C.Log;
if(!$C.Util){
$C.Util={};
}
var $U=$C.Util;
if(!$C.DOM){
$C.DOM={};
}
var $D=$C.DOM;
if(!$C.Spry){
$C.Spry={};
}
var $S=$C.Spry;
if(!$C.Pod){
$C.Pod={};
}
var $P=$C.Pod;
if(!$C.objectCache){
$C.objectCache={};
}
if(!$C.required){
$C.required={};
}
if(!$C.importedTags){
$C.importedTags=[];
}
if(!$C.requestCounter){
$C.requestCounter=0;
}
if(!$C.bindHandlerCache){
$C.bindHandlerCache={};
}
window._cf_loadingtexthtml="<div style=\"text-align: center;\">"+window._cf_loadingtexthtml+"&nbsp;"+CFMessage["loading"]+"</div>";
$C.globalErrorHandler=function(_2ff,_300){
if($L.isAvailable){
$L.error(_2ff,_300);
}
if($C.userGlobalErrorHandler){
$C.userGlobalErrorHandler(_2ff);
}
if(!$L.isAvailable&&!$C.userGlobalErrorHandler){
alert(_2ff+CFMessage["globalErrorHandler.alert"]);
}
};
$C.handleError=function(_301,_302,_303,_304,_305,_306,_307,_308){
var msg=$L.format(_302,_304);
if(_301){
$L.error(msg,"http");
if(!_305){
_305=-1;
}
if(!_306){
_306=msg;
}
_301(_305,_306,_308);
}else{
if(_307){
$L.error(msg,"http");
throw msg;
}else{
$C.globalErrorHandler(msg,_303);
}
}
};
$C.setGlobalErrorHandler=function(_30a){
$C.userGlobalErrorHandler=_30a;
};
$A.createXMLHttpRequest=function(){
try{
return new XMLHttpRequest();
}
catch(e){
}
var _30b=["Microsoft.XMLHTTP","MSXML2.XMLHTTP.5.0","MSXML2.XMLHTTP.4.0","MSXML2.XMLHTTP.3.0","MSXML2.XMLHTTP"];
for(var i=0;i<_30b.length;i++){
try{
return new ActiveXObject(_30b[i]);
}
catch(e){
}
}
return false;
};
$A.isRequestError=function(req){
return ((req.status!=0&&req.status!=200)||req.getResponseHeader("server-error"));
};
$A.sendMessage=function(url,_30f,_310,_311,_312,_313,_314){
var req=$A.createXMLHttpRequest();
if(!_30f){
_30f="GET";
}
if(_311&&_312){
req.onreadystatechange=function(){
$A.callback(req,_312,_313);
};
}
if(_310){
_310+="&_cf_nodebug=true&_cf_nocache=true";
}else{
_310="_cf_nodebug=true&_cf_nocache=true";
}
if(window._cf_clientid){
_310+="&_cf_clientid="+_cf_clientid;
}
if(_30f=="GET"){
if(_310){
_310+="&_cf_rc="+($C.requestCounter++);
if(url.indexOf("?")==-1){
url+="?"+_310;
}else{
url+="&"+_310;
}
}
$L.info("ajax.sendmessage.get","http",[url]);
req.open(_30f,url,_311);
req.send(null);
}else{
$L.info("ajax.sendmessage.post","http",[url,_310]);
req.open(_30f,url,_311);
req.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
if(_310){
req.send(_310);
}else{
req.send(null);
}
}
if(!_311){
while(req.readyState!=4){
}
if($A.isRequestError(req)){
$C.handleError(null,"ajax.sendmessage.error","http",[req.status,req.statusText],req.status,req.statusText,_314);
}else{
return req;
}
}
};
$A.callback=function(req,_317,_318){
if(req.readyState!=4){
return;
}
req.onreadystatechange=new Function;
_317(req,_318);
};
$A.submitForm=function(_319,url,_31b,_31c,_31d,_31e){
var _31f=$C.getFormQueryString(_319);
if(_31f==-1){
$C.handleError(_31c,"ajax.submitform.formnotfound","http",[_319],-1,null,true);
return;
}
if(!_31d){
_31d="POST";
}
_31e=!(_31e===false);
var _320=function(req){
$A.submitForm.callback(req,_319,_31b,_31c);
};
$L.info("ajax.submitform.submitting","http",[_319]);
var _322=$A.sendMessage(url,_31d,_31f,_31e,_320);
if(!_31e){
$L.info("ajax.submitform.success","http",[_319]);
return _322.responseText;
}
};
$A.submitForm.callback=function(req,_324,_325,_326){
if($A.isRequestError(req)){
$C.handleError(_326,"ajax.submitform.error","http",[req.status,_324,req.statusText],req.status,req.statusText);
}else{
$L.info("ajax.submitform.success","http",[_324]);
if(_325){
_325(req.responseText);
}
}
};
$C.empty=function(){
};
$C.setSubmitClicked=function(_327,_328){
var el=$D.getElement(_328,_327);
el.cfinputbutton=true;
$C.setClickedProperty=function(){
el.clicked=true;
};
$E.addListener(el,"click",$C.setClickedProperty);
};
$C.getFormQueryString=function(_32a,_32b){
var _32c;
if(typeof _32a=="string"){
_32c=(document.getElementById(_32a)||document.forms[_32a]);
}else{
if(typeof _32a=="object"){
_32c=_32a;
}
}
if(!_32c||null==_32c.elements){
return -1;
}
var _32d,elementName,elementValue,elementDisabled;
var _32e=false;
var _32f=(_32b)?{}:"";
for(var i=0;i<_32c.elements.length;i++){
_32d=_32c.elements[i];
elementDisabled=_32d.disabled;
elementName=_32d.name;
elementValue=_32d.value;
if(!elementDisabled&&elementName){
switch(_32d.type){
case "select-one":
case "select-multiple":
for(var j=0;j<_32d.options.length;j++){
if(_32d.options[j].selected){
if(window.ActiveXObject){
_32f=$C.getFormQueryString.processFormData(_32f,_32b,elementName,_32d.options[j].attributes["value"].specified?_32d.options[j].value:_32d.options[j].text);
}else{
_32f=$C.getFormQueryString.processFormData(_32f,_32b,elementName,_32d.options[j].hasAttribute("value")?_32d.options[j].value:_32d.options[j].text);
}
}
}
break;
case "radio":
case "checkbox":
if(_32d.checked){
_32f=$C.getFormQueryString.processFormData(_32f,_32b,elementName,elementValue);
}
break;
case "file":
case undefined:
case "reset":
break;
case "button":
_32f=$C.getFormQueryString.processFormData(_32f,_32b,elementName,elementValue);
break;
case "submit":
if(_32d.cfinputbutton){
if(_32e==false&&_32d.clicked){
_32f=$C.getFormQueryString.processFormData(_32f,_32b,elementName,elementValue);
_32e=true;
}
}else{
_32f=$C.getFormQueryString.processFormData(_32f,_32b,elementName,elementValue);
}
break;
case "textarea":
var _332;
if(window.FCKeditorAPI&&(_332=$C.objectCache[elementName])&&_332.richtextid){
var _333=FCKeditorAPI.GetInstance(_332.richtextid);
if(_333){
elementValue=_333.GetXHTML();
}
}
_32f=$C.getFormQueryString.processFormData(_32f,_32b,elementName,elementValue);
break;
default:
_32f=$C.getFormQueryString.processFormData(_32f,_32b,elementName,elementValue);
break;
}
}
}
if(!_32b){
_32f=_32f.substr(0,_32f.length-1);
}
return _32f;
};
$C.getFormQueryString.processFormData=function(_334,_335,_336,_337){
if(_335){
if(_334[_336]){
_334[_336]+=","+_337;
}else{
_334[_336]=_337;
}
}else{
_334+=encodeURIComponent(_336)+"="+encodeURIComponent(_337)+"&";
}
return _334;
};
$A.importTag=function(_338){
$C.importedTags.push(_338);
};
$A.checkImportedTag=function(_339){
var _33a=false;
for(var i=0;i<$C.importedTags.length;i++){
if($C.importedTags[i]==_339){
_33a=true;
break;
}
}
if(!_33a){
$C.handleError(null,"ajax.checkimportedtag.error","widget",[_339]);
}
};
$C.getElementValue=function(_33c,_33d,_33e){
if(!_33c){
$C.handleError(null,"getelementvalue.noelementname","bind",null,null,null,true);
return;
}
if(!_33e){
_33e="value";
}
var _33f=$B.getBindElementValue(_33c,_33d,_33e);
if(typeof (_33f)=="undefined"){
_33f=null;
}
if(_33f==null){
$C.handleError(null,"getelementvalue.elnotfound","bind",[_33c,_33e],null,null,true);
return;
}
return _33f;
};
$B.getBindElementValue=function(_340,_341,_342,_343,_344){
var _345="";
if(window[_340]){
var _346=eval(_340);
if(_346&&_346._cf_getAttribute){
_345=_346._cf_getAttribute(_342);
return _345;
}
}
var _347=$C.objectCache[_340];
if(_347&&_347._cf_getAttribute){
_345=_347._cf_getAttribute(_342);
return _345;
}
var el=$D.getElement(_340,_341);
var _349=(el&&((!el.length&&el.length!=0)||(el.length&&el.length>0)||el.tagName=="SELECT"));
if(!_349&&!_344){
$C.handleError(null,"bind.getbindelementvalue.elnotfound","bind",[_340]);
return null;
}
if(el.tagName!="SELECT"){
if(el.length>1){
var _34a=true;
for(var i=0;i<el.length;i++){
var _34c=(el[i].getAttribute("type")=="radio"||el[i].getAttribute("type")=="checkbox");
if(!_34c||(_34c&&el[i].checked)){
if(!_34a){
_345+=",";
}
_345+=$B.getBindElementValue.extract(el[i],_342);
_34a=false;
}
}
}else{
_345=$B.getBindElementValue.extract(el,_342);
}
}else{
var _34a=true;
for(var i=0;i<el.options.length;i++){
if(el.options[i].selected){
if(!_34a){
_345+=",";
}
_345+=$B.getBindElementValue.extract(el.options[i],_342);
_34a=false;
}
}
}
if(typeof (_345)=="object"){
$C.handleError(null,"bind.getbindelementvalue.simplevalrequired","bind",[_340,_342]);
return null;
}
if(_343&&$C.required[_340]&&_345.length==0){
return null;
}
return _345;
};
$B.getBindElementValue.extract=function(el,_34e){
var _34f=el[_34e];
if((_34f==null||typeof (_34f)=="undefined")&&el.getAttribute){
_34f=el.getAttribute(_34e);
}
return _34f;
};
$L.init=function(){
if(window.YAHOO&&YAHOO.widget&&YAHOO.widget.Logger){
YAHOO.widget.Logger.categories=[CFMessage["debug"],CFMessage["info"],CFMessage["error"],CFMessage["window"]];
YAHOO.widget.LogReader.prototype.formatMsg=function(_350){
var _351=_350.category;
return "<p>"+"<span class='"+_351+"'>"+_351+"</span>:<i>"+_350.source+"</i>: "+_350.msg+"</p>";
};
var _352=new YAHOO.widget.LogReader(null,{width:"30em",fontSize:"100%"});
_352.setTitle(CFMessage["log.title"]||"ColdFusion AJAX Logger");
_352._btnCollapse.value=CFMessage["log.collapse"]||"Collapse";
_352._btnPause.value=CFMessage["log.pause"]||"Pause";
_352._btnClear.value=CFMessage["log.clear"]||"Clear";
$L.isAvailable=true;
}
};
$L.log=function(_353,_354,_355,_356){
if(!$L.isAvailable){
return;
}
if(!_355){
_355="global";
}
_355=CFMessage[_355]||_355;
_354=CFMessage[_354]||_354;
_353=$L.format(_353,_356);
YAHOO.log(_353,_354,_355);
};
$L.format=function(code,_358){
var msg=CFMessage[code]||code;
if(_358){
for(i=0;i<_358.length;i++){
if(!_358[i].length){
_358[i]="";
}
var _35a="{"+i+"}";
msg=msg.replace(_35a,_358[i]);
}
}
return msg;
};
$L.debug=function(_35b,_35c,_35d){
$L.log(_35b,"debug",_35c,_35d);
};
$L.info=function(_35e,_35f,_360){
$L.log(_35e,"info",_35f,_360);
};
$L.error=function(_361,_362,_363){
$L.log(_361,"error",_362,_363);
};
$L.dump=function(_364,_365){
if($L.isAvailable){
var dump=(/string|number|undefined|boolean/.test(typeof (_364))||_364==null)?_364:recurse(_364,typeof _364,true);
$L.debug(dump,_365);
}
};
$X.invoke=function(_367,_368,_369,_36a,_36b){
return $X.invokeInternal(_367,_368,_369,_36a,_36b,false,null,null);
};
$X.invokeInternal=function(_36c,_36d,_36e,_36f,_370,_371,_372,_373){
var _374="method="+_36d+"&_cf_ajaxproxytoken="+_36e;
if(_371){
_374+="&_cfclient="+"true";
var _375=$X.JSON.encodeInternal(_36c._variables,_371);
_374+="&_variables="+encodeURIComponent(_375);
var _376=$X.JSON.encodeInternal(_36c._metadata,_371);
_374+="&_metadata="+encodeURIComponent(_376);
}
var _377=_36c.returnFormat||"json";
_374+="&returnFormat="+_377;
if(_36c.queryFormat){
_374+="&queryFormat="+_36c.queryFormat;
}
if(_36c.formId){
var _378=$C.getFormQueryString(_36c.formId,true);
if(_36f!=null){
for(prop in _378){
_36f[prop]=_378[prop];
}
}else{
_36f=_378;
}
_36c.formId=null;
}
var _379="";
if(_36f!=null){
_379=$X.JSON.encodeInternal(_36f,_371);
_374+="&argumentCollection="+encodeURIComponent(_379);
}
$L.info("ajaxproxy.invoke.invoking","http",[_36c.cfcPath,_36d,_379]);
if(_36c.callHandler){
_36c.callHandler.call(null,_36c.callHandlerParams,_36c.cfcPath,_374);
return;
}
var _37a;
var _37b=_36c.async;
if(_372!=null){
_37b=true;
_37a=function(req){
$X.callbackOp(req,_36c,_370,_372,_373);
};
}else{
if(_36c.async){
_37a=function(req){
$X.callback(req,_36c,_370);
};
}
}
var req=$A.sendMessage(_36c.cfcPath,_36c.httpMethod,_374,_37b,_37a,null,true);
if(!_37b){
return $X.processResponse(req,_36c);
}
};
$X.callback=function(req,_380,_381){
if($A.isRequestError(req)){
$C.handleError(_380.errorHandler,"ajaxproxy.invoke.error","http",[req.status,_380.cfcPath,req.statusText],req.status,req.statusText,false,_381);
}else{
if(_380.callbackHandler){
var _382=$X.processResponse(req,_380);
_380.callbackHandler(_382,_381);
}
}
};
$X.callbackOp=function(req,_384,_385,_386,_387){
if($A.isRequestError(req)){
var _388=_384.errorHandler;
if(_387!=null){
_388=_387;
}
$C.handleError(_388,"ajaxproxy.invoke.error","http",[req.status,_384.cfcPath,req.statusText],req.status,req.statusText,false,_385);
}else{
if(_386){
var _389=$X.processResponse(req,_384);
_386(_389,_385);
}
}
};
$X.processResponse=function(req,_38b){
var _38c=true;
for(var i=0;i<req.responseText.length;i++){
var c=req.responseText.charAt(i);
_38c=(c==" "||c=="\n"||c=="\t"||c=="\r");
if(!_38c){
break;
}
}
var _38f=(req.responseXML&&req.responseXML.childNodes.length>0);
var _390=_38f?"[XML Document]":req.responseText;
$L.info("ajaxproxy.invoke.response","http",[_390]);
var _391;
var _392=_38b.returnFormat||"json";
if(_392=="json"){
try{
_391=_38c?null:$X.JSON.decode(req.responseText);
}
catch(e){
if(typeof _38b._metadata!=="undefined"&&_38b._metadata.servercfc&&typeof req.responseText==="string"){
_391=req.responseText;
}else{
throw e;
}
}
}else{
_391=_38f?req.responseXML:(_38c?null:req.responseText);
}
return _391;
};
$X.init=function(_393,_394,_395){
if(typeof _395==="undefined"){
_395=false;
}
var _396=_394;
if(!_395){
var _397=_394.split(".");
var ns=self;
for(i=0;i<_397.length-1;i++){
if(_397[i].length){
ns[_397[i]]=ns[_397[i]]||{};
ns=ns[_397[i]];
}
}
var _399=_397[_397.length-1];
if(ns[_399]){
return ns[_399];
}
ns[_399]=function(){
this.httpMethod="GET";
this.async=false;
this.callbackHandler=null;
this.errorHandler=null;
this.formId=null;
};
_396=ns[_399].prototype;
}else{
_396.httpMethod="GET";
_396.async=false;
_396.callbackHandler=null;
_396.errorHandler=null;
_396.formId=null;
}
_396.cfcPath=_393;
_396.setHTTPMethod=function(_39a){
if(_39a){
_39a=_39a.toUpperCase();
}
if(_39a!="GET"&&_39a!="POST"){
$C.handleError(null,"ajaxproxy.sethttpmethod.invalidmethod","http",[_39a],null,null,true);
}
this.httpMethod=_39a;
};
_396.setSyncMode=function(){
this.async=false;
};
_396.setAsyncMode=function(){
this.async=true;
};
_396.setCallbackHandler=function(fn){
this.callbackHandler=fn;
this.setAsyncMode();
};
_396.setErrorHandler=function(fn){
this.errorHandler=fn;
this.setAsyncMode();
};
_396.setForm=function(fn){
this.formId=fn;
};
_396.setQueryFormat=function(_39e){
if(_39e){
_39e=_39e.toLowerCase();
}
if(!_39e||(_39e!="column"&&_39e!="row"&&_39e!="struct")){
$C.handleError(null,"ajaxproxy.setqueryformat.invalidformat","http",[_39e],null,null,true);
}
this.queryFormat=_39e;
};
_396.setReturnFormat=function(_39f){
if(_39f){
_39f=_39f.toLowerCase();
}
if(!_39f||(_39f!="plain"&&_39f!="json"&&_39f!="wddx")){
$C.handleError(null,"ajaxproxy.setreturnformat.invalidformat","http",[_39f],null,null,true);
}
this.returnFormat=_39f;
};
$L.info("ajaxproxy.init.created","http",[_393]);
if(_395){
return _396;
}else{
return ns[_399];
}
};
$U.isWhitespace=function(s){
var _3a1=true;
for(var i=0;i<s.length;i++){
var c=s.charAt(i);
_3a1=(c==" "||c=="\n"||c=="\t"||c=="\r");
if(!_3a1){
break;
}
}
return _3a1;
};
$U.getFirstNonWhitespaceIndex=function(s){
var _3a5=true;
for(var i=0;i<s.length;i++){
var c=s.charAt(i);
_3a5=(c==" "||c=="\n"||c=="\t"||c=="\r");
if(!_3a5){
break;
}
}
return i;
};
$C.trim=function(_3a8){
return _3a8.replace(/^\s+|\s+$/g,"");
};
$U.isInteger=function(n){
var _3aa=true;
if(typeof (n)=="number"){
_3aa=(n>=0);
}else{
for(i=0;i<n.length;i++){
if($U.isInteger.numberChars.indexOf(n.charAt(i))==-1){
_3aa=false;
break;
}
}
}
return _3aa;
};
$U.isInteger.numberChars="0123456789";
$U.isArray=function(a){
return (typeof (a.length)=="number"&&!a.toUpperCase);
};
$U.isBoolean=function(b){
if(b===true||b===false){
return true;
}else{
if(b.toLowerCase){
b=b.toLowerCase();
return (b==$U.isBoolean.trueChars||b==$U.isBoolean.falseChars);
}else{
return false;
}
}
};
$U.isBoolean.trueChars="true";
$U.isBoolean.falseChars="false";
$U.castBoolean=function(b){
if(b===true){
return true;
}else{
if(b===false){
return false;
}else{
if(b.toLowerCase){
b=b.toLowerCase();
if(b==$U.isBoolean.trueChars){
return true;
}else{
if(b==$U.isBoolean.falseChars){
return false;
}else{
return false;
}
}
}else{
return false;
}
}
}
};
$U.checkQuery=function(o){
var _3af=null;
if(o&&o.COLUMNS&&$U.isArray(o.COLUMNS)&&o.DATA&&$U.isArray(o.DATA)&&(o.DATA.length==0||(o.DATA.length>0&&$U.isArray(o.DATA[0])))){
_3af="row";
}else{
if(o&&o.COLUMNS&&$U.isArray(o.COLUMNS)&&o.ROWCOUNT&&$U.isInteger(o.ROWCOUNT)&&o.DATA){
_3af="col";
for(var i=0;i<o.COLUMNS.length;i++){
var _3b1=o.DATA[o.COLUMNS[i]];
if(!_3b1||!$U.isArray(_3b1)){
_3af=null;
break;
}
}
}
}
return _3af;
};
$X.JSON=new function(){
var _3b2={}.hasOwnProperty?true:false;
var _3b3=/^("(\\.|[^"\\\n\r])*?"|[,:{}\[\]0-9.\-+Eaeflnr-u \n\r\t])+?$/;
var pad=function(n){
return n<10?"0"+n:n;
};
var m={"\b":"\\b","\t":"\\t","\n":"\\n","\f":"\\f","\r":"\\r","\"":"\\\"","\\":"\\\\"};
var _3b7=function(s){
if(/["\\\x00-\x1f]/.test(s)){
return "\""+s.replace(/([\x00-\x1f\\"])/g,function(a,b){
var c=m[b];
if(c){
return c;
}
c=b.charCodeAt();
return "\\u00"+Math.floor(c/16).toString(16)+(c%16).toString(16);
})+"\"";
}
return "\""+s+"\"";
};
var _3bc=function(o){
var a=["["],b,i,l=o.length,v;
for(i=0;i<l;i+=1){
v=o[i];
switch(typeof v){
case "undefined":
case "function":
case "unknown":
break;
default:
if(b){
a.push(",");
}
a.push(v===null?"null":$X.JSON.encode(v));
b=true;
}
}
a.push("]");
return a.join("");
};
var _3bf=function(o){
return "\""+o.getFullYear()+"-"+pad(o.getMonth()+1)+"-"+pad(o.getDate())+"T"+pad(o.getHours())+":"+pad(o.getMinutes())+":"+pad(o.getSeconds())+"\"";
};
this.encode=function(o){
return this.encodeInternal(o,false);
};
this.encodeInternal=function(o,cfc){
if(typeof o=="undefined"||o===null){
return "null";
}else{
if(o instanceof Array){
return _3bc(o);
}else{
if(o instanceof Date){
if(cfc){
return this.encodeInternal({_date_:o.getTime()},cfc);
}
return _3bf(o);
}else{
if(typeof o=="string"){
return _3b7(o);
}else{
if(typeof o=="number"){
return isFinite(o)?String(o):"null";
}else{
if(typeof o=="boolean"){
return String(o);
}else{
if(cfc&&typeof o=="object"&&typeof o._metadata!=="undefined"){
return "{\"_metadata\":"+this.encodeInternal(o._metadata,false)+",\"_variables\":"+this.encodeInternal(o._variables,cfc)+"}";
}else{
var a=["{"],b,i,v;
for(var i in o){
if(!_3b2||o.hasOwnProperty(i)){
v=o[i];
switch(typeof v){
case "undefined":
case "function":
case "unknown":
break;
default:
if(b){
a.push(",");
}
a.push(this.encodeInternal(i,cfc),":",v===null?"null":this.encodeInternal(v,cfc));
b=true;
}
}
}
a.push("}");
return a.join("");
}
}
}
}
}
}
}
};
this.decode=function(json){
if(typeof json=="object"){
return json;
}
if($U.isWhitespace(json)){
return null;
}
var _3c7=$U.getFirstNonWhitespaceIndex(json);
if(_3c7>0){
json=json.slice(_3c7);
}
if(window._cf_jsonprefix&&json.indexOf(_cf_jsonprefix)==0){
json=json.slice(_cf_jsonprefix.length);
}
try{
if(_3b3.test(json)){
return eval("("+json+")");
}
}
catch(e){
}
throw new SyntaxError("parseJSON");
};
}();
if(!$C.JSON){
$C.JSON={};
}
$C.JSON.encode=$X.JSON.encode;
$C.JSON.encodeInternal=$X.JSON.encodeInternal;
$C.JSON.decode=$X.JSON.decode;
$C.navigate=function(url,_3c9,_3ca,_3cb,_3cc,_3cd){
if(url==null){
$C.handleError(_3cb,"navigate.urlrequired","widget");
return;
}
if(_3cc){
_3cc=_3cc.toUpperCase();
if(_3cc!="GET"&&_3cc!="POST"){
$C.handleError(null,"navigate.invalidhttpmethod","http",[_3cc],null,null,true);
}
}else{
_3cc="GET";
}
var _3ce;
if(_3cd){
_3ce=$C.getFormQueryString(_3cd);
if(_3ce==-1){
$C.handleError(null,"navigate.formnotfound","http",[_3cd],null,null,true);
}
}
if(_3c9==null){
if(_3ce){
if(url.indexOf("?")==-1){
url+="?"+_3ce;
}else{
url+="&"+_3ce;
}
}
$L.info("navigate.towindow","widget",[url]);
window.location.replace(url);
return;
}
$L.info("navigate.tocontainer","widget",[url,_3c9]);
var obj=$C.objectCache[_3c9];
if(obj!=null){
if(typeof (obj._cf_body)!="undefined"&&obj._cf_body!=null){
_3c9=obj._cf_body;
}
}
$A.replaceHTML(_3c9,url,_3cc,_3ce,_3ca,_3cb);
};
$A.checkForm=function(_3d0,_3d1,_3d2,_3d3,_3d4){
var _3d5=_3d1.call(null,_3d0);
if(_3d5==false){
return false;
}
var _3d6=$C.getFormQueryString(_3d0);
$L.info("ajax.submitform.submitting","http",[_3d0.name]);
$A.replaceHTML(_3d2,_3d0.action,_3d0.method,_3d6,_3d3,_3d4);
return false;
};
$A.replaceHTML=function(_3d7,url,_3d9,_3da,_3db,_3dc){
var _3dd=document.getElementById(_3d7);
if(!_3dd){
$C.handleError(_3dc,"ajax.replacehtml.elnotfound","http",[_3d7]);
return;
}
var _3de="_cf_containerId="+encodeURIComponent(_3d7);
_3da=(_3da)?_3da+"&"+_3de:_3de;
$L.info("ajax.replacehtml.replacing","http",[_3d7,url,_3da]);
if(_cf_loadingtexthtml){
try{
_3dd.innerHTML=_cf_loadingtexthtml;
}
catch(e){
}
}
var _3df=function(req,_3e1){
var _3e2=false;
if($A.isRequestError(req)){
$C.handleError(_3dc,"ajax.replacehtml.error","http",[req.status,_3e1.id,req.statusText],req.status,req.statusText);
_3e2=true;
}
var _3e3=new $E.CustomEvent("onReplaceHTML",_3e1);
var _3e4=new $E.CustomEvent("onReplaceHTMLUser",_3e1);
$E.loadEvents[_3e1.id]={system:_3e3,user:_3e4};
if(req.responseText.search(/<script/i)!=-1){
try{
_3e1.innerHTML="";
}
catch(e){
}
$A.replaceHTML.processResponseText(req.responseText,_3e1,_3dc);
}else{
try{
_3e1.innerHTML=req.responseText;
$A.updateLayouttab(_3e1);
}
catch(e){
}
}
$E.loadEvents[_3e1.id]=null;
_3e3.fire();
_3e3.unsubscribe();
_3e4.fire();
_3e4.unsubscribe();
$L.info("ajax.replacehtml.success","http",[_3e1.id]);
if(_3db&&!_3e2){
_3db();
}
};
try{
$A.sendMessage(url,_3d9,_3da,true,_3df,_3dd);
}
catch(e){
try{
_3dd.innerHTML=$L.format(CFMessage["ajax.replacehtml.connectionerrordisplay"],[url,e]);
}
catch(e){
}
$C.handleError(_3dc,"ajax.replacehtml.connectionerror","http",[_3d7,url,e]);
}
};
$A.replaceHTML.processResponseText=function(text,_3e6,_3e7){
var pos=0;
var _3e9=0;
var _3ea=0;
_3e6._cf_innerHTML="";
while(pos<text.length){
var _3eb=text.indexOf("<s",pos);
if(_3eb==-1){
_3eb=text.indexOf("<S",pos);
}
if(_3eb==-1){
break;
}
pos=_3eb;
var _3ec=true;
var _3ed=$A.replaceHTML.processResponseText.scriptTagChars;
for(var i=1;i<_3ed.length;i++){
var _3ef=pos+i+1;
if(_3ef>text.length){
break;
}
var _3f0=text.charAt(_3ef);
if(_3ed[i][0]!=_3f0&&_3ed[i][1]!=_3f0){
pos+=i+1;
_3ec=false;
break;
}
}
if(!_3ec){
continue;
}
var _3f1=text.substring(_3e9,pos);
if(_3f1){
_3e6._cf_innerHTML+=_3f1;
}
var _3f2=text.indexOf(">",pos)+1;
if(_3f2==0){
pos++;
continue;
}else{
pos+=7;
}
var _3f3=_3f2;
while(_3f3<text.length&&_3f3!=-1){
_3f3=text.indexOf("</s",_3f3);
if(_3f3==-1){
_3f3=text.indexOf("</S",_3f3);
}
if(_3f3!=-1){
_3ec=true;
for(var i=1;i<_3ed.length;i++){
var _3ef=_3f3+2+i;
if(_3ef>text.length){
break;
}
var _3f0=text.charAt(_3ef);
if(_3ed[i][0]!=_3f0&&_3ed[i][1]!=_3f0){
_3f3=_3ef;
_3ec=false;
break;
}
}
if(_3ec){
break;
}
}
}
if(_3f3!=-1){
var _3f4=text.substring(_3f2,_3f3);
var _3f5=_3f4.indexOf("<!--");
if(_3f5!=-1){
_3f4=_3f4.substring(_3f5+4);
}
var _3f6=_3f4.lastIndexOf("//-->");
if(_3f6!=-1){
_3f4=_3f4.substring(0,_3f6-1);
}
if(_3f4.indexOf("document.write")!=-1||_3f4.indexOf("CF_RunContent")!=-1){
if(_3f4.indexOf("CF_RunContent")!=-1){
_3f4=_3f4.replace("CF_RunContent","document.write");
}
_3f4="var _cfDomNode = document.getElementById('"+_3e6.id+"'); var _cfBuffer='';"+"if (!document._cf_write)"+"{document._cf_write = document.write;"+"document.write = function(str){if (_cfBuffer!=null){_cfBuffer+=str;}else{document._cf_write(str);}};};"+_3f4+";_cfDomNode._cf_innerHTML += _cfBuffer; _cfBuffer=null;";
}
try{
eval(_3f4);
}
catch(ex){
$C.handleError(_3e7,"ajax.replacehtml.jserror","http",[_3e6.id,ex]);
}
}
_3eb=text.indexOf(">",_3f3)+1;
if(_3eb==0){
_3ea=_3f3+1;
break;
}
_3ea=_3eb;
pos=_3eb;
_3e9=_3eb;
}
if(_3ea<text.length-1){
var _3f1=text.substring(_3ea,text.length);
if(_3f1){
_3e6._cf_innerHTML+=_3f1;
}
}
try{
_3e6.innerHTML=_3e6._cf_innerHTML;
$A.updateLayouttab(_3e6);
}
catch(e){
}
_3e6._cf_innerHTML="";
};
$A.updateLayouttab=function(_3f7){
var _3f8=_3f7.id;
if(_3f8.length>13&&_3f8.indexOf("cf_layoutarea")==0){
var s=_3f8.substr(13,_3f8.length);
var cmp=Ext.getCmp(s);
var _3fb=_3f7.innerHTML;
if(cmp){
cmp.update("<div id="+_3f7.id+">"+_3f7.innerHTML+"</div>");
}
var _3fc=document.getElementById(_3f8);
if(_3fc){
_3fc.innerHTML=_3fb;
}
}
};
$A.replaceHTML.processResponseText.scriptTagChars=[["s","S"],["c","C"],["r","R"],["i","I"],["p","P"],["t","T"]];
$D.getElement=function(_3fd,_3fe){
var _3ff=function(_400){
return (_400.name==_3fd||_400.id==_3fd);
};
var _401=$D.getElementsBy(_3ff,null,_3fe);
if(_401.length==1){
return _401[0];
}else{
return _401;
}
};
$D.getElementsBy=function(_402,tag,root){
tag=tag||"*";
var _405=[];
if(root){
root=$D.get(root);
if(!root){
return _405;
}
}else{
root=document;
}
var _406=root.getElementsByTagName(tag);
if(!_406.length&&(tag=="*"&&root.all)){
_406=root.all;
}
for(var i=0,len=_406.length;i<len;++i){
if(_402(_406[i])){
_405[_405.length]=_406[i];
}
}
return _405;
};
$D.get=function(el){
if(!el){
return null;
}
if(typeof el!="string"&&!(el instanceof Array)){
return el;
}
if(typeof el=="string"){
return document.getElementById(el);
}else{
var _409=[];
for(var i=0,len=el.length;i<len;++i){
_409[_409.length]=$D.get(el[i]);
}
return _409;
}
return null;
};
$E.loadEvents={};
$E.CustomEvent=function(_40b,_40c){
return {name:_40b,domNode:_40c,subs:[],subscribe:function(func,_40e){
var dup=false;
for(var i=0;i<this.subs.length;i++){
var sub=this.subs[i];
if(sub.f==func&&sub.p==_40e){
dup=true;
break;
}
}
if(!dup){
this.subs.push({f:func,p:_40e});
}
},fire:function(){
for(var i=0;i<this.subs.length;i++){
var sub=this.subs[i];
sub.f.call(null,this,sub.p);
}
},unsubscribe:function(){
this.subscribers=[];
}};
};
$E.windowLoadImpEvent=new $E.CustomEvent("cfWindowLoadImp");
$E.windowLoadEvent=new $E.CustomEvent("cfWindowLoad");
$E.windowLoadUserEvent=new $E.CustomEvent("cfWindowLoadUser");
$E.listeners=[];
$E.addListener=function(el,ev,fn,_417){
var l={el:el,ev:ev,fn:fn,params:_417};
$E.listeners.push(l);
var _419=function(e){
if(!e){
var e=window.event;
}
fn.call(null,e,_417);
};
if(el.addEventListener){
el.addEventListener(ev,_419,false);
return true;
}else{
if(el.attachEvent){
el.attachEvent("on"+ev,_419);
return true;
}else{
return false;
}
}
};
$E.isListener=function(el,ev,fn,_41e){
var _41f=false;
var ls=$E.listeners;
for(var i=0;i<ls.length;i++){
if(ls[i].el==el&&ls[i].ev==ev&&ls[i].fn==fn&&ls[i].params==_41e){
_41f=true;
break;
}
}
return _41f;
};
$E.callBindHandlers=function(id,_423,ev){
var el=document.getElementById(id);
if(!el){
return;
}
var ls=$E.listeners;
for(var i=0;i<ls.length;i++){
if(ls[i].el==el&&ls[i].ev==ev&&ls[i].fn._cf_bindhandler){
ls[i].fn.call(null,null,ls[i].params);
}
}
};
$E.registerOnLoad=function(func,_429,_42a,user){
if($E.registerOnLoad.windowLoaded){
if(_429&&_429._cf_containerId&&$E.loadEvents[_429._cf_containerId]){
if(user){
$E.loadEvents[_429._cf_containerId].user.subscribe(func,_429);
}else{
$E.loadEvents[_429._cf_containerId].system.subscribe(func,_429);
}
}else{
func.call(null,null,_429);
}
}else{
if(user){
$E.windowLoadUserEvent.subscribe(func,_429);
}else{
if(_42a){
$E.windowLoadImpEvent.subscribe(func,_429);
}else{
$E.windowLoadEvent.subscribe(func,_429);
}
}
}
};
$E.registerOnLoad.windowLoaded=false;
$E.onWindowLoad=function(fn){
if(window.addEventListener){
window.addEventListener("load",fn,false);
}else{
if(window.attachEvent){
window.attachEvent("onload",fn);
}else{
if(document.getElementById){
window.onload=fn;
}
}
}
};
$C.addSpanToDom=function(){
var _42d=document.createElement("span");
document.body.insertBefore(_42d,document.body.firstChild);
};
$E.windowLoadHandler=function(e){
if(window.Ext){
Ext.BLANK_IMAGE_URL=_cf_ajaxscriptsrc+"/resources/ext/images/default/s.gif";
}
$C.addSpanToDom();
$L.init();
$E.registerOnLoad.windowLoaded=true;
$E.windowLoadImpEvent.fire();
$E.windowLoadImpEvent.unsubscribe();
$E.windowLoadEvent.fire();
$E.windowLoadEvent.unsubscribe();
if(window.Ext){
Ext.onReady(function(){
$E.windowLoadUserEvent.fire();
});
}else{
$E.windowLoadUserEvent.fire();
}
$E.windowLoadUserEvent.unsubscribe();
};
$E.onWindowLoad($E.windowLoadHandler);
$B.register=function(_42f,_430,_431,_432){
for(var i=0;i<_42f.length;i++){
var _434=_42f[i][0];
var _435=_42f[i][1];
var _436=_42f[i][2];
if(window[_434]){
var _437=eval(_434);
if(_437&&_437._cf_register){
_437._cf_register(_436,_431,_430);
continue;
}
}
var _438=$C.objectCache[_434];
if(_438&&_438._cf_register){
_438._cf_register(_436,_431,_430);
continue;
}
var _439=$D.getElement(_434,_435);
var _43a=(_439&&((!_439.length&&_439.length!=0)||(_439.length&&_439.length>0)||_439.tagName=="SELECT"));
if(!_43a){
$C.handleError(null,"bind.register.elnotfound","bind",[_434]);
}
if(_439.length>1&&!_439.options){
for(var j=0;j<_439.length;j++){
$B.register.addListener(_439[j],_436,_431,_430);
}
}else{
$B.register.addListener(_439,_436,_431,_430);
}
}
if(!$C.bindHandlerCache[_430.bindTo]&&typeof (_430.bindTo)=="string"){
$C.bindHandlerCache[_430.bindTo]=function(){
_431.call(null,null,_430);
};
}
if(_432){
_431.call(null,null,_430);
}
};
$B.register.addListener=function(_43c,_43d,_43e,_43f){
if(!$E.isListener(_43c,_43d,_43e,_43f)){
$E.addListener(_43c,_43d,_43e,_43f);
}
};
$B.assignValue=function(_440,_441,_442,_443){
if(!_440){
return;
}
if(_440.call){
_440.call(null,_442,_443);
return;
}
var _444=$C.objectCache[_440];
if(_444&&_444._cf_setValue){
_444._cf_setValue(_442);
return;
}
var _445=document.getElementById(_440);
if(!_445){
$C.handleError(null,"bind.assignvalue.elnotfound","bind",[_440]);
}
if(_445.tagName=="SELECT"){
var _446=$U.checkQuery(_442);
var _447=$C.objectCache[_440];
if(_446){
if(!_447||(_447&&(!_447.valueCol||!_447.displayCol))){
$C.handleError(null,"bind.assignvalue.selboxmissingvaldisplay","bind",[_440]);
return;
}
}else{
if(typeof (_442.length)=="number"&&!_442.toUpperCase){
if(_442.length>0&&(typeof (_442[0].length)!="number"||_442[0].toUpperCase)){
$C.handleError(null,"bind.assignvalue.selboxerror","bind",[_440]);
return;
}
}else{
$C.handleError(null,"bind.assignvalue.selboxerror","bind",[_440]);
return;
}
}
_445.options.length=0;
var _448;
var _449=false;
if(_447){
_448=_447.selected;
if(_448&&_448.length>0){
_449=true;
}
}
if(!_446){
for(var i=0;i<_442.length;i++){
var opt=new Option(_442[i][1],_442[i][0]);
_445.options[i]=opt;
if(_449){
for(var j=0;j<_448.length;j++){
if(_448[j]==opt.value){
opt.selected=true;
}
}
}
}
}else{
if(_446=="col"){
var _44d=_442.DATA[_447.valueCol];
var _44e=_442.DATA[_447.displayCol];
if(!_44d||!_44e){
$C.handleError(null,"bind.assignvalue.selboxinvalidvaldisplay","bind",[_440]);
return;
}
for(var i=0;i<_44d.length;i++){
var opt=new Option(_44e[i],_44d[i]);
_445.options[i]=opt;
if(_449){
for(var j=0;j<_448.length;j++){
if(_448[j]==opt.value){
opt.selected=true;
}
}
}
}
}else{
if(_446=="row"){
var _44f=-1;
var _450=-1;
for(var i=0;i<_442.COLUMNS.length;i++){
var col=_442.COLUMNS[i];
if(col==_447.valueCol){
_44f=i;
}
if(col==_447.displayCol){
_450=i;
}
if(_44f!=-1&&_450!=-1){
break;
}
}
if(_44f==-1||_450==-1){
$C.handleError(null,"bind.assignvalue.selboxinvalidvaldisplay","bind",[_440]);
return;
}
for(var i=0;i<_442.DATA.length;i++){
var opt=new Option(_442.DATA[i][_450],_442.DATA[i][_44f]);
_445.options[i]=opt;
if(_449){
for(var j=0;j<_448.length;j++){
if(_448[j]==opt.value){
opt.selected=true;
}
}
}
}
}
}
}
}else{
_445[_441]=_442;
}
$E.callBindHandlers(_440,null,"change");
$L.info("bind.assignvalue.success","bind",[_442,_440,_441]);
};
$B.localBindHandler=function(e,_453){
var _454=document.getElementById(_453.bindTo);
var _455=$B.evaluateBindTemplate(_453,true);
$B.assignValue(_453.bindTo,_453.bindToAttr,_455);
};
$B.localBindHandler._cf_bindhandler=true;
$B.evaluateBindTemplate=function(_456,_457,_458,_459,_45a){
var _45b=_456.bindExpr;
var _45c="";
if(typeof _45a=="undefined"){
_45a=false;
}
for(var i=0;i<_45b.length;i++){
if(typeof (_45b[i])=="object"){
var _45e=null;
if(!_45b[i].length||typeof _45b[i][0]=="object"){
_45e=$X.JSON.encode(_45b[i]);
}else{
var _45e=$B.getBindElementValue(_45b[i][0],_45b[i][1],_45b[i][2],_457,_459);
if(_45e==null){
if(_457){
_45c="";
break;
}else{
_45e="";
}
}
}
if(_458){
_45e=encodeURIComponent(_45e);
}
_45c+=_45e;
}else{
var _45f=_45b[i];
if(_45a==true&&i>0){
if(typeof (_45f)=="string"&&_45f.indexOf("&")!=0){
_45f=encodeURIComponent(_45f);
}
}
_45c+=_45f;
}
}
return _45c;
};
$B.jsBindHandler=function(e,_461){
var _462=_461.bindExpr;
var _463=new Array();
var _464=_461.callFunction+"(";
for(var i=0;i<_462.length;i++){
var _466;
if(typeof (_462[i])=="object"){
if(_462[i].length){
if(typeof _462[i][0]=="object"){
_466=_462[i];
}else{
_466=$B.getBindElementValue(_462[i][0],_462[i][1],_462[i][2],false);
}
}else{
_466=_462[i];
}
}else{
_466=_462[i];
}
if(i!=0){
_464+=",";
}
_463[i]=_466;
_464+="'"+_466+"'";
}
_464+=")";
var _467=_461.callFunction.apply(null,_463);
$B.assignValue(_461.bindTo,_461.bindToAttr,_467,_461.bindToParams);
};
$B.jsBindHandler._cf_bindhandler=true;
$B.urlBindHandler=function(e,_469){
var _46a=_469.bindTo;
if($C.objectCache[_46a]&&$C.objectCache[_46a]._cf_visible===false){
$C.objectCache[_46a]._cf_dirtyview=true;
return;
}
var url=$B.evaluateBindTemplate(_469,false,true,false,true);
var _46c=$U.extractReturnFormat(url);
if(_46c==null||typeof _46c=="undefined"){
_46c="JSON";
}
if(_469.bindToAttr||typeof _469.bindTo=="undefined"||typeof _469.bindTo=="function"){
var _469={"bindTo":_469.bindTo,"bindToAttr":_469.bindToAttr,"bindToParams":_469.bindToParams,"errorHandler":_469.errorHandler,"url":url,returnFormat:_46c};
try{
$A.sendMessage(url,"GET",null,true,$B.urlBindHandler.callback,_469);
}
catch(e){
$C.handleError(_469.errorHandler,"ajax.urlbindhandler.connectionerror","http",[url,e]);
}
}else{
$A.replaceHTML(_46a,url,null,null,_469.callback,_469.errorHandler);
}
};
$B.urlBindHandler._cf_bindhandler=true;
$B.urlBindHandler.callback=function(req,_46e){
if($A.isRequestError(req)){
$C.handleError(_46e.errorHandler,"bind.urlbindhandler.httperror","http",[req.status,_46e.url,req.statusText],req.status,req.statusText);
}else{
$L.info("bind.urlbindhandler.response","http",[req.responseText]);
var _46f;
try{
if(_46e.returnFormat==null||_46e.returnFormat==="JSON"){
_46f=$X.JSON.decode(req.responseText);
}else{
_46f=req.responseText;
}
}
catch(e){
if(req.responseText!=null&&typeof req.responseText=="string"){
_46f=req.responseText;
}else{
$C.handleError(_46e.errorHandler,"bind.urlbindhandler.jsonerror","http",[req.responseText]);
}
}
$B.assignValue(_46e.bindTo,_46e.bindToAttr,_46f,_46e.bindToParams);
}
};
$A.initSelect=function(_470,_471,_472,_473){
$C.objectCache[_470]={"valueCol":_471,"displayCol":_472,selected:_473};
};
$S.setupSpry=function(){
if(typeof (Spry)!="undefined"&&Spry.Data){
Spry.Data.DataSet.prototype._cf_getAttribute=function(_474){
var val;
var row=this.getCurrentRow();
if(row){
val=row[_474];
}
return val;
};
Spry.Data.DataSet.prototype._cf_register=function(_477,_478,_479){
var obs={bindParams:_479};
obs.onCurrentRowChanged=function(){
_478.call(null,null,this.bindParams);
};
obs.onDataChanged=function(){
_478.call(null,null,this.bindParams);
};
this.addObserver(obs);
};
if(Spry.Debug.trace){
var _47b=Spry.Debug.trace;
Spry.Debug.trace=function(str){
$L.info(str,"spry");
_47b(str);
};
}
if(Spry.Debug.reportError){
var _47d=Spry.Debug.reportError;
Spry.Debug.reportError=function(str){
$L.error(str,"spry");
_47d(str);
};
}
$L.info("spry.setupcomplete","bind");
}
};
$E.registerOnLoad($S.setupSpry,null,true);
$S.bindHandler=function(_47f,_480){
var url;
var _482="_cf_nodebug=true&_cf_nocache=true";
if(window._cf_clientid){
_482+="&_cf_clientid="+_cf_clientid;
}
var _483=window[_480.bindTo];
var _484=(typeof (_483)=="undefined");
if(_480.cfc){
var _485={};
var _486=_480.bindExpr;
for(var i=0;i<_486.length;i++){
var _488;
if(_486[i].length==2){
_488=_486[i][1];
}else{
_488=$B.getBindElementValue(_486[i][1],_486[i][2],_486[i][3],false,_484);
}
_485[_486[i][0]]=_488;
}
_485=$X.JSON.encode(_485);
_482+="&method="+_480.cfcFunction;
_482+="&argumentCollection="+encodeURIComponent(_485);
$L.info("spry.bindhandler.loadingcfc","http",[_480.bindTo,_480.cfc,_480.cfcFunction,_485]);
url=_480.cfc;
}else{
url=$B.evaluateBindTemplate(_480,false,true,_484);
$L.info("spry.bindhandler.loadingurl","http",[_480.bindTo,url]);
}
var _489=_480.options||{};
if((_483&&_483._cf_type=="json")||_480.dsType=="json"){
_482+="&returnformat=json";
}
if(_483){
if(_483.requestInfo.method=="GET"){
_489.method="GET";
if(url.indexOf("?")==-1){
url+="?"+_482;
}else{
url+="&"+_482;
}
}else{
_489.postData=_482;
_489.method="POST";
_483.setURL("");
}
_483.setURL(url,_489);
_483.loadData();
}else{
if(!_489.method||_489.method=="GET"){
if(url.indexOf("?")==-1){
url+="?"+_482;
}else{
url+="&"+_482;
}
}else{
_489.postData=_482;
_489.useCache=false;
}
var ds;
if(_480.dsType=="xml"){
ds=new Spry.Data.XMLDataSet(url,_480.xpath,_489);
}else{
ds=new Spry.Data.JSONDataSet(url,_489);
ds.preparseFunc=$S.preparseData;
}
ds._cf_type=_480.dsType;
var _48b={onLoadError:function(req){
$C.handleError(_480.errorHandler,"spry.bindhandler.error","http",[_480.bindTo,req.url,req.requestInfo.postData]);
}};
ds.addObserver(_48b);
window[_480.bindTo]=ds;
}
};
$S.bindHandler._cf_bindhandler=true;
$S.preparseData=function(ds,_48e){
var _48f=$U.getFirstNonWhitespaceIndex(_48e);
if(_48f>0){
_48e=_48e.slice(_48f);
}
if(window._cf_jsonprefix&&_48e.indexOf(_cf_jsonprefix)==0){
_48e=_48e.slice(_cf_jsonprefix.length);
}
return _48e;
};
$P.init=function(_490){
$L.info("pod.init.creating","widget",[_490]);
var _491={};
_491._cf_body=_490+"_body";
$C.objectCache[_490]=_491;
};
$B.cfcBindHandler=function(e,_493){
var _494=(_493.httpMethod)?_493.httpMethod:"GET";
var _495={};
var _496=_493.bindExpr;
for(var i=0;i<_496.length;i++){
var _498;
if(_496[i].length==2){
_498=_496[i][1];
}else{
_498=$B.getBindElementValue(_496[i][1],_496[i][2],_496[i][3],false);
}
_495[_496[i][0]]=_498;
}
var _499=function(_49a,_49b){
$B.assignValue(_49b.bindTo,_49b.bindToAttr,_49a,_49b.bindToParams);
};
var _49c={"bindTo":_493.bindTo,"bindToAttr":_493.bindToAttr,"bindToParams":_493.bindToParams};
var _49d={"async":true,"cfcPath":_493.cfc,"httpMethod":_494,"callbackHandler":_499,"errorHandler":_493.errorHandler};
if(_493.proxyCallHandler){
_49d.callHandler=_493.proxyCallHandler;
_49d.callHandlerParams=_493;
}
$X.invoke(_49d,_493.cfcFunction,_493._cf_ajaxproxytoken,_495,_49c);
};
$B.cfcBindHandler._cf_bindhandler=true;
$U.extractReturnFormat=function(url){
var _49f;
var _4a0=url.toUpperCase();
var _4a1=_4a0.indexOf("RETURNFORMAT");
if(_4a1>0){
var _4a2=_4a0.indexOf("&",_4a1+13);
if(_4a2<0){
_4a2=_4a0.length;
}
_49f=_4a0.substring(_4a1+13,_4a2);
}
return _49f;
};
$U.replaceAll=function(_4a3,_4a4,_4a5){
var _4a6=_4a3.indexOf(_4a4);
while(_4a6>-1){
_4a3=_4a3.replace(_4a4,_4a5);
_4a6=_4a3.indexOf(_4a4);
}
return _4a3;
};
$U.cloneObject=function(obj){
var _4a8={};
for(key in obj){
var _4a9=obj[key];
if(typeof _4a9=="object"){
_4a9=$U.cloneObject(_4a9);
}
_4a8.key=_4a9;
}
return _4a8;
};
$C.clone=function(obj,_4ab){
if(typeof (obj)!="object"){
return obj;
}
if(obj==null){
return obj;
}
var _4ac=new Object();
for(var i in obj){
if(_4ab===true){
_4ac[i]=$C.clone(obj[i]);
}else{
_4ac[i]=obj[i];
}
}
return _4ac;
};
$C.printObject=function(obj){
var str="";
for(key in obj){
str=str+"  "+key+"=";
value=obj[key];
if(typeof (value)=="object"){
value=$C.printObject(value);
}
str+=value;
}
return str;
};
}
}
cfinit();
