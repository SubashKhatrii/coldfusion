/*ADOBE SYSTEMS INCORPORATED
Copyright 2012 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.Button){
ColdFusion.Button={};
}
var $BT=ColdFusion.Button;
ColdFusion.Button.init=function(_725,_726,icon,tips,_729,_72a,_72b,_72c,_72d){
var _72e={renderTo:_725,enableToggle:_72d,text:_726,onClick:_729,onToggle:_72a,onMouseOver:_72b,onMouseout:_72c,tooltip:tips,icon:icon};
var _72f={renderTo:_725,enableToggle:_72d,text:_726};
if(tips!=null&&typeof tips!="undefined"){
_72f.tooltip=tips;
Ext.QuickTips.init();
}
if(icon!=null&&typeof icon!="undefined"){
_72f.icon=icon;
}
if(icon&&_726){
_72f.iconCls="x-btn-text-icon";
}else{
if(icon&&!_726){
_72f.iconCls="x-btn-icon";
}
}
var _730=new Ext.Button(_72f);
if(_729!=null&&typeof _729=="function"){
_730.on("click",_729,_72e);
}
if(_72a!=null&&typeof _72a=="function"){
_730.on("toggle",_72a,_72e);
}
if(_72b!=null&&typeof _72b=="function"){
_730.on("mouseover",_72b,_72e);
}
if(_72c!=null&&typeof _72c=="function"){
_730.on("mouseout",_72c,_72e);
}
_72e.buttonComp=_730;
ColdFusion.objectCache[_725]=_72e;
ColdFusion.Log.info("button.initialized","widget",[_725]);
};
$BT.show=function(_731){
var _732=$BT.getButtonObject(_731);
if(_732!=null){
_732.show();
}
ColdFusion.Log.info("button.show.shown","widget",[_731]);
};
$BT.hide=function(_733){
var _734=$BT.getButtonObject(_733);
if(_734!=null){
_734.hide();
}
ColdFusion.Log.info("button.hide.hidden","widget",[_733]);
};
$BT.disable=function(_735){
var _736=$BT.getButtonObject(_735);
if(_736!=null){
_736.disable();
}
ColdFusion.Log.info("button.disable.disabled","widget",[_735]);
};
$BT.enable=function(_737){
var _738=$BT.getButtonObject(_737);
if(_738!=null){
_738.enable();
}
ColdFusion.Log.info("button.enable.enabled","widget",[_737]);
};
$BT.getButtonObject=function(_739){
var _73a=$BT.getButtonConfigObj(_739);
if(_73a!=null){
return _73a.buttonComp;
}else{
ColdFusion.handleError(null,"button.component.notFound","widget",[_739],null,null,true);
}
};
$BT.setLabel=function(_73b,_73c){
var _73d=$BT.getButtonObject(_73b);
if(_73d!=null){
_73d.text=_73c;
}
};
$BT.getButtonConfigObj=function(_73e){
var _73f=ColdFusion.objectCache[_73e];
if(_73f==null||typeof (_73f)=="undefined"){
ColdFusion.handleError(null,"button.component.notFound","widget",[_73e],null,null,true);
}
return _73f;
};
$BT.toggle=function(_740){
var _741=$BT.getButtonObject(_740);
if(_741!=null){
_741.toggle();
}
};
