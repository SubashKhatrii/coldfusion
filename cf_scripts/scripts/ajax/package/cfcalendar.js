/*ADOBE SYSTEMS INCORPORATED
Copyright 2012 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.Calendar){
ColdFusion.Calendar={};
}
ColdFusion.Calendar.monthNamesShort=new Array("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec");
ColdFusion.Calendar.monthNamesLong=new Array("January","February","March","April","May","June","July","August","September","October","November","December");
ColdFusion.Calendar.dayNamesShort=new Array("Sun","Mon","Tue","Wed","Thu","Fri","Sat");
ColdFusion.Calendar.dayNamesLong=new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
ColdFusion.Calendar.calTableIdCounter=0;
if(navigator.userAgent.toLowerCase().indexOf("safari")>-1){
var set_month=Date.prototype.setMonth;
Date.prototype.setMonth=function(num){
if(num<=-1){
var n=Math.ceil(-num);
var _8ef=Math.ceil(n/12);
var _8f0=(n%12)?12-n%12:0;
this.setFullYear(this.getFullYear()-_8ef);
return set_month.call(this,_8f0);
}else{
return set_month.apply(this,arguments);
}
};
}
if(!String.escape){
String.escape=function(_8f1){
return _8f1.replace(/('|\\)/g,"\\$1");
};
}
ColdFusion.Calendar.setUpCalendar=function(_8f2,mask,_8f4,_8f5,_8f6,_8f7,_8f8){
var _8f9=ColdFusion.DOM.getElement(_8f2+_8f7+"_cf_button",_8f7);
var _8fa=ColdFusion.DOM.getElement(_8f2,_8f7);
var _8fb=null;
var _8fc=null;
if(_8fa.value!=""){
_8fb=_8fa.value;
_8fc=_8fb.split("/");
}
var _8fd=_8f2+"_cf_calendar"+ColdFusion.Calendar.calTableIdCounter;
ColdFusion.Calendar.calTableIdCounter++;
var _8fe=ColdFusion.DOM.getElement(_8f2+_8f7+"_cf_container",_8f7);
var _8ff=_8fa.offsetLeft;
ColdFusion.DOM.getElement(_8f2+_8f7+"_cf_container",_8f7).style.left=_8ff;
YAHOO.widget.Calendar.IMG_ROOT=_cf_ajaxscriptsrc+"/resources/yui/";
var _900;
if(_8fc&&_8fc[0]&&_8fc[2]){
_900=new YAHOO.widget.Calendar(_8fd,_8f2+_8f7+"_cf_container",{close:true,pagedate:_8fc[0]+"/"+_8fc[2]});
}else{
_900=new YAHOO.widget.Calendar(_8fd,_8f2+_8f7+"_cf_container",{close:true});
}
_900.calendarinputid=_8f2;
_900.calendarinput=_8fa;
_900.mask=mask;
_900.formname=_8f7;
_900.cfg.setProperty("MONTHS_LONG",_8f6);
_900.cfg.setProperty("WEEKDAYS_SHORT",_8f5);
_900.cfg.setProperty("START_WEEKDAY",_8f4);
ColdFusion.objectCache[_8fd+_8f7]=_900;
_900.select(_8fb);
_900.render();
_900.hide();
_900.selectEvent.subscribe(ColdFusion.Calendar.handleDateSelect,_900,true);
YAHOO.util.Event.addListener(_8f2+_8f7+"_cf_button","click",ColdFusion.Calendar.handleCalendarLinkClick,_900,true);
if(_8f8!=null){
var year=_8f8.year;
var _902=_8f8.month;
var day=_8f8.day;
var _904=new Date(year,_902.valueOf()-1,day);
_8fa.value=ColdFusion.Calendar.createFormattedOutput(_8f2,mask,year,_902,day,_904);
}
};
ColdFusion.Calendar.openedCalendarInstance=null;
ColdFusion.Calendar.handleCalendarLinkClick=function(type,args){
var _907=args;
if(ColdFusion.Calendar.openedCalendarInstance){
ColdFusion.Calendar.openedCalendarInstance.hide();
}
if(!_907.extMask){
var _908=ColdFusion.Calendar.convertToExtMask(_907.mask);
_907.extMask=_908;
}
var _909=ColdFusion.DOM.getElement(args.calendarinputid,_907.formname).value;
var _90a=null;
if(typeof (_909)!="undefined"&&ColdFusion.trim(_909)!=""){
_90a=Ext.Date.parse(_909,_907.extMask);
}
if(_90a!=null){
_907.setMonth(_90a.getMonth());
_907.setYear(_90a.getFullYear());
_907.select(_90a);
_907.render();
}
ColdFusion.Calendar.openedCalendarInstance=_907;
_907.show();
};
ColdFusion.Calendar.handleDateSelect=function(type,args,_90d){
var _90e=args[0];
var date=_90e[0];
var year=date[0],month=date[1],day=date[2];
var _911=new Date(year,month.valueOf()-1,day);
var _912=_90d.calendarinput.value;
_90d.calendarinput.value=ColdFusion.Calendar.createFormattedOutput(_90d.calendarinputid,_90d.mask,year,month,day,_911);
ColdFusion.Event.callBindHandlers(_90d.calendarinputid,null,"change");
_90d.hide();
var node=document.getElementById(_90d.calendarinputid);
if(node){
if(node.onchange){
if(node.value!=_912){
node.onchange();
}
}
}
};
ColdFusion.Calendar.convertToExtMask=function(mask){
mask=mask.toUpperCase();
if(mask.indexOf("DD")!=-1){
mask=mask.replace(/DD/g,"d");
}
if(mask.indexOf("D")!=-1){
mask=mask.replace(/D/g,"d");
}
if(mask.indexOf("MMMM")!=-1){
mask=mask.replace(/MMMM/g,"F");
}else{
if(mask.indexOf("MMM")!=-1){
mask=mask.replace(/MMM/g,"M");
}else{
if(mask.indexOf("MM")!=-1){
mask=mask.replace(/MM/g,"m");
}else{
if(mask.indexOf("M")!=-1){
mask=mask.replace(/M/g,"m");
}
}
}
}
if(mask.indexOf("YYYY")!=-1){
mask=mask.replace(/YYYY/g,"Y");
}
if(mask.indexOf("YY")!=-1){
mask=mask.replace(/YY/g,"y");
}
if(mask.indexOf("EEEE")!=-1){
mask=mask.replace(/EEEE/g,"l");
}
if(mask.indexOf("EEE")!=-1){
mask=mask.replace(/EEE/g,"D");
}
if(mask.indexOf("E")!=-1){
mask=mask.replace(/E/g,"w");
}
return mask;
};
ColdFusion.Calendar.createFormattedOutput=function(_915,mask,year,_918,day,date){
mask=mask.toUpperCase();
year=new String(year);
_918=new String(_918);
day=new String(day);
var _91b=date.getDay();
if(mask.indexOf("DD")!=-1){
if(day.length==1){
day="0"+day;
}
mask=mask.replace(/DD/g,day);
}
if(mask.indexOf("D"!=-1)){
if(day.length!=-1&&day.charAt(0)=="0"){
day=day.charAt(1);
}
mask=mask.replace(/D/g,day);
}
if(mask.indexOf("MMMM")!=-1){
_918=ColdFusion.Calendar.monthNamesLong[_918.valueOf()-1];
mask=mask.replace(/MMMM/g,_918);
}else{
if(mask.indexOf("MMM")!=-1){
_918=ColdFusion.Calendar.monthNamesShort[_918.valueOf()-1];
mask=mask.replace(/MMM/g,_918);
}else{
if(mask.indexOf("MM")!=-1){
if(_918.length==1){
_918="0"+_918;
}
mask=mask.replace(/MM/g,_918);
}else{
if(mask.indexOf("M")!=-1){
if(_918.length!=-1&&_918.charAt(0)=="0"){
_918=_918.charAt(1);
}
mask=mask.replace(/M/g,_918);
}
}
}
}
if(mask.indexOf("YYYY")!=-1){
mask=mask.replace(/YYYY/g,year);
}
if(mask.indexOf("YY")!=-1){
year=year.substring(2);
mask=mask.replace(/YY/g,year);
}
if(mask.indexOf("EEEE")!=-1){
_91b=ColdFusion.Calendar.dayNamesLong[_91b.valueOf()];
mask=mask.replace(/EEEE/g,_91b);
}
if(mask.indexOf("EEE")!=-1){
_91b=ColdFusion.Calendar.dayNamesShort[_91b.valueOf()];
mask=mask.replace(/EEE/g,_91b);
}
if(mask.indexOf("E")!=-1){
_91b=_91b.valueOf();
_91b=new String(_91b);
if(_91b.length!=-1&&_91b.charAt(0)=="0"&&_91b.charAt(1)){
_91b=_91b.charAt(1);
}
mask=mask.replace(/E/g,_91b);
}
return mask;
};
