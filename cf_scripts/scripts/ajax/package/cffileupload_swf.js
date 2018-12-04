/*ADOBE SYSTEMS INCORPORATED
Copyright 2012 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.FileUpload){
ColdFusion.FileUpload={};
}
var $FS=ColdFusion.FileUpload;
$FS.defaultSWFLocation=_cf_ajaxscriptsrc+"/resources/cf/assets/MultiFileUpload.swf";
var isIE=(navigator.appVersion.indexOf("MSIE")!=-1)?true:false;
var isWin=(navigator.appVersion.toLowerCase().indexOf("win")!=-1)?true:false;
var isOpera=(navigator.userAgent.indexOf("Opera")!=-1)?true:false;
var defaultAddButtonLabel="Add Files";
var defaultUploadButtonLabel="Upload";
var defaultClearButtonLabel="Clear All";
var defaultDeleteButtonLabel="Delete";
var defaultAddIcon=_cf_ajaxscriptsrc+"/resources/cf/images/fileupload/addfile.png";
var defaultUploadIcon=_cf_ajaxscriptsrc+"/resources/cf/images/fileupload/upload.png";
var defaultClearIcon=_cf_ajaxscriptsrc+"/resources/cf/images/fileupload/clear.gif";
var defaultDeleteIcon=_cf_ajaxscriptsrc+"/resources/cf/images/fileupload/delete.png";
var defaultUploadSize=10*1024*1024;
var fileUploadPrefix="cf_fileUpload_";
ColdFusion.FileUpload.create=function(_45,_46,_47,_48,_49,_4a,_4b,_4c,_4d,_4e,_4f,_50,_51,_52,_53,_54,_55,_56,_57,_58,_59,_5a,_5b,_5c,_5d,_5e,_5f,_60,_61,_62){
var _63={};
_63.uploadDivId=_45;
_63.fileUploadName=fileUploadPrefix+_45;
_63.url_withoutQuery=_46;
_63.url_queryString=_47;
_63.url_CF_cookie=_48;
_63.url=$FS.constructUrl(_46,_47,_48);
_63.onCompleteHandler=_50;
_63.onUploadCompleteHandler=_51;
_63.onErrorHandler=_52;
_63.progressbar=_5d;
if(_55==null){
_55="";
}
_63.bgcolor=_55;
if(_56==null){
_56="";
}
_63.selectcolor=_56;
if(_57==null){
_57="";
}
_63.rollovercolor=_57;
if(_58==null){
_58="";
}
_63.textcolor=_58;
if(_5b==null){
_5b="left";
}
_63.titletextalign=_5b;
if(_59==null){
_59="";
}
_63.titletextcolor=_59;
if(_5a==null){
_5a="";
}
_63.headercolor=_5a;
_63.bgcolor=_55;
_63.bgcolor=_55;
if(_5c==null){
_5c="";
}
_63.fileFilter=_5c;
_63.disableUploadButton=_5f;
if(_61==null||typeof _61=="undefined"){
_61="window";
}
_63.wmode=_61;
_63.stopOnError=_60;
if(_49==null||typeof _49==="undefined"){
_49=defaultAddButtonLabel;
}
_63.addIcon=defaultAddIcon;
_63.addButtonLabel=_49;
if(_4b==null||typeof _4b==="undefined"){
_4b=defaultUploadButtonLabel;
}
_63.uploadButtonLabel=_4b;
_63.uploadIcon=defaultUploadIcon;
if(_4d==null||typeof _4d==="undefined"){
_4d="File Upload ";
}
_63.title=_4d;
_63.swfLocation=$FS.defaultSWFLocation;
if(_4a==null||typeof _4a==="undefined"){
_4a=defaultClearButtonLabel;
}
_63.clearButtonLabel=_4a;
_63.clearIcon=defaultClearIcon;
if(_4c==null||typeof _4c==="undefined"){
_4c=defaultDeleteButtonLabel;
}
_63.deleteButtonLabel=_4c;
_63.deleteIcon=defaultDeleteIcon;
if(_4e==null||!typeof _4e==="Number"){
_4e=-1;
}
_63.maxFileSelect=_4e;
if(_4f==null||!typeof _4f==="number"){
_4f=defaultUploadSize;
}
_63.maxUploadSize=_4f;
if(_53==null||typeof _53==="undefined"){
_53=420;
}
_63.widthInPx=_53+"px";
_63.width=_53;
if(_54==null||typeof _54==="undefined"){
_54=300;
}
_63.heightInPx=_54+"px";
_63.height=_54;
_63.align=_62;
ColdFusion.objectCache[_45]=_63;
ColdFusion.objectCache[_63.fileUploadName]=_63;
var _64=$FS.constructMarkup(_63);
var _65=document.getElementById(_45);
_65.innerHTML=_64;
ColdFusion.Log.info("fileupload.initialized","widget",[_45]);
};
$FS.constructMarkup=function(_66){
var str="";
if(isIE&&isWin&&!isOpera){
str+="<object width=\""+_66.width+"\" height=\""+_66.height+"\"";
str+=" id=\""+_66.fileUploadName+"\" name=\""+_66.playerName+"\" type=\"application/x-shockwave-flash\" classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" ";
str+=" data=\""+_66.swfLocation+"\">";
str+="<param name=\"movie\" value=\""+_66.swfLocation+"\" />";
str+="<param name=\"quality\" value=\""+_66.quality+"\" />";
str+="<param name=\"allowFullScreen\" value=\""+_66.fullScreen+"\" />";
str+="<param name=\"allowScriptAccess\" value=\"sameDomain\" />";
str+="<param name=\"wmode\" value=\""+_66.wmode+"\" />";
str+="<param name=\"flashvars\" value=\"uniqueid="+_66.fileUploadName+"&url="+_66.url+"&addLabel="+_66.addButtonLabel+"&deleteLabel="+_66.deleteButtonLabel;
str+="&clearLabel="+_66.clearButtonLabel+"&uploadLabel="+_66.uploadButtonLabel+"&maxUploadSize="+_66.maxUploadSize+"&maxFileSelect="+_66.maxFileSelect+"&progress="+_66.progressbar;
str+="&stopOnError="+_66.stopOnError+"&hideUpload="+_66.disableUploadButton+"&bgcolor="+_66.bgcolor+"&fileFilter="+_66.fileFilter+"&deleteIcon="+_66.deleteIcon+"&title="+_66.title;
str+="&uploadIcon="+_66.uploadIcon+"&textcolor="+_66.textcolor+"&titletextcolor="+_66.titletextcolor+"&headercolor="+_66.headercolor+"&titletextalign="+_66.titletextalign+"&rollovercolor="+_66.rollovercolor+"&selectcolor="+_66.selectcolor+"\" />";
str+="</object>";
}else{
str="<embed src=\""+_66.swfLocation+"\" allowScriptAccess=\"samedomain\" pluginspage=\"http://www.adobe.com/go/getflashplayer\" type=\"application/x-shockwave-flash\" wmode=\""+_66.wmode+"\"";
str+=" name=\""+_66.fileUploadName+"\" width=\""+_66.width+"\" height=\""+_66.height+"\" quality=\" "+_66.quality+"\"";
str+=" flashvars=\"uniqueid="+_66.fileUploadName+"&url="+_66.url+"&addLabel="+_66.addButtonLabel+"&deleteLabel="+_66.deleteButtonLabel;
str+="&clearLabel="+_66.clearButtonLabel+"&uploadLabel="+_66.uploadButtonLabel+"&maxUploadSize="+_66.maxUploadSize+"&maxFileSelect="+_66.maxFileSelect+"&progress="+_66.progressbar;
str+="&stopOnError="+_66.stopOnError+"&hideUpload="+_66.disableUploadButton+"&bgcolor="+_66.bgcolor+"&fileFilter="+_66.fileFilter+"&deleteIcon="+_66.deleteIcon+"&title="+_66.title;
str+="&uploadIcon="+_66.uploadIcon+"&textcolor="+_66.textcolor+"&titletextcolor="+_66.titletextcolor+"&headercolor="+_66.headercolor+"&titletextalign="+_66.titletextalign+"&rollovercolor="+_66.rollovercolor+"&selectcolor="+_66.selectcolor+"\" />";
}
return str;
};
$FS.constructUrl=function(_68,_69,_6a){
var url=_68;
if(_69!=null){
url+="?"+_69;
if(_6a!=null){
url+="%26"+_6a;
}
}else{
if(_6a!=null){
url+="?"+_6a;
}
}
return url;
};
coldfusion_FileUploadSwf_complete=function(_6c,_6d){
var _6e=$FS.getFileUploadComponent(_6c);
var _6f=ColdFusion.objectCache[_6c];
var _70=_6f.onCompleteHandler;
if(_70!=null&&typeof _70=="function"){
_70.call(this,_6d);
}
$FS.addResultToArray(_6d,_6f);
};
coldfusion_FileUploadSwf_onError=function(_71,_72){
var _73=$FS.getFileUploadComponent(_71);
var _74=ColdFusion.objectCache[_71];
var _75=_74.onErrorHandler;
if(_75!=null&&typeof _75=="function"){
_75.call(this,_72);
}
$FS.addResultToArray(_72,_74);
};
coldfusion_FileUploadSwf_UploadCompete=function(_76){
var _77=$FS.getFileUploadComponent(_76);
var _78=ColdFusion.objectCache[_76];
var _79=_78.onUploadCompleteHandler;
var _7a=_78.resultArray;
if(_79!=null&&typeof _79=="function"){
_79.call(this,_7a);
}
_78.resultArray=new Array();
};
$FS.addResultToArray=function(_7b,_7c){
var _7d=_7c.resultArray;
if(_7d==null||typeof _7d=="undefined"){
_7d=_7c.resultArray=new Array();
}
_7d.push(_7b);
};
$FS.cancelUpload=function(_7e){
var _7f=fileUploadPrefix+_7e;
var _80=$FS.getFileUploadComponent(_7f);
if(_80!=null){
_80.cancelFileUpload();
}else{
ColdFusion.handleError(null,"fileupload.cancelupload.notfound","widget",[_7e],null,null,true);
}
ColdFusion.Log.info("fileupload.cancelupload.cancelled","widget",[_7e]);
};
$FS.getSelectedFiles=function(_81){
var _82=fileUploadPrefix+_81;
var _83=$FS.getFileUploadComponent(_82);
if(_83!=null){
return _83.getSelectedFileArray();
}else{
ColdFusion.handleError(null,"fileupload.getSelectedFiles.notfound","widget",[_81],null,null,true);
}
ColdFusion.Log.info("fileupload.getSelectedFiles.selected","widget",[_81]);
};
$FS.clearAllFiles=function(_84){
var _85=fileUploadPrefix+_84;
var _86=$FS.getFileUploadComponent(_85);
if(_86!=null){
_86.clearAllUpload();
}else{
ColdFusion.handleError(null,"fileupload.clearallfiles.notfound","widget",[_84],null,null,true);
}
ColdFusion.Log.info("fileupload.clearallfiles.cleared","widget",[_84]);
};
$FS.setURL=function(_87,src){
var _89=$FS.getFileUploadComponent(fileUploadPrefix+_87);
var _8a=ColdFusion.objectCache[_87];
if(_8a==null||typeof (_8a)=="undefined"){
ColdFusion.handleError(null,"fileupload.setURL.notfound","widget",[_87],null,null,true);
}
if(!src||src.length==0){
ColdFusion.handleError(null,"fileupload.setURL.invalidurl","widget",[_87],null,null,true);
}
var _8b=null;
if(src.indexOf("?")>0){
_8b=src.substring(src.indexOf("?")+1);
_8b=escape(_8b);
src=src.substring(0,src.indexOf("?"));
}
if(src.charAt(0)!="/"&&src.indexOf("://")<0){
var _8c=_8a.url_withoutQuery;
_8c=unescape(_8c);
var _8d="";
if(_8c||_8c.indexOf("/")>-1){
_8d=_8c.substring(0,_8c.lastIndexOf("/")+1);
}
var _8e=_8d+src;
var _8f=_8e.split("/");
var _90=new Array();
var _91=0;
for(var i=0;i<_8f.length;i++){
if(_8f[i]==".."){
_90[--_91]="";
}else{
_90[_91++]=_8f[i];
}
}
src=_90[0];
for(var i=1;i<_91;i++){
src=src+"/"+_90[i];
}
}
var _93=$FS.constructUrl(src,_8b,_8a.url_CF_cookie);
_8a.url=_93;
_89.setSrc(_93);
ColdFusion.Log.info("fileupload.setURL.urlset","widget",[_87,_93]);
};
$FS.startUpload=function(_94){
var _95=fileUploadPrefix+_94;
var _96=$FS.getFileUploadComponent(_95);
if(_96!=null){
_96.submitUploadForm();
}else{
ColdFusion.handleError(null,"fileupload.startupload.notfound","widget",[_94],null,null,true);
}
ColdFusion.Log.info("fileupload.startupload.started","widget",[_94]);
};
$FS.getFileUploadComponent=function(_97){
if(navigator.appName.indexOf("Microsoft")!=-1){
if(window[_97]!=null){
return window[_97];
}else{
return document[_97];
}
}else{
return document[_97];
}
};
