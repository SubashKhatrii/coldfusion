/*ADOBE SYSTEMS INCORPORATED
Copyright 2012 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.Map){
ColdFusion.Map={};
}
var coldFusion_markerObjCache=new Array();
var $MAP=ColdFusion.Map;
$MAP.statusCodeObject={code200:"A directions request could not be successfully parsed. For example, the request may have been rejected if it contained more than the maximum number of waypoints allowed.",code400:"A directions request could not be successfully parsed. For example, the request may have been rejected if it contained more than the maximum number of waypoints allowed.",code500:"A geocoding or directions request could not be successfully processed, yet the exact reason for the failure is not known",code601:"The HTTP query parameter was either missing or had no value. For geocoding requests, this means that an empty address was specified as input. For directions requests, this means that no query was specified in the input",code602:"No corresponding geographic location could be found for the specified address. This may be due to the fact that the address is relatively new, or it may be incorrect",code603:"The geocode for the given address or the route for the given directions query cannot be returned due to legal or contractual reasons",code604:"The GDirections object could not compute directions between the points mentioned in the query. This is usually because there is no route available between the two points, or because we do not have data for routing in that region",code610:"This request was invalid.",code620:"The webpage has gone over the requests limit in too short a period of time."};
ColdFusion.Map._init=function(_612,_613,_614,type,_616,_617,_618,_619,_61a,_61b,_61c,_61d,_61e,_61f,_620,_621,_622,_623,_624,_625,_626,_627,_628,_629,_62a,_62b,_62c,_62d,_62e,_62f,_630){
var _631=null;
if(navigator.geolocation){
navigator.geolocation.getCurrentPosition(function(_632){
if(_630<1){
_625=_632.coords.latitude;
_626=_632.coords.longitude;
_624=null;
}
if(_630!==0){
if(_630<0){
_630=_630*-1;
}
_62a[_630-1].latitude=_632.coords.latitude;
_62a[_630-1].longitude=_632.coords.longitude;
}
_631=ColdFusion.Map.init(_612,_613,_614,type,_616,_617,_618,_619,_61a,_61b,_61c,_61d,_61e,_61f,_620,_621,_622,_623,_624,_625,_626,_627,_628,_629,_62a,_62b,_62c,_62d,_62e,_62f);
},function(_633){
_631=ColdFusion.Map.init(_612,_613,_614,type,_616,_617,_618,_619,_61a,_61b,_61c,_61d,_61e,_61f,_620,_621,_622,_623,_624,_625,_626,_627,_628,_629,_62a,_62b,_62c,_62d,_62e,_62f);
});
}else{
_631=ColdFusion.Map.init(_612,_613,_614,type,_616,_617,_618,_619,_61a,_61b,_61c,_61d,_61e,_61f,_620,_621,_622,_623,_624,_625,_626,_627,_628,_629,_62a,_62b,_62c,_62d,_62e,_62f);
}
return _631;
};
ColdFusion.Map.init=function(_634,_635,_636,type,_638,_639,_63a,_63b,_63c,_63d,_63e,_63f,_640,_641,_642,_643,_644,_645,_646,_647,_648,_649,_64a,_64b,_64c,_64d,_64e,_64f,_650,_651){
var _652={divName:_634,type:type,layout:"fit",renderTo:_634,centerAddress:_646,centerLatitude:_647,centerLongitude:_648,markerItems:_64c,onLoad:_64d,onError:_64e,showCenterMarker:_641,showAllMarker:_642,markerColor:_64a,markerIcon:_64b,markerBindListener:_650,initShow:_63b};
if(_636!=null&&typeof (_636)!="undefined"){
_652.width=_636;
}else{
_652.width=400;
}
if(_635!=null&&typeof (_635)!="undefined"){
_652.height=_635;
}else{
_652.height=400;
}
if(_638!=null&&typeof (_638)!="undefined"){
_652.zoomLevel=_638;
}else{
_652.zoomLevel=3;
}
_652.hideBorders=_63a;
if(!_63a){
if(_639==null||typeof _639==="undefined"||_639.length==0){
_639=" ";
}
_652.title=_639;
_652.collapsible=_63c;
}
if(_64a==null&&_64b==null){
_652.markerColor="#00FF00";
}
var _653=new Ext.Panel(_652);
ColdFusion.objectCache[_634]=_652;
_652.mapPanel=_653;
var _654=["enableDragging"];
var swz=false;
if(_63d){
swz=true;
}
if(_63e){
_654.push("enableDoubleClickZoom");
}else{
_654.push("disableDoubleClickZoom");
}
if(_63f){
_654.push("enableContinuousZoom");
}else{
_654.push("disableContinuousZoom");
}
var _656=["NonExistantControl"];
if(_640){
_656.push("scaleControl");
}
var mtc=false;
var mtco="";
if(_644&&_644.toUpperCase()=="BASIC"){
mtc=true;
mtco="google.maps.MapTypeControlStyle.HORIZONTAL_BAR";
}else{
if(_644&&_644.toUpperCase()=="ADVANCED"){
mtc="true";
mtco=google.maps.MapTypeControlStyle.DROPDOWN_MENU;
}
}
if(_643){
_656.push("overviewMapControl");
}
var zc=false;
var zco="";
if(_645!=null&&_645!="undefined"){
_645=_645.toUpperCase();
switch(_645){
case "SMALL":
zco=google.maps.ZoomControlStyle.SMALL;
zc=true;
break;
case "SMALL3D":
zco=google.maps.ZoomControlStyle.SMALL;
zc=true;
break;
case "LARGE":
zco=google.maps.ZoomControlStyle.LARGE;
zc=true;
break;
case "LARGE3D":
zco=google.maps.ZoomControlStyle.LARGE;
zc=true;
break;
}
}
var _65b=[];
for(i=0;i<_652.markerItems.length;i++){
var _65c=$MAP.parseMarker(_652.markerItems[i],_634);
_65b.push(_65c);
}
if(_649==null||typeof _649==="undefined"){
_649="";
}
var _65d={marker:{title:_649,iscenter:true}};
if(_652.markerColor!=null&&typeof _652.markerColor!="undefined"){
_65d.marker.markercolor=_652.markerColor;
}else{
if(_652.markerIcon!=null&&typeof _652.markerIcon!="undefined"){
_65d.marker.markericon=_652.markerIcon;
}
}
if(_64f===true){
_65d.listeners={click:$MAP.markerOnClickHandler};
if(_651!=null){
_65d.marker.markerwindowcontent=_651;
}else{
_65d.marker.bindcallback=_650;
}
_65d.marker.name=_634;
}
if(_652.centerAddress!=null&&typeof _652.centerAddress==="string"){
_65d.geoCodeAddr=_652.centerAddress;
_65d.marker.address=_652.centerAddress;
}else{
_65d.lat=_652.centerLatitude;
_65d.lng=_652.centerLongitude;
_65d.marker.address=_652.centerAddress;
}
var _65e=false;
if(_644!=null&&typeof _644=="string"&&_644.toUpperCase()=="ADVANCED"){
_65e=true;
}
var _65f=new Ext.ux.GMapPanel({xtype:"gmappanel",region:"center",zoomLevel:_652.zoomLevel,gmapType:_652.type,mapConfOpts:_654,mapControls:_656,setCenter:_65d,markers:_65b,border:!_652.hideBorders,onLoadhandler:$MAP.onLoadCompleteHandler,onErrorhandler:_64e,name:_652.divName,noCenterMarker:!_641,showAllMarker:_642,advanceMapTypeControl:_65e,initShow:_63b,zc:zc,zco:zco,mtc:mtc,mtco:mtco,swz:swz});
_653.add(_65f);
_652.mapPanelObject=_65f;
if(_63b===false){
_653.hide();
}else{
_653.doLayout();
}
ColdFusion.Log.info("map.initialized","widget",[_634]);
return _653;
};
$MAP.addMarker=function(name,_661){
var _662=$MAP.getMapPanelObject(name);
var _663=$MAP.parseMarker(_661,name);
var _664=[];
_664.push(_663);
_662.addMarkers(_664);
ColdFusion.Log.info("map.addmarker.markeradded","widget",[name,_664.length]);
};
$MAP.setCenter=function(name,_666){
var _667=$MAP.getMapPanelObject(name);
var lat;
var lng;
if(_666.latitude&&_666.longitude){
if(typeof _666.latitude!="number"||typeof _666.longitude!="number"){
ColdFusion.handleError(null,"map.setcenter.latlngnonnumeric","widget",[name,_666.latitude,_666.longitude],null,null,true);
}else{
lat=_666.latitude;
lng=_666.longitude;
}
var _66a=new google.maps.LatLng(lat,lng);
_667.getMap().setCenter(_66a,_667.zoomLevel);
var _66b={};
_66b.markercolor="#00FF00";
_667.addMarker(new google.maps.LatLng(_666.latitude,_666.longitude),_66b,null,true);
}else{
if(_666.address){
if(typeof _666.address!="string"){
ColdFusion.handleError(null,"map.setcenter.addressnotstring","widget",[name,_666.address],null,null,true);
}else{
_667.geoCodeLookup(_666.address,null,null,true);
}
}else{
ColdFusion.handleError(null,"map.setcenter.invalidcenter","widget",[name],null,null,true);
}
}
ColdFusion.Log.info("map.setcenter.centerset","widget",[name]);
};
$MAP.getLatitudeLongitude=function(_66c,_66d){
geocoder=new google.maps.Geocoder();
if(_66d==null||!typeof _66d==="function"){
_66d=$MAP.LatitudeLongitudeHandler;
}
geocoder.geocode({"address":_66c},_66d);
};
$MAP.addEvent=function(name,_66f,_670,_671){
if(_66f=="singlerightclick"){
_66f="rightclick";
}
if(_66f=="maptypechanged"){
_66f="maptypeid_changed";
}
var _672=$MAP.getMapPanelObject(name);
_672.addEventToMap(_66f,_670,_671);
};
$MAP.setZoomLevel=function(name,_674){
var _675=$MAP.getMapPanelObject(name);
_675.zoomLevel=_674;
_675.getMap().setZoom(_674);
};
$MAP.getMapObject=function(name){
var _677=$MAP.getMapPanelObject(name);
if(_677!=null){
return _677.getMap();
}
};
$MAP.parseMarker=function(_678,_679){
var _67a={};
if(_678.latitude&&_678.longitude){
if(typeof _678.latitude!="number"||typeof _678.longitude!="number"){
ColdFusion.handleError(null,"map.marker.latlngnonnumeric","widget",[_678.latitude,_678.longitude],null,null,true);
}else{
_67a.lat=_678.latitude;
_67a.lng=_678.longitude;
}
}else{
if(_678.address!=null){
if(typeof _678.address!="string"){
ColdFusion.handleError(null,"map.marker.addressnotstring","widget",[_678.address],null,null,true);
}else{
_67a.address=_678.address;
}
}
}
var _67b={};
if(_678.tip==null){
_67b.title="";
}else{
_67b.title=_678.tip;
}
if(_678.markercolor!=null&&typeof _678.markercolor!="undefined"){
_67b.markercolor=_678.markercolor;
}else{
if(_678.markericon!=null&&typeof _678.markericon!="undefined"){
_67b.markericon=_678.markericon;
}
}
if(_678.showmarkerwindow===true||_678.markerwindowcontent!=null){
var _67c=ColdFusion.objectCache[_679];
var _67d;
if(_67c!=null||typeof (_67c)!="undefined"){
_67d=_67c.markerBindListener;
}
if(_67d!=null||_678.markerwindowcontent!=null){
_67a.listeners={click:$MAP.markerOnClickHandler};
if(_678.markerwindowcontent!=null){
_67b.markerwindowcontent=_678.markerwindowcontent;
}else{
_67b.bindcallback=_67d;
}
_67b.name=_678.name;
}
}
_67a.marker=_67b;
return _67a;
};
$MAP.onErrorHandler=function(name,_67f){
var _680=ColdFusion.objectCache[name];
var _681=$MAP.statusCodeObject;
var _682=$MAP.retrieveStatueMessage(_67f);
var _683=_680.onError;
if(_683!=null&&typeof _683==="function"){
_683.call(null,_67f,_682);
}else{
alert("Error: "+_682);
}
ColdFusion.handleError(null,"map.loadMap.error","map",[name,_67f,_682],null,null,true);
};
$MAP.onLoadCompleteHandler=function(name){
var _685=ColdFusion.objectCache[name];
var _686=_685.onLoad;
if(_686!=null&&typeof _686==="function"){
_686.call();
}
};
$MAP.retrieveStatueMessage=function(code){
var _688;
switch(code){
case "ZERO_RESULTS":
_688=$MAP.statusCodeObject.code602;
break;
case "OVER_QUERY_LIMIT":
_688=$MAP.statusCodeObject.code620;
break;
case "REQUEST_DENIED":
_688=$MAP.statusCodeObject.code610;
break;
case "INVALID_REQUEST":
_688=$MAP.statusCodeObject.code610;
break;
}
return _688;
};
var currentopenwindow="";
$MAP.markerOnClickHandler=function(_689){
coldFusion_markerObjCache[this.name]=this.scope.marker;
if(this.bindcallback!=null&&typeof this.bindcallback=="function"){
var _68a=this.address;
if(_68a==null||typeof _68a=="undefined"){
_68a="";
}
this.bindcallback.call(null,this.name,_689.latLng.lat(),_689.latLng.lng(),_68a);
}else{
if(this.scope.statictext!=null&&typeof this.scope.statictext!="undefined"){
var me=this,infoWindow=new google.maps.InfoWindow({content:this.scope.statictext,position:this.scope.marker.position});
if(currentopenwindow!=""){
currentopenwindow.close();
}
infoWindow.open(this.scope.marker.map);
currentopenwindow=infoWindow;
}
}
};
ColdFusion.Map.loadMarkerWindowInfo=function(data,_68d){
var _68e=coldFusion_markerObjCache[_68d._cf_marker_name];
var me=this,infoWindow=new google.maps.InfoWindow({content:data,position:_68e.position});
if(currentopenwindow!=""){
currentopenwindow.close();
}
infoWindow.open(_68e.map);
currentopenwindow=infoWindow;
};
ColdFusion.Map.bindOnErrorHandler=function(data,_691){
ColdFusion.handleError(null,"map.markerbind.binderror","widget",[data],null,null,true);
};
$MAP.getMapPanelObject=function(name){
var _693=ColdFusion.objectCache[name];
if(_693==null||typeof (_693)=="undefined"){
ColdFusion.handleError(null,"map.getmappanelobject.notfound","widget",[name],null,null,true);
}
return _693.mapPanelObject;
};
$MAP.refresh=function(name){
var _695=ColdFusion.objectCache[name];
if(_695==null||typeof (_695)=="undefined"){
ColdFusion.handleError(null,"map.refresh.notfound","widget",[name],null,null,true);
}
_695.mapPanel.doLayout();
};
$MAP.hide=function(name){
var _697=ColdFusion.objectCache[name];
if(_697==null||typeof (_697)=="undefined"){
ColdFusion.handleError(null,"map.hide.notfound","widget",[name],null,null,true);
}
_697.mapPanel.hide();
};
$MAP.show=function(name){
var _699=ColdFusion.objectCache[name];
if(_699==null||typeof (_699)=="undefined"){
ColdFusion.handleError(null,"map.show.notfound","widget",[name],null,null,true);
}
_699.mapPanel.show();
_699.mapPanel.doLayout();
};
