/*ADOBE SYSTEMS INCORPORATED
Copyright 2012 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.MediaPlayer){
ColdFusion.MediaPlayer={};
}
var $MP=ColdFusion.MediaPlayer;
$MP.defaultSWFLocation=_cf_ajaxscriptsrc+"/resources/cf/assets/StrobeMediaPlayback.swf",$MP.defaultOptions={swf:$MP.defaultSWFLocation,width:480,height:275,src:"",javascriptControls:true,playButtonOverlay:true,loop:false,autoPlay:false,controlBarMode:"docked",javascriptCallbackFunction:"triggerHandler"};
$MP.playerMap={};
$MP.playerWrapperMap={};
$MP.playerOptionsMap={};
$MP.jsFunctionMap={};
$MP.titleDataMap={};
$MP.videoMonitorMap={};
$MP.bindInfoMap={};
$MP.bindElements={};
$MP.baseURI;
$MP.fancyBoxLeftBorderOffset=5;
$MP.fancyBoxBottonBorderOffset=6;
$MP.hasHTML5VideoPlaybackSupport=!!document.createElement("video").canPlayType;
String.prototype.trim=function(){
return this.replace(/^\s+|\s+$/g,"");
};
ColdFusion.MediaPlayer.init=function(_4e4){
var _4e5=$MP.defaultOptions;
_4e5.id=_4e4.id;
var _4e6={};
var _4e7={};
var _4e8={};
var _4e9=null;
var _4ea={onStart:null,onComplete:null,onPause:null,onError:null,onLoad:null,onStartCallback:playbackStart,onPauseCallback:playbackPause};
if(_4e4.width!=null&&typeof (_4e4.width)!="undefined"){
_4e5.width=_4e4.width;
}else{
_4e5.width=480;
}
if(_4e4.height!=null&&typeof (_4e4.height)!="undefined"){
_4e5.height=_4e4.height;
}else{
_4e5.height=275;
}
if(_4e4.baseURI!=null){
$MP.baseURI=_4e4.baseURI;
}
if(_4e4.src!=null&&_4e4.src!=""){
_4e5.src=resolveSource(_4e4.src);
}else{
_4e5.src="";
}
if(_4e4.PosterImage!=null&&_4e4.PosterImage!=""){
_4e5.poster=resolveSource(_4e4.PosterImage);
}else{
_4e5.poster="";
}
if(_4e4.javascriptControls==null){
_4e5.javascriptControls=true;
}
if(_4e4.playButtonOverlay==null){
_4e5.playButtonOverlay=true;
}
if(_4e4.repeat!=null){
if(_4e4.repeat=="true"){
_4e5.loop=true;
}else{
_4e5.loop=false;
}
}else{
_4e5.loop=false;
}
if(_4e4.autoPlay!=null){
if(_4e4.autoPlay=="true"){
_4e5.autoPlay=true;
}else{
_4e5.autoPlay=false;
}
}else{
_4e5.autoPlay=false;
}
if(_4e4.bgcolor!=null){
_4e5.backgroundColor=_4e4.bgcolor;
_4e7.bgColor=_4e4.bgcolor;
}
if(_4e4.controlbar!=null){
if(_4e4.controlbar==false){
_4e5.controlBarMode="none";
}else{
_4e5.controlBarMode="docked";
}
}
if(_4e4.skin!=null){
_4e5.skin=resolveSource(_4e4.skin);
}else{
_4e5.skin="";
}
if(_4e4.onComplete!=null){
_4ea.onComplete=_4e4.onComplete;
}
if(_4e4.onLoad!=null){
_4ea.onLoad=_4e4.onLoad;
}
if(_4e4.onStart!=null){
_4ea.onStart=_4e4.onStart;
}
if(_4e4.onPause!=null){
_4ea.onPause=_4e4.onPause;
}
if(_4e4.onError!=null){
_4ea.onError=_4e4.onError;
}
if(_4e4.onBind!=null){
_4ea.onBind=_4e4.onBind;
}
if(_4e4.hideTitle!=null){
_4e6.hideTitle=_4e4.hideTitle;
}
if(_4e4.title!=null){
_4e6.title=_4e4.title;
}
if(_4e4.title_text_color!=null){
_4e6.title_text_color=_4e4.title_text_color;
}
if(_4e4.title_bgcolor!=null){
_4e6.title_bgcolor=_4e4.title_bgcolor;
}
if(_4e4.border_left!=null){
_4e7.border_left=_4e4.border_left;
}
if(_4e4.border_right!=null){
_4e7.border_right=_4e4.border_right;
}
if(_4e4.border_top!=null){
_4e7.border_top=_4e4.border_top;
}
if(_4e4.border_bottom!=null){
_4e7.border_bottom=_4e4.border_bottom;
}
if(_4e4.progress_color!=null){
_4e8.progress_color=_4e4.progress_color;
}
if(_4e4.progress_bgcolor!=null){
_4e8.progress_bgcolor=_4e4.progress_bgcolor;
}
if(_4e4.controls_color!=null){
_4e8.controls_color=_4e4.controls_color;
}
if(_4e4.controlbar_bgcolor!=null){
_4e8.controlbar_bgcolor=_4e4.controlbar_bgcolor;
}
if(!_4e5.javascriptControls){
$(".strobeMediaPlaybackControlBar,.smp-error,.playoverlay").show();
}
if(_4e4.bindData!=null&&_4e4.bindData!="undefined"){
_4e9=$.extend(true,{},_4e5);
handleBindingMediaPlayer(_4e9,_4e4.bindData,_4e4.type,_4ea);
return;
}
handleWmode(_4e4,_4e5);
playerInitialization(_4e5,_4e4.type,_4ea,_4e6,_4e7,_4e8);
};
function handleWmode(_4eb,_4ec){
if(navigator.platform.indexOf("Linux")!=-1){
_4ec.wmode="direct";
return;
}
if(_4eb.wmode!=null){
_4ec.wmode=_4eb.wmode;
}else{
_4ec.wmode="direct";
}
var _4ed=document.getElementById(_4ec.id+"_"+"videoTitle");
if((_4ed!==null&&(_4eb.hideTitle==null||_4eb.hideTitle==false))||(_4ec.backgroundColor!=null&&_4ec.backgroundColor.trim()!="")){
_4ec.wmode="transparent";
}
}
function isValidSourceElementExist(_4ee,type){
if(_4ee.src!=null&&_4ee.src!=""){
if(type=="html"&&$MP.hasHTML5VideoPlaybackSupport&&isHTMLFileFormatSupported(_4ee.src)){
return true;
}else{
if(type=="flash"&&isFlashSupported()&&isFlashFileFormatSupported(_4ee.src)){
return true;
}
}
}
var _4f0=document.getElementById(_4ee.id+"_extendData");
if(_4f0==null||_4f0.childNodes==null||!isFlashSupported()){
return false;
}
var _4f1=_4f0.getElementsByTagName("source");
for(var k=0;k<_4f1.length;k++){
var src=_4f1[k].getAttribute("src");
if(type=="html"&&$MP.hasHTML5VideoPlaybackSupport&&isHTMLFileFormatSupported(src)){
return true;
}else{
if(type=="flash"&&isFlashSupported()&&isFlashFileFormatSupported(src)){
return true;
}
}
}
return false;
}
function hideTitle(id){
var _4f5=document.getElementById(id+"_"+"videoTitle");
if(_4f5==null){
id=id.substring(0,id.indexOf("_strobemediaplayback-video"));
_4f5=document.getElementById(id+"_"+"videoTitle");
}
if(_4f5!=null){
$("#"+id+"_"+"videoTitle").fadeOut(600,null);
}
}
function playbackStart(id){
var _4f7=getFuncMap(id);
if(_4f7.onStart!=null){
_4f7.onStart();
}
var _4f8=getWrapper(id);
if(_4f8!=null){
_4f8.playOverlay.fadeOut(600);
}
hideTitle(id);
}
function showTitle(id){
var _4fa=document.getElementById(id+"_"+"videoTitle");
if(_4fa==null){
id=id.substring(0,id.indexOf("_strobemediaplayback-video"));
_4fa=document.getElementById(id+"_"+"videoTitle");
}
if(_4fa!=null){
$("#"+id+"_"+"videoTitle").fadeIn(1,null);
}
}
function playbackPause(id){
var _4fc=getFuncMap(id);
if(_4fc.onPause!=null){
_4fc.onPause();
}
var _4fd=getWrapper(id);
if(_4fd!=null){
_4fd.playOverlay.fadeIn(600);
}
showTitle(id);
}
function playbackComplete(id){
var _4ff=getFuncMap(id);
if(_4ff.onComplete!=null){
_4ff.onComplete();
}
var _500=getWrapper(id);
if(_500!=null){
_500.playOverlay.fadeIn(600);
_500.slider.css("left",0+"px");
_500.currenttime.html("0:00");
}
showTitle(id);
}
function updateFlashVideoSource(_501){
if(_501.src!=null&&_501.src!=""){
if(isFlashSupported()&&isFlashFileFormatSupported(_501.src)){
return;
}
}
var _502=document.getElementById(_501.id+"_extendData");
if(_502==null||_502.childNodes==null||!isFlashSupported()){
return;
}
var _503=_502.getElementsByTagName("source");
for(var k=0;k<_503.length;k++){
var src=_503[k].getAttribute("src");
if(isFlashSupported()&&isFlashFileFormatSupported(src)){
_501.src=resolveSource(src);
return;
}
}
return;
}
function playerInitialization(_506,type,_508,_509,_50a,_50b){
var _50c=true;
var _50d=isValidSourceElementExist(_506,"html");
var _50e=isValidSourceElementExist(_506,"flash");
var _50f=$MP.handleUserDefinedFlashParams(_506,type);
if(_50f){
_506.favorFlashOverHtml5Video=true;
}else{
if(isFlashSupported()){
if(type==null||type=="flash"){
if(_50e){
_506.favorFlashOverHtml5Video=true;
}else{
if(_50d){
_506.favorFlashOverHtml5Video=false;
}else{
_50c=false;
}
}
}else{
if(_50d){
_506.favorFlashOverHtml5Video=false;
}else{
if(_50e){
_506.favorFlashOverHtml5Video=true;
}else{
_50c=false;
}
}
}
}else{
if($MP.hasHTML5VideoPlaybackSupport){
_506.favorFlashOverHtml5Video=false;
}else{
_50c=false;
}
}
}
if(_506.favorFlashOverHtml5Video){
updateFlashVideoSource(_506);
}
if(!_50c){
if($MP.hasHTML5VideoPlaybackSupport){
_506.favorFlashOverHtml5Video=false;
}else{
$(".playoverlay").hide();
ColdFusion.MediaPlayer.logError(_506.id,"The video could not be loaded");
return;
}
}
var _510={"tablet":{"startSize":{"width":+_506.width,"height":+_506.height},"name":_506.id+"_"+"strobemediaplayback-video"},"smartphone":{"startSize":{"width":+_506.width,"height":+_506.height},"name":_506.id+"_"+"strobemediaplayback-video"},"default":{"startSize":{"width":+_506.width,"height":+_506.height},"name":_506.id+"_"+"strobemediaplayback-video"}};
strobeMediaPlayback.draw(_506.id+"_"+"strobemediaplayback-video",_510,_506);
var _511=$("#"+_506.id+"_"+"strobemediaplayback-video");
var _512=$("#"+_506.id);
var _513=_512.get(0);
var _514;
if(_513==null){
_506.id=_506.id+"_strobemediaplayback-video";
$MP.playerOptionsMap[_506.id]=_506;
$MP.videoMonitorMap[_506.id]={paused:true,muted:false};
}else{
_514=$("#"+_506.id+"_"+"strobemediaplayback-video  .html5player").strobemediaplaybackhtml5(_506,_508);
$MP.playerMap[_506.id]=_513;
$MP.playerWrapperMap[_506.id]=_514;
$MP.playerOptionsMap[_506.id]=_506;
}
$MP.jsFunctionMap[_506.id]=_508;
$MP.titleDataMap[_506.id]=_509;
if(_513!=null&&_513.nodeName!=null&&_513.nodeName.toLowerCase()=="video"){
handleVolumeSlider(_506.id);
_513.volume=0.6;
handlePlayoverlay(_506.id,_506.width,_506.height);
handleErrorElement(_506.id,_506.width,_506.height);
var _515=$MP.playerWrapperMap[_506.id];
_515.playOverlay.css("display","block");
_511.css("width","100%");
_511.css("height","100%");
handlebackgroundColor(_506);
handleControlsStyle(_506.id,_50b);
_514.useHTML5=true;
var _516=document.getElementById(_506.id+"_extendData");
if(_516!=null){
$MP.handleUserDefinedHTML5Element(_513,_506.id+"_extendData");
}else{
handleTitle(_506.id,_506.src,_509);
var _517=getFuncMap(_506.id);
var _518=document.getElementById(_506.id);
var _519=_518.getElementsByTagName("source");
if(_519!=null&&_519.length!=0){
_519[0].setAttribute("onerror","onError(event)");
}
}
}else{
handleTitle(_506.id,_506.src,_509);
}
handleBorderStyle(_506.id,_50a);
if($MP.bindInfoMap[_506.id]==null){
var _51a=document.getElementById(_506.id+"_extendData");
if(_51a==null){
var id=_506.id.substring(0,_506.id.indexOf("_"));
_51a=document.getElementById(id+"_extendData");
}
if(_51a!=null&&_51a.parentNode!=null){
_51a.parentNode.removeChild(_51a);
}
}
}
function handleVolumeChangeUI(_51c,_51d){
var _51e=getWrapper(_51c);
if(_51d<=0){
_51e.volumeHigh.css("background-position","0px -72px");
}else{
if(_51d<=0.3){
_51e.volumeHigh.css("background-position","-24px -72px");
}else{
if(_51d<=0.7){
_51e.volumeHigh.css("background-position","-48px -72px");
}else{
_51e.volumeHigh.css("background-position","-72px -72px");
}
}
}
}
function handleVolumeSlider(_51f){
var _520=getWrapper(_51f);
var _521=_520.volumeSlider;
_521.slider({orientation:"vertical",range:"min",min:0,max:90,value:60,slide:function(_522,ui){
var _524=ui.value/100;
_520.currentVolume=_524;
handleChangeVolume(_51f,_524);
}});
_520.volumeHigh.mouseover(function(){
var _525=getWrapper(_51f);
var _526=_525.volumeSlider;
_526.css("display","block");
_525.volumeContainer.css("display","block");
});
_520.volumeHigh.mouseout(function(_527){
var _528=getWrapper(_51f);
var _529=_528.volumeSlider;
var _52a=_528.volumeContainer;
var _52b=_527.relatedTarget;
if(_52b.className!="controls"){
_529.css("display","none");
_52a.css("display","none");
}
});
_520.volumeHigh.click(function(_52c){
var _52d=getWrapper(_51f);
if(_52d.currentVolume==null){
_52d.currentVolume=0.6;
}
var pos=_520.volumeHigh.css("background-position");
if(pos.indexOf("0px")!=0){
_520.volumeHigh.css("background-position","0px -72px");
_520.volumeSlider.slider("value",0);
handleChangeVolume(_51f,0);
}else{
_520.volumeSlider.slider("value",_52d.currentVolume*100);
if(_52d.currentVolume<=0.1){
_520.volumeHigh.css("background-position","0px -72px");
}else{
if(_52d.currentVolume<=0.3){
_520.volumeHigh.css("background-position","-24px -72px");
}else{
if(_52d.currentVolume<=0.7){
_520.volumeHigh.css("background-position","-48px -72px");
}else{
_520.volumeHigh.css("background-position","-72px -72px");
}
}
}
handleChangeVolume(_51f,_52d.currentVolume);
}
});
_520.controlbar.mouseout(function(_52f){
if(_52f.relatedTarget==null){
return;
}
var _530=_52f.relatedTarget.className;
if(_52f.relatedTarget.className!="controls"&&_530!="volume-container"&&_530.indexOf("ui-slider")==-1){
var _531=getWrapper(_51f);
var _532=_531.volumeSlider;
var _533=_531.volumeContainer;
_532.css("display","none");
_533.css("display","none");
}
});
}
function handleBindingMediaPlayer(_534,_535,type,_537){
var _538=document.getElementById(_534.id+"_"+"html5MediaPlayback");
if(_538==null){
return;
}
var _539=_538.innerHTML;
if(_539==null){
return;
}
var _53a={};
_53a.videoContent=_539;
_53a.type=type;
_53a.player_options=_534;
_53a.jsfunction=_537;
$MP.bindInfoMap[_534.id]=_53a;
var _53b=-1;
var _53c=0;
var _53d=_535;
do{
var _53e;
_53b=_535.indexOf(",",_53c);
if(_53b!=-1){
_53e=_535.substring(_53c,_53b);
_53c=_53b+1;
_53d=_535.substring(_53b+1);
}else{
_53e=_53d;
}
var _53f=_53e;
var _540;
if(_53e.indexOf("@")!=-1){
_53f=_53e.substring(0,_53e.indexOf("@"));
_540=_53e.substring(_53e.indexOf("@")+1);
}else{
_53f=_53e;
_540="onClick";
}
var _541=document.getElementById(_53f);
if(_541==null){
continue;
}
handleTitle(_534.id,_534.src);
var _542=getVideoTitle(_534.src);
if(_540==null||_540.toLowerCase()=="onclick"){
bindFancyBox(false,true,_53f,_540,_534,type,_537,_539,_542);
}else{
var _543=document.getElementById(_53f);
_540=_540.substring(2);
$("#"+_53f).live(_540.toLowerCase(),function(e){
bindFancyBox(true,true,_53f,_540,_534,type,_537,_539,_542);
});
}
}while(_53b!=-1);
var _545=document.getElementById(_534.id+"_"+"mediacontainer");
_545.parentNode.removeChild(_545);
}
function bindFancyBox(fire,_547,_548,_549,_54a,type,_54c,_54d,_54e){
var _54f=document.getElementById(_54a.id+"_"+"videoTitle");
if(_54f==null){
_54e="";
}else{
if(_54e==null||_54e==""){
_54e="video";
}
}
if(fire){
$("#"+_548).fancybox({content:_54d,overlayShow:true,overlayOpacity:0.7,width:_54a.width+$MP.fancyBoxLeftBorderOffset,height:_54a.height+$MP.fancyBoxBottonBorderOffset,title:_54e,autoDimensions:false,onComplete:function(){
var _550=$.extend(true,{},$MP.bindInfoMap[_54a.id].player_options);
if(_547&&_54c.onBind!=null){
_54c.onBind(_548,_549);
}
var _551=$MP.bindInfoMap[_54a.id].player_options;
playerInitialization(_551,type,_54c);
handleBindEvents(_551,$MP.bindInfoMap[_54a.id]);
$MP.bindInfoMap[_54a.id].player_options=$.extend(true,{},_550);
}}).trigger("click");
}else{
$("#"+_548).fancybox({content:_54d,overlayShow:true,overlayOpacity:0.7,width:_54a.width+$MP.fancyBoxLeftBorderOffset,height:_54a.height+$MP.fancyBoxBottonBorderOffset,title:_54e,autoDimensions:false,onComplete:function(){
var _552=$.extend(true,{},$MP.bindInfoMap[_54a.id].player_options);
if(_547&&_54c.onBind!=null){
_54c.onBind(_548,_549);
}
var _553=$MP.bindInfoMap[_54a.id].player_options;
playerInitialization(_553,type,_54c);
handleBindEvents(_553,$MP.bindInfoMap[_54a.id]);
$MP.bindInfoMap[_54a.id].player_options=$.extend(true,{},_552);
}});
}
}
function handleBindEvents(_554,_555){
var _556=$MP.getPlayer(_554.id);
if(_555.mute!=null){
_556.muted=mute;
}
if(_555.volume!=null){
handleChangeVolume(_554.id,_555.volume);
}
if(_555.startPlay!=null){
_556.start();
}
if(_555.stopPlay!=null){
_556.pause();
}
}
function updateVideoType(_557){
var _558=_557.childNodes;
if(_558==null){
return;
}
var _559=_557.getElementsByTagName("source");
if(_559==null||_559.length===0){
return;
}
var _55a=_559[0].getAttribute("src");
if(_55a==null){
return;
}
var type=_559[0].getAttribute("type");
if(type!=null){
return;
}
if(_55a.lastIndexOf(".")==-1){
return;
}
var _55c=_55a.substring(_55a.lastIndexOf(".")+1);
_55c=_55c.toLowerCase();
if(_55c=="mp4"){
_559[0].setAttribute("type","video/mp4");
}else{
if(_55c=="ogv"){
_559[0].setAttribute("type","video/ogg");
}else{
if(_55c=="webm"){
_559[0].setAttribute("type","video/webm");
}
}
}
}
$MP.handleUserDefinedHTML5Element=function(_55d,_55e){
var _55f=document.getElementById(_55e);
var _560=_55f.childNodes;
var _561=false;
updateVideoType(_55d);
if(_560!=null){
var _562=null;
for(var k=0;k<_560.length;k++){
var _564=_560[k];
if(_564.tagName!=null&&_564.tagName.toLowerCase()=="video"){
_562=_564;
break;
}
}
if(_562==null){
return;
}
_560=_562.childNodes;
var _565=null;
var _566;
for(var i=0;i<_560.length;i++){
var _564=_560[i];
if(_564.tagName!=null&&_564.tagName.toLowerCase()=="track"){
_55d.appendChild(_564);
}else{
if(_564.tagName!=null&&_564.tagName.toLowerCase()=="source"){
if(!_561){
var _568=_55d.getAttribute("src");
if(_568==null){
var _569=_55d.childNodes;
if(_569!=null){
for(var l=0;l<_569.length;l++){
if(_569[l].tagName.toLowerCase()=="source"){
var src=_569[l].getAttribute("src");
if(src!=null&&src.trim()!=0&&isHTMLFileFormatSupported(src)){
_565=src;
break;
}
}
}
}
}
if(_568!=null&&_568!=""&&_568.lastIndexOf(".")!=-1){
var _56c=document.createElement("source");
_56c.setAttribute("src",_568);
var _56d=_568.substring(_568.lastIndexOf(".")+1);
if(_56d=="mp4"){
_56c.setAttribute("type","video/mp4");
}else{
if(_56d=="ogv"){
_56c.setAttribute("type","video/ogg");
}else{
if(_56d=="webm"){
_56c.setAttribute("type","video/webm");
}
}
}
_55d.appendChild(_56c);
}
if(_565==null&&isHTMLFileFormatSupported(_568)){
_565=_568;
}
_55d.removeAttribute("src");
}
var src=_564.getAttribute("src");
src=resolveSource(src);
_564.setAttribute("src",src);
_55d.appendChild(_564);
_561=true;
_566=_564;
if(_565==null&&isHTMLFileFormatSupported(src)){
_565=src;
}
}
}
}
if(_565!=null){
handleTitle(_55d.id,_565);
}
if(_566!=null){
_566.setAttribute("onerror","onError(event)");
}
}
_55d.load();
};
$MP.handleUserDefinedFlashParams=function(_56e,type){
var _570=document.getElementById(_56e.id+"_extendData");
if(_570==null||_570.childNodes==null||!isFlashSupported()){
return;
}
var _571=_570.childNodes;
var _572=false;
if(_571!=null){
var _573=null;
for(var k=0;k<_571.length;k++){
var _575=_571[k];
if(_575.tagName!=null&&(_575.tagName.toLowerCase()=="object"||_575.tagName.toLowerCase()=="video")){
_573=_575;
var _576=_573.childNodes;
for(var i=0;i<_576.length;i++){
var _575=_576[i];
if(_575.tagName!=null&&_575.tagName.toLowerCase()=="param"){
_572=true;
var _578=_575.getAttribute("name");
if(_578=="flashvars"){
var _579=_575.getAttribute("value");
var _57a=0;
var _57b=_579;
do{
var _57c=_57b.indexOf("&");
var _57d;
if(_57c>0){
_57d=_57b.substring(_57a,_57c);
}else{
_57d=_57b;
}
if(_57d.indexOf("=")>0){
var _57e=_57d.substring(0,_57d.indexOf("="));
var _57f=_57d.substring(_57d.indexOf("=")+1);
if(_57e!=""||_57f!=""){
_56e[_57e]=resolveSource(_57f);
}
}
_57a=_57c+1;
_57b=_57b.substring(_57a);
}while(_57c>0);
}
}
}
}
}
return _572;
}
};
function isFlashSupported(){
return swfobject.hasFlashPlayerVersion("1");
}
function isFlashFileFormatSupported(_580){
if(_580.indexOf("rtmp")==0){
return true;
}
var _581=["flv","f4v","f4m","m3u","mp4","swf","mpeg-4","m4v","f4f","3gpp","mp3","3gpp2","pbg","gif","jpg","jpeg","aac","speex","nellymoser","QuickTime"];
var _582=_580.lastIndexOf(".");
var _583=_580.substring(_582+1,_580.length);
_583=_583.toLowerCase();
for(var i=0;i<_581.length;i++){
if(_581[i]==_583){
return true;
}
}
return false;
}
function isHTMLFileFormatSupported(_585){
if(_585==null){
return false;
}
var _586=["webm","mp4","ogv"];
var _587=_585.lastIndexOf(".");
var _588=_585.substring(_587+1,_585.length);
_588=_588.toLowerCase();
var elem=document.createElement("video");
var ogg=elem.canPlayType("video/ogg; codecs=\"theora\"");
var h264="video/mp4; codecs=\"avc1.42E01E";
var mp4=elem.canPlayType(h264+"\"")||elem.canPlayType(h264+", mp4a.40.2\"");
var webm=elem.canPlayType("video/webm; codecs=\"vp8, vorbis\"");
for(var i=0;i<_586.length;i++){
if(_586[i]==_588){
if(_588=="ogv"){
return ogg;
}else{
if(_588=="webm"){
return webm;
}else{
if(_588=="mp4"){
return mp4;
}
}
}
}
}
return false;
}
function getWrapper(name){
var _590=$MP.playerWrapperMap[name];
if(_590==null||typeof (_590)=="undefined"){
return $MP.playerWrapperMap[name+"_strobemediaplayback-video"];
}
return _590;
}
function getFuncMap(name){
var _592=$MP.jsFunctionMap[name];
if(_592==null||typeof (_592)=="undefined"){
return $MP.jsFunctionMap[name+"_strobemediaplayback-video"];
}
return _592;
}
ColdFusion.MediaPlayer.setMute=function(name,mute){
if($MP.bindInfoMap[name]!=null){
var _595=getBindInfo(name);
if(_595==null){
return;
}
_595.mute=mute;
return;
}
var _596=$MP.getPlayer(name);
var _597=$MP.getType(name);
var _598=getWrapper(name);
if(_597=="html"){
_596.muted=mute;
if(mute){
_598.volumeHigh.css("background-position","0px -72px");
_598.volumeSlider.slider("value",0);
}else{
handleChangeVolume(name,_596.volume);
}
}else{
if(_597=="flash"){
_596.setMuted(mute);
}
}
};
function resolveSource(src){
if(src==null){
return null;
}
if(src.charAt(0)!="/"&&src.indexOf("://")<0){
var _59a="";
var _59b=document.location.href;
if(_59b||_59b.indexOf("/")>-1){
_59a=_59b.substring(0,_59b.lastIndexOf("/")+1);
}
var _59c=_59a+src;
var _59d=_59c.split("/");
var _59e=new Array();
var _59f=0;
for(var i=0;i<_59d.length;i++){
if(_59d[i]==".."){
_59e[--_59f]="";
}else{
_59e[_59f++]=_59d[i];
}
}
src=_59e[0];
for(var i=1;i<_59f;i++){
src=src+"/"+_59e[i];
}
}
if(src.indexOf("/")==0){
src=$MP.baseURI+src;
}
return src;
}
ColdFusion.MediaPlayer.getPlayer=function(name){
var _5a2=$MP.playerMap[name];
if(_5a2==null||typeof (_5a2)=="undefined"){
_5a2=$MP.playerMap[name+"_strobemediaplayback-video"];
if(_5a2==null||typeof (_5a2)=="undefined"){
ColdFusion.handleError(null,"mediaplayer.getplayer.notfound","widget",[name],null,null,true);
}
}
return _5a2;
};
ColdFusion.MediaPlayer.setTitle=function(name,_5a4){
if(_5a4==null){
ColdFusion.handleError(null,"mediaplayer.settitle.invalidtitle","widget",[name],null,null,true);
}
var _5a5=$MP.titleDataMap[name];
if(_5a5==null){
_5a5={};
$MP.titleDataMap[name]=_5a5;
}
var _5a6=document.getElementById(name+"_videoTitle");
if(_5a6==null){
var _5a7="<div id=\""+name+"_videoTitle\">";
$("#"+name+"_videoContainer").prepend(_5a7);
}
_5a5.hideTitle=false;
_5a5.title=_5a4;
handleTitle(name,_5a4,_5a5);
};
ColdFusion.MediaPlayer.setSource=function(name,src){
if(src==null||src=="undefined"){
ColdFusion.handleError(null,"mediaplayer.setsource.invalidsource","widget",[name],null,null,true);
}
if($MP.bindInfoMap[name]!=null){
var _5aa=getBindInfo(name);
if(_5aa==null){
return;
}
_5aa.player_options.src=resolveSource(src);
if(isFlashFileFormatSupported(src)&&isFlashSupported()){
_5aa.player_options.favorFlashOverHtml5Video=true;
}else{
_5aa.player_options.favorFlashOverHtml5Video=false;
}
_5aa.videoTitle=getVideoTitle(src);
return;
}
var _5ab=$MP.getPlayer(name);
var _5ac=$MP.getType(name);
src=resolveSource(src);
var _5ad=getWrapper(name);
var _5ae,jsFunctionMap;
if(_5ad!=null&&_5ad.errorwindow!=null){
_5ad.errorwindow.html("");
_5ad.errorwindow.hide();
_5ae=$MP.playerOptionsMap[_5ad.options.id];
}else{
_5ae=$MP.playerOptionsMap[name+"_"+"strobemediaplayback-video"];
jsFunctionMap=$MP.jsFunctionMap[name+"_"+"strobemediaplayback-video"];
}
if(_5ae==null){
_5ae=$MP.defaultOptions;
}
var _5af={"tablet":{"name":_5ae.id+"_"+"strobemediaplayback-video"},"smartphone":{"startSize":{"width":360,"height":200},"name":_5ae.id+"_"+"strobemediaplayback-video"},"default":{"startSize":{"width":+_5ae.width,"height":+_5ae.height},"name":_5ae.id+"_"+"strobemediaplayback-video"}};
if(_5ac=="html"){
if(isHTMLFileFormatSupported(src)){
_5ab.src=src;
_5ab.load();
_5ab.pause();
_5ad.playOverlay.fadeIn(600);
_5ad.playtoggle.removeClass("paused");
_5ad.slider.css({"left":"0%"});
_5ad.playedbar.css({"width":"0%"});
_5ad.currenttime.html("0:00");
_5ad.duration.html("0:00");
var css={"left":"0%","width":"0%"};
_5ad.bufferbar.removeClass("done");
_5ad.bufferbar.css(css);
var _5b1=$MP.titleDataMap[_5ae.id];
handleTitle(name,src,_5b1);
}else{
if(isFlashFileFormatSupported(src)&&isFlashSupported()){
_5ae.isHTML5=false;
_5ae.favorFlashOverHtml5Video=true;
_5ae.src=src;
var _5b1=$MP.titleDataMap[_5ae.id];
if(_5b1.hideTitle!=null&&!_5b1.hideTitle){
_5ae.wmode="opaque";
}
strobeMediaPlayback.draw(_5ae.id+"_"+"strobemediaplayback-video",_5af,_5ae);
var _5b2=$("#"+_5ae.id+"_"+"strobemediaplayback-video");
var _5b3=_5b2.find("video");
var _5b4=_5b3.get(0);
var _5b5=$("#"+_5ae.id+"_"+"strobemediaplayback-video  .html5player").strobemediaplaybackhtml5(_5ae,_5ad.jsCallbackFunctions);
$MP.playerMap[_5ae.id]=_5b4;
$MP.playerWrapperMap[_5ae.id]=_5b5;
handleTitle(_5ae.id,_5ae.src,_5b1);
}
}
}else{
if(_5ac=="flash"){
if(isFlashFileFormatSupported(src)&&isFlashSupported()){
_5ab.setMediaResourceURL(src);
handleTitle(name,src,$MP.titleDataMap[id]);
}else{
if(isHTMLFileFormatSupported(src)){
var id=_5ae.id+"_strobemediaplayback-video";
$("#"+id).replaceWith("<div  id=\""+id+"\"></div>");
$("#"+id).css("visibility","visible");
_5ae.isHTML5=true;
_5ae.favorFlashOverHtml5Video=false;
_5ae.src=src;
strobeMediaPlayback.draw(id,_5af,_5ae);
var _5b2=$("#"+id);
var _5b3=_5b2.find("video");
var _5b4=_5b3.get(0);
if(_5b4==null){
return;
}
var _5b7=getFuncMap(id);
var _5b5=$("#"+id+"  .html5player").strobemediaplaybackhtml5(_5ae,_5b7);
$MP.playerMap[_5ae.id]=_5b4;
$MP.playerWrapperMap[_5ae.id]=_5b5;
handlePlayoverlay(_5ae.id,_5ae.width,_5ae.height);
handleErrorElement(_5ae.id,_5ae.width,_5ae.height);
_5b5.playOverlay.css("display","block");
handleTitle(_5ae.id,_5ae.src,$MP.titleDataMap[id]);
_5b4.load();
if(_5ae.autoPlay==false){
_5b4.pause();
}
}
}
}
}
};
function getBindInfo(name){
var _5b9=$MP.bindInfoMap[name];
if(_5b9!=null){
return _5b9;
}
return;
}
function handleBindElements(_5ba){
if(_5ba!=null){
if(_5ba.bindEvent==null||_5ba.bindEvent.toLowerCase()=="onclick"){
bindFancyBox(false,false,_5ba.bindElement,_5ba.player_options,_5ba.type,_5ba.jsFuncc,_5ba.videoContent,_5ba.videoTitle);
}else{
var _5bb=document.getElementById(_5ba.bindElement);
var _5bc=_5ba.bindEvent.substring(2);
$("#"+_5ba.bindElement).live(_5bc.toLowerCase(),function(e){
bindFancyBox(true,false,_5ba.bindElement,_5ba.player_options,_5ba.type,_5ba.jsFuncc,_5ba.videoContent,_5ba.videoTitle);
});
}
}
}
function handleChangeVolume(name,_5bf){
var _5c0=$MP.getPlayer(name);
var _5c1=$MP.getType(name);
if(_5c1=="html"){
if(_5c0.muted){
_5c0.muted=false;
}
_5c0.volume=_5bf;
var _5c2=getWrapper(name);
var _5c3=_5c2.volumeSlider;
_5c3.slider("value",_5bf*100);
handleVolumeChangeUI(name,_5bf);
}else{
if(_5c1=="flash"){
_5c0.setVolume(_5bf);
}
}
}
ColdFusion.MediaPlayer.setVolume=function(name,_5c5){
if(_5c5<=0){
ColdFusion.handleError(null,"mediaplayer.setvolume.invalidvalue","widget",[name],null,null,true);
}
if($MP.bindInfoMap[name]!=null){
var _5c6=getBindInfo(name);
if(_5c6==null){
return;
}
_5c6.volume=_5c5;
return;
}
handleChangeVolume(name,_5c5);
};
ColdFusion.MediaPlayer.resize=function(name,_5c8,_5c9){
if(_5c8<=0||_5c9<=0){
ColdFusion.handleError(null,"mediaplayer.resize.invalidvalue","widget",[name],null,null,true);
}
if($MP.bindInfoMap[name]!=null){
var _5ca=getBindInfo(name);
if(_5ca==null){
return;
}
_5ca.player_options.width=_5c8;
_5ca.player_options.height=_5c9;
return;
}
var _5cb=false;
var _5cc=$MP.getPlayer(name);
var _5cd=$MP.getType(name);
var _5ce=getWrapper(name);
_5cc.width=_5c8;
_5cc.height=_5c9;
if(_5ce!=null){
_5ce.options.width=_5c8;
_5ce.options.height=_5c9;
_5ce.controlbar.css("width",_5c8-1.5);
if(_5ce.options.width>180){
_5ce.progressbar.css("width",_5c8-180);
_5ce.trackswidth=_5c8-180;
}else{
_5ce.progressbar.css("width","50%");
_5ce.trackswidth="50%";
}
handlePlayoverlay(name,_5c8,_5c9);
handleErrorElement(name,_5c8,_5c9);
}
$("#"+name+"_"+"videoContainer").css("width",_5c8);
$("#"+name+"_"+"videoContainer").css("height",_5c9);
if(_5cc.paused==false){
_5ce.playOverlay.hide();
}
};
ColdFusion.MediaPlayer.getType=function(name){
var elem=document.getElementById(name);
if(elem==null||elem=="undefined"){
elem=document.getElementById(name+"_strobemediaplayback-video");
if(elem==null||typeof (elem)=="undefined"){
return "unknown";
}
}
var type=elem.nodeName;
if(type==null){
return "unknown";
}
type=type.toLowerCase();
if(type=="video"){
return "html";
}else{
if(type=="object"){
return "flash";
}else{
return "unknown";
}
}
};
ColdFusion.MediaPlayer.startPlay=function(name){
if($MP.bindInfoMap[name]!=null){
var _5d3=getBindInfo(name);
if(_5d3==null){
return;
}
_5d3.startPlay=true;
return;
}
var _5d4=$MP.getPlayer(name);
var _5d5=$MP.getType(name);
if(_5d5=="html"){
_5d4.play();
}else{
if(_5d5=="flash"){
_5d4.play2();
}
}
};
ColdFusion.MediaPlayer.stopPlay=function(name){
if($MP.bindInfoMap[name]!=null){
var _5d7=getBindInfo(name);
if(_5d7==null){
return;
}
_5d7.stopPlay=true;
return;
}
var _5d8=$MP.getPlayer(name);
_5d8.pause();
};
ColdFusion.MediaPlayer.logError=function(name,_5da){
if(name==null||_5da==null){
return;
}
var _5db=$MP.playerWrapperMap[name];
if(_5db==null){
_5db=$MP.playerWrapperMap[name+"_strobemediaplayback-video"];
if(_5db==null){
return;
}
}
_5db.errorwindow.html(_5da);
_5db.errorwindow.show();
_5db.playOverlay.hide();
};
function handlePlayoverlay(name,_5dd,_5de){
if(!isDesktop){
return;
}
var _5df=getWrapper(name);
_5df.playOverlay.css("left","");
_5df.playOverlay.css("top","");
_5df.playOverlay.css("left",(_5dd-116)/2+"px");
_5df.playOverlay.css("top",(_5de-107)/2+"px");
}
function handleErrorElement(name,_5e1,_5e2){
var _5e3=getWrapper(name);
_5e3.playOverlay.css("display","none");
_5e3.errorwindow.css("left","");
_5e3.errorwindow.css("top","");
_5e3.errorwindow.css("display","none");
var _5e4=_5e3.controlbar;
var _5e5=0;
if(_5e4!=null){
_5e5=_5e4.css("height");
if(_5e5!=null&&_5e5.indexOf("px")!=-1){
_5e5=_5e5.substring(0,_5e5.indexOf("px"));
}else{
_5e5=0;
}
}
_5e3.errorwindow.css("margin-top",_5e2/2-_5e5+"px");
}
function handleTitleResize(id,_5e7,_5e8){
$("#"+id+"_videoTitle").css("width","");
$("#"+id+"_videoTitle").css("width",_5e7+"px");
}
function handleTitle(_5e9,_5ea,_5eb){
var _5ec=document.getElementById(_5e9+"_"+"videoTitle");
if(_5ec==null){
_5e9=_5e9.substring(0,_5e9.indexOf("_strobemediaplayback-video"));
_5ec=document.getElementById(_5e9+"_"+"videoTitle");
}
var _5ed=document.getElementById("fancybox-title-float-main");
if(_5ec!=null){
if(_5eb==null){
_5eb=$MP.titleDataMap[_5e9];
if(_5eb==null||_5eb.hideTitle){
var _5ee=_5ec.parentNode;
_5ee.removeChild(_5ec);
return;
}
}else{
if(_5eb.hideTitle){
var _5ee=_5ec.parentNode;
_5ee.removeChild(_5ec);
return;
}
}
var _5ef=_5eb.title;
if(_5eb==null||_5eb.title==null||_5eb.title.trim()==""){
_5ef=getVideoTitle(_5ea);
}
if(_5ef!=""){
_5ec.innerHTML=_5ef;
}else{
return;
}
$("#"+_5e9+"_"+"videoTitle").css("position","absolute");
$("#"+_5e9+"_"+"videoTitle").css("z-index",2);
if(_5eb==null||_5eb.title_text_color==null){
$("#"+_5e9+"_"+"videoTitle").css("color","white");
}else{
$("#"+_5e9+"_"+"videoTitle").css("color",_5eb.title_text_color);
}
if(_5eb!=null&&_5eb.title_bgcolor!=null){
$("#"+_5e9+"_"+"videoTitle").css("background-color",_5eb.title_bgcolor);
}
$("#"+_5e9+"_"+"videoTitle").css("font-weight","bold");
$("#"+_5e9+"_"+"videoTitle").css("font-family","Arial,Helvetica,sans-serif");
$("#"+_5e9+"_"+"videoTitle").css("font-size","13px");
$("#"+_5e9+"_"+"videoTitle").css("word-wrap","break-word");
if(_5ec.style.backgroundColor==null||_5ec.style.backgroundColor==""){
$("#"+_5e9+"_"+"videoTitle").css("margin-left","5px");
}
$("#"+_5e9+"_"+"videoTitle").show();
$("#"+_5e9+"_"+"strobemediaplayback").css("z-index",1);
}else{
if(_5ed!=null&&_5ea!=null){
$("#fancybox-title-float-main").text(_5ea);
}
}
}
function getVideoTitle(_5f0){
var _5f1=null;
if(_5f0!=null&&_5f0!=""){
var _5f2=_5f0.lastIndexOf("/");
if(_5f2==-1){
_5f2=_5f0.lastIndexOf("\\");
}
if(_5f2==-1){
_5f1=_5f0;
}
if(_5f1==null){
_5f1=_5f0.substring(_5f2+1,_5f0.length);
}
}
if(_5f1==null||_5f1.indexOf(".")<0){
return _5f0;
}else{
return _5f1;
}
}
function handlebackgroundColor(_5f3){
if(_5f3.backgroundColor==null){
return;
}
var _5f4=document.getElementById(_5f3.id);
if(_5f4==null){
return;
}
_5f4.setAttribute("style","background-color:"+_5f3.backgroundColor+";");
}
function handleBorderStyle(_5f5,_5f6){
if(_5f6.hideBorder){
return;
}
var _5f7="#fff";
if(_5f6.bgColor){
_5f7=_5f6.bgColor;
}
var _5f8=document.getElementById(_5f5+"_"+"videoContainer");
if(_5f8==null){
_5f5=_5f5.substring(0,_5f5.indexOf("_"));
}
if(_5f6.border_left!=null){
$("#"+_5f5+"_"+"videoContainer").css("border-left",_5f6.border_left+"px"+" solid "+_5f7);
}
if(_5f6.border_right!=null){
$("#"+_5f5+"_"+"videoContainer").css("border-right",_5f6.border_right+"px"+" solid "+_5f7);
}
if(_5f6.border_top!=null){
$("#"+_5f5+"_"+"videoContainer").css("border-top",_5f6.border_top+"px"+" solid "+_5f7);
}
if(_5f6.border_bottom!=null){
$("#"+_5f5+"_"+"videoContainer").css("border-bottom",_5f6.border_bottom+"px"+" solid "+_5f7);
}
}
function handleControlsStyle(_5f9,_5fa){
var _5fb=getWrapper(_5f9);
if(_5fa.controlbar_bgcolor!=null){
_5fb.controlbar.css("background-color",_5fa.controlbar_bgcolor);
}
if(_5fa.controls_color!=null){
_5fb.playtoggle.css("background-color",_5fa.controls_color);
_5fb.slider.css("background-color",_5fa.controls_color);
_5fb.fullview.css("background-color",_5fa.controls_color);
_5fb.currenttime.css("color",_5fa.controls_color);
_5fb.duration.css("color",_5fa.controls_color);
_5fb.seekbar.css("background-color",_5fa.controls_color);
_5fb.volumeHigh.css("background-color",_5fa.controls_color);
}
if(_5fa.progress_bgcolor!=null){
_5fb.bufferbar.css("background-color",_5fa.progress_bgcolor);
}
if(_5fa.progress_color!=null){
_5fb.playedbar.css("background-color",_5fa.progress_color);
}
}
function triggerHandler(id,_5fd,_5fe){
if(_5fd=="onJavaScriptBridgeCreated"){
return;
}else{
if(_5fd=="play"){
var _5ff=getFuncMap(id);
var _600=$MP.videoMonitorMap[id];
if(_5ff.onStartCallback!=null&&_600.paused){
_5ff.onStartCallback(id);
_600.paused=false;
}
hideTitle(id);
}else{
if(_5fd=="pause"){
var _5ff=getFuncMap(id);
var _600=$MP.videoMonitorMap[id];
if(_5ff.onPauseCallback!=null&&!_600.paused){
_5ff.onPauseCallback(id);
_600.paused=true;
}
showTitle(id);
}else{
if(_5fd=="complete"){
var _5ff=getFuncMap(id);
if(_5ff.onComplete!=null){
_5ff.onComplete();
}
var _600=$MP.videoMonitorMap[id];
_600.paused=true;
showTitle(id);
}else{
if(_5fd=="loadedmetadata"){
var _5ff=getFuncMap(id);
if(_5ff.onLoad!=null){
_5ff.onLoad();
}
}else{
if(_5fd=="error"){
var _5ff=getFuncMap(id);
if(_5ff.onError!=null){
_5ff.onError();
}
}else{
if(_5fd=="volumechange"){
var _600=$MP.videoMonitorMap[id];
_600.muted=_5fe.muted;
}
}
}
}
}
}
}
}
function onError(_601){
var _602;
var _603;
var _604;
var _605;
if(_601.target!=null&&_601.target.tagName.toLowerCase()=="video"){
_604=getFuncMap(_601.target.id);
if(_601.target.error!=null){
_603=_601.target.error.code;
}
_605=getWrapper(_601.target.id);
}else{
if(_601.target!=null&&_601.target.tagName.toLowerCase()=="source"){
var _606=_601.target.getAttribute("src");
var _607=_601.target.getAttribute("onerror");
if(_606!=null&&_607!=null){
_603=4;
}else{
return;
}
}
var _608=_601.target.parentNode;
_604=getFuncMap(_608.id);
_605=getWrapper(_608.id);
}
if(_603==null){
return;
}
if(_604.onError!=null){
_604.onError(_603);
return;
}
switch(_603){
case 1:
_602="You aborted the video playback.";
break;
case 2:
_602="A network error caused the video download to fail part-way.";
break;
case 3:
_602="The video playback was aborted due to a corruption problem or because the video used features your browser did not support.";
break;
case 4:
_602="The video could not be loaded, either because the server or network failed or because the format is not supported.";
break;
default:
_602="An unknown error occurred.";
break;
}
_605.playOverlay.css("display","none");
_605.errorwindow.html(_602);
_605.errorwindow.show();
}
function onFlashEmbedComplete(_609){
var _60a=$("#"+_609.id);
var _60b=_60a.get(0);
$MP.playerMap[_609.id]=_60b;
}
function removejscssfile(_60c,_60d){
var _60e=(_60d=="js")?"script":(_60d=="css")?"link":"none";
var _60f=(_60d=="js")?"src":(_60d=="css")?"href":"none";
var _610=document.getElementsByTagName(_60e);
for(var i=_610.length;i>=0;i--){
if(_610[i]&&_610[i].getAttribute(_60f)!=null&&_610[i].getAttribute(_60f).indexOf(_60c)!=-1){
_610[i].parentNode.removeChild(_610[i]);
}
}
}
