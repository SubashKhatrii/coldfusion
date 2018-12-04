/*ADOBE SYSTEMS INCORPORATED
Copyright 2012 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.Slider){
ColdFusion.Slider={};
}
var $SL=ColdFusion.Slider;
ColdFusion.Slider.init=function(_2c6,name,_2c8,_2c9,_2ca,_2cb,_2cc,_2cd,_2ce,_2cf,tip,_2d1,_2d2){
var _2d3={renderTo:_2c6,id:name};
if(_2ce!=null&&typeof (_2ce)!="undefined"){
_2d3.ClicktoChange=_2ce;
}else{
_2d3.ClicktoChange=false;
}
if(_2cf!=null&&typeof (_2cf)!="undefined"){
_2d3.increment=_2cf;
}else{
_2d3.increment=1;
}
if(_2cc!=null&&typeof (_2cc)!=undefined){
_2d3.minValue=_2cc;
}else{
_2d3.minValue=0;
}
if(_2cb!=null&&typeof (_2cb)!=undefined){
_2d3.value=_2cb;
}else{
_2d3.value=_2d3.minValue;
}
if(_2c9!=null&&typeof (_2c9)!=undefined){
_2d3.width=_2c9;
}else{
_2d3.width=200;
}
if(_2ca!=null&&typeof (_2ca)!="undefined"){
_2d3.height=_2ca;
}else{
_2d3.height=100;
}
if(_2cd!=null&&typeof (_2cd)!=undefined){
_2d3.maxValue=_2cd;
}else{
_2d3.maxValue=100;
}
if(_2c8!=null&&typeof (_2c8)!=undefined){
_2d3.vertical=_2c8;
}else{
_2d3.vertical=false;
}
if(_2d1!=null&&typeof (_2d1)=="function"){
_2d3.onChange=_2d1;
}
if(_2d2!=null&&typeof (_2d2)!="undefined"){
_2d3.onDrg=_2d2;
}
Ext.define("Ext.ux.ST",{extend:"Ext.slider.Tip",minWidth:25,minHeight:25,offsets:[0,-10],init:function(_2d4){
_2d4.on("dragstart",this.onSlide,this);
_2d4.on("drag",this.onSlide,this);
_2d4.on("dragend",this.hide,this);
_2d4.on("destroy",this.destroy,this);
},onSlide:function(_2d5,e,_2d7){
this.show();
this.body.update(this.getText(_2d5));
this.el.alignTo(_2d7.el,"b-t?",this.offsets);
this.doAutoRender();
},getText:function(_2d8){
return _2d8.getValue()==0?"0":_2d8.getValue();
}});
if(tip!=null&&typeof (tip)!="undefined"){
if(tip){
_2d3.plugins=new Ext.ux.ST();
}else{
_2d3.useTips=false;
}
}
var _2d9=Ext.create("Ext.slider.Single",_2d3);
_2d9.on("drag",$SL.onDragHandler,_2d3);
_2d9.on("changecomplete",$SL.onChangeHandler,_2d3);
_2d3.sliderComp=_2d9;
ColdFusion.objectCache[name]=_2d3;
ColdFusion.Log.info("slider.initialized","widget",[name]);
};
$SL.onDragHandler=function(_2da,_2db){
var _2dc=this.onDrg;
if(_2dc!=null&&typeof (_2dc)=="function"){
_2dc.call(this,_2da,_2db);
}
};
$SL.onChangeHandler=function(_2dd,_2de){
var _2df=this.onChange;
if(_2df!=null&&typeof (_2df)=="function"){
_2df.call(this,_2dd,_2de);
}
};
$SL.getValue=function(_2e0){
var _2e1=ColdFusion.objectCache[_2e0];
if(_2e1!=null||typeof (_2e1)!="undefined"){
var _2e2=_2e1.sliderComp;
if(_2e2){
return _2e2.getValue();
}
}else{
ColdFusion.handleError(null,"slider.getvalue.notfound","widget",[_2e0],null,null,true);
}
};
$SL.getSliderObject=function(_2e3){
var _2e4=ColdFusion.objectCache[_2e3];
if(_2e4!=null||typeof (_2e4)!="undefined"){
return _2e4.sliderComp;
}else{
return null;
}
};
$SL.setValue=function(_2e5,_2e6){
var _2e7=ColdFusion.objectCache[_2e5];
if(_2e7!=null||typeof (_2e7)!="undefined"){
var _2e8=_2e7.sliderComp;
if(_2e8){
return _2e8.setValue(_2e6,true);
}
}else{
ColdFusion.handleError(null,"slider.setvalue.notfound","widget",[_2e5],null,null,true);
}
};
$SL.show=function(_2e9){
var _2ea=ColdFusion.objectCache[_2e9];
if(_2ea!=null||typeof (_2ea)!="undefined"){
var _2eb=_2ea.sliderComp;
if(_2eb){
return _2eb.show();
}
}else{
ColdFusion.handleError(null,"slider.show.notfound","widget",[_2e9],null,null,true);
}
ColdFusion.Log.info("slider.show.shown","widget",[_2e9]);
};
$SL.hide=function(_2ec){
var _2ed=ColdFusion.objectCache[_2ec];
if(_2ed!=null||typeof (_2ed)!="undefined"){
var _2ee=_2ed.sliderComp;
if(_2ee){
return _2ee.hide();
}
}else{
ColdFusion.handleError(null,"slider.hide.notfound","widget",[_2ec],null,null,true);
}
ColdFusion.Log.info("slider.hide.hidden","widget",[_2ec]);
};
$SL.enable=function(_2ef){
var _2f0=ColdFusion.objectCache[_2ef];
if(_2f0!=null||typeof (_2f0)!="undefined"){
var _2f1=_2f0.sliderComp;
if(_2f1){
return _2f1.enable();
}
}else{
ColdFusion.handleError(null,"slider.enable.notfound","widget",[_2ef],null,null,true);
}
ColdFusion.Log.info("slider.enable.enabled","widget",[_2ef]);
};
$SL.disable=function(_2f2){
var _2f3=ColdFusion.objectCache[_2f2];
if(_2f3!=null||typeof (_2f3)!="undefined"){
var _2f4=_2f3.sliderComp;
if(_2f4){
return _2f4.disable();
}
}else{
ColdFusion.handleError(null,"slider.disable.notfound","widget",[_2f2],null,null,true);
}
ColdFusion.Log.info("slider.disable.disabled","widget",[_2f2]);
};
