/*ADOBE SYSTEMS INCORPORATED
Copyright 2012 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.Tooltip){
ColdFusion.Tooltip={};
}
ColdFusion.Tooltip.setToolTipOut=function(_2b6,_2b7){
var _2b8=_2b7.tooltip;
_2b8.tooltipout=true;
};
ColdFusion.Tooltip.getToolTip=function(_2b9,_2ba){
var _2bb=ColdFusion.objectCache[_2ba.context];
if(!_2bb){
if(_2ba.style){
_2ba.styleObj=ColdFusion.Tooltip.parseStyle(_2ba.style);
}
_2bb=new YAHOO.widget.Tooltip(_2ba.context+"_cf_tooltip",_2ba);
ColdFusion.objectCache[_2ba.context]=_2bb;
_2bb.doShow(_2b9,_2ba.context);
if(_2ba._cf_url){
var _2bc=function(req,_2be){
_2be.tooltip.cfg.setProperty("text",req.responseText);
if(_2be.tooltip.tooltipout==false){
_2be.tooltip.doShow(_2be.event,_2be.id);
}
};
YAHOO.util.Event.addListener(_2ba.context,"mouseout",ColdFusion.Tooltip.setToolTipOut,{"tooltip":_2bb});
_2bb.cfg.setProperty("text",_cf_loadingtexthtml);
_2bb.doShow(_2b9,_2ba.context);
try{
ColdFusion.Log.info("tooltip.gettooltip.fetch","widget",[_2ba.context]);
ColdFusion.Ajax.sendMessage(_2ba._cf_url,"GET",_2ba._cf_query,true,_2bc,{tooltip:_2bb,event:_2b9,id:_2ba.context});
}
catch(e){
tooltipdiv=ColdFusion.DOM.getElement(_2ba.context);
tooltipdiv.innerHTML="";
ColdFusion.globalErrorHandler(null,e,tooltipdiv);
}
}
}
_2bb.tooltipout=false;
};
ColdFusion.Tooltip.parseStyle=function(_2bf){
var _2c0={};
if(_2bf&&typeof _2bf==="string"){
var _2c1=_2bf.split(";");
for(var i=0;i<_2c1.length;i++){
var temp=_2c1[i];
tempArray=temp.split(":");
if(tempArray.length===2){
var key=tempArray[0];
key=key.toLowerCase();
var _2c5=tempArray[1];
switch(key){
case "width":
_2c0.width=_2c5;
break;
case "color":
_2c0.color=_2c5;
break;
case "background-color":
_2c0[key]=_2c5;
break;
case "padding":
_2c0.padding=_2c5;
break;
default:
_2c0[key]=_2c5;
}
}
}
}
return _2c0;
};
