/*ADOBE SYSTEMS INCORPORATED
Copyright 2012 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.Layout){
ColdFusion.Layout={};
}
var ACCORDION_TITLE_ICON_CSS_TEMPLATE=".{0} { background-image:url({1}); }";
if(!ColdFusion.MapVsAccordion){
ColdFusion.MapVsAccordion={};
}
ColdFusion.Layout.initializeTabLayout=function(id,_99,_9a,_9b,_9c){
Ext.QuickTips.init();
var _9d;
if(_9a){
_9d={renderTo:id,height:_9a};
}else{
_9d={renderTo:id,autoHeight:true};
}
if(_9b&&_9b!="undefined"){
_9d.width=_9b;
}else{
_9d.autoWidth=true;
}
if(_99){
_9d.tabPosition="bottom";
}else{
_9d.enableTabScroll=true;
}
_9d.plain=!_9c;
var _9e=new Ext.tab.Panel(_9d);
ColdFusion.objectCache[id]=_9e;
return _9e;
};
ColdFusion.Layout.getTabLayout=function(_9f){
var _a0=ColdFusion.objectCache[_9f];
if(!_a0||!(_a0 instanceof Ext.TabPanel)){
ColdFusion.handleError(null,"layout.gettablayout.notfound","widget",[_9f],null,null,true);
}
return _a0;
};
ColdFusion.Layout.onTabActivate=function(tab){
tab._cf_visible=true;
if(tab._cf_dirtyview){
var _a2=ColdFusion.bindHandlerCache[tab.contentEl];
if(_a2){
_a2();
}
tab._cf_dirtyview=false;
}
};
ColdFusion.Layout.onTabDeactivate=function(tab){
tab._cf_visible=false;
if(tab._cf_refreshOnActivate){
tab._cf_dirtyview=true;
}
};
ColdFusion.Layout.onTabClose=function(tab){
tab._cf_visible=false;
};
ColdFusion.Layout.addTab=function(_a5,_a6,_a7,_a8,_a9,_aa,_ab,_ac,_ad){
if(_a9!=null&&_a9.length==0){
_a9=null;
}
var _ae=_a5.initialConfig.autoHeight;
if(typeof _ae=="undefined"){
_ae=false;
}
var _af=new Ext.Panel({title:_a8,contentEl:_a6,_cf_body:_a6,id:_a7,closable:_aa,tabTip:_a9,autoScroll:_ad,autoShow:true,autoHeight:_ae});
var tab=_a5.add(_af);
if(_ac){
_af.setDisabled(true);
}
tab._cf_visible=false;
tab._cf_dirtyview=true;
tab._cf_refreshOnActivate=_ab;
tab.addListener("activate",ColdFusion.Layout.onTabActivate);
tab.addListener("deactivate",ColdFusion.Layout.onTabDeactivate);
tab.addListener("close",ColdFusion.Layout.onTabClose);
ColdFusion.objectCache[_a7]=tab;
var _b1=tab.height;
if(_b1&&_b1>1){
var _b2=document.getElementById(_a6);
_b2.style.height=_b1;
}
};
ColdFusion.Layout.enableTab=function(_b3,_b4){
var _b5=ColdFusion.objectCache[_b3];
var _b6=ColdFusion.objectCache[_b4];
if(_b5&&(_b5 instanceof Ext.TabPanel)&&_b6){
_b6.setDisabled(false);
ColdFusion.Log.info("layout.enabletab.enabled","widget",[_b4,_b3]);
}else{
ColdFusion.handleError(null,"layout.enabletab.notfound","widget",[_b3],null,null,true);
}
};
ColdFusion.Layout.disableTab=function(_b7,_b8){
var _b9=ColdFusion.objectCache[_b7];
var _ba=ColdFusion.objectCache[_b8];
if(_b9&&(_b9 instanceof Ext.TabPanel)&&_ba){
_ba.setDisabled(true);
ColdFusion.Log.info("layout.disabletab.disabled","widget",[_b8,_b7]);
}else{
ColdFusion.handleError(null,"layout.disabletab.notfound","widget",[_b7],null,null,true);
}
};
ColdFusion.Layout.selectTab=function(_bb,_bc){
var _bd=ColdFusion.objectCache[_bb];
var tab=ColdFusion.objectCache[_bc];
if(_bd&&(_bd instanceof Ext.TabPanel)&&tab){
_bd.setActiveTab(tab);
ColdFusion.Log.info("layout.selecttab.selected","widget",[_bc,_bb]);
}else{
ColdFusion.handleError(null,"layout.selecttab.notfound","widget",[_bb],null,null,true);
}
};
ColdFusion.Layout.hideTab=function(_bf,_c0){
var _c1=ColdFusion.objectCache[_bf];
if(_c1&&(_c1 instanceof Ext.TabPanel)){
var _c2=ColdFusion.objectCache[_c0];
var _c3=false;
if(_c2){
if(_c1.getActiveTab()&&_c1.getActiveTab().getId()==_c0){
var i;
for(i=0;i<_c1.items.length;i++){
var _c5=_c1.getComponent(i);
if(_c5.hidden==false){
_c3=true;
_c5.show();
break;
}
}
if(_c3==false){
document.getElementById(_c0).style.display="none";
}
}
_c2.tab.hide();
ColdFusion.Log.info("layout.hidetab.hide","widget",[_c0,_bf]);
}
}else{
ColdFusion.handleError(null,"layout.hidetab.notfound","widget",[_bf],null,null,true);
}
};
ColdFusion.Layout.showTab=function(_c6,_c7){
var _c8=ColdFusion.objectCache[_c6];
var _c9=ColdFusion.objectCache[_c7];
if(_c8&&(_c8 instanceof Ext.TabPanel)&&_c9){
_c9.tab.show();
ColdFusion.Log.info("layout.showtab.show","widget",[_c7,_c6]);
}else{
ColdFusion.handleError(null,"layout.showtab.notfound","widget",[_c6],null,null,true);
}
};
ColdFusion.Layout.disableSourceBind=function(_ca){
var _cb=ColdFusion.objectCache[_ca];
if(_cb==null||_cb=="undefined"){
ColdFusion.handleError(null,"layout.disableSourceBind.notfound","widget",[_ca],null,null,true);
}
_cb._cf_dirtyview=false;
};
ColdFusion.Layout.enableSourceBind=function(_cc){
var _cd=ColdFusion.objectCache[_cc];
if(_cd==null||_cd=="undefined"){
ColdFusion.handleError(null,"layout.enableSourceBind.notfound","widget",[_cc],null,null,true);
}
_cd._cf_dirtyview=true;
};
ColdFusion.Layout.createTab=function(_ce,_cf,_d0,_d1,_d2){
var _d3=ColdFusion.objectCache[_ce];
var _d4=_cf;
if(_ce&&typeof (_ce)!="string"){
ColdFusion.handleError(null,"layout.createtab.invalidname","widget",null,null,null,true);
return;
}
if(!_ce||ColdFusion.trim(_ce)==""){
ColdFusion.handleError(null,"layout.createtab.emptyname","widget",null,null,null,true);
return;
}
if(_cf&&typeof (_cf)!="string"){
ColdFusion.handleError(null,"layout.createtab.invalidareaname","widget",null,null,null,true);
return;
}
if(!_cf||ColdFusion.trim(_cf)==""){
ColdFusion.handleError(null,"layout.createtab.emptyareaname","widget",null,null,null,true);
return;
}
if(_d0&&typeof (_d0)!="string"){
ColdFusion.handleError(null,"layout.createtab.invalidtitle","widget",null,null,null,true);
return;
}
if(!_d0||ColdFusion.trim(_d0)==""){
ColdFusion.handleError(null,"layout.createtab.emptytitle","widget",null,null,null,true);
return;
}
if(_d1&&typeof (_d1)!="string"){
ColdFusion.handleError(null,"layout.createtab.invalidurl","widget",null,null,null,true);
return;
}
if(!_d1||ColdFusion.trim(_d1)==""){
ColdFusion.handleError(null,"layout.createtab.emptyurl","widget",null,null,null,true);
return;
}
_cf="cf_layoutarea"+_cf;
if(_d3&&(_d3 instanceof Ext.TabPanel)){
var _d5=null;
var ele=document.getElementById(_cf);
if(ele!=null){
ColdFusion.handleError(null,"layout.createtab.duplicateel","widget",[_cf],null,null,true);
return;
}
var _d7=false;
var _d8=false;
var _d9=false;
var _da=false;
var _db=false;
var _dc=null;
if((_d3.items.length<=0)){
_d9=true;
}
if(_d2!=null){
if(typeof (_d2)!="object"){
ColdFusion.handleError(null,"layout.createtab.invalidconfig","widget",null,null,null,true);
return;
}
if(typeof (_d2.closable)!="undefined"&&_d2.closable==true){
_d7=true;
}
if(typeof (_d2.disabled)!="undefined"&&_d2.disabled==true){
_d8=true;
}
if(typeof (_d2.selected)!="undefined"&&_d2.selected==true){
_d9=true;
}
if(typeof (_d2.inithide)!="undefined"&&_d2.inithide==true){
_da=true;
}
if(typeof (_d2.tabtip)!="undefined"&&_d2.tabtip!=null){
_dc=_d2.tabtip;
}
}
var _dd=document.getElementById(_ce);
if(_dd){
var _de=document.getElementById(_ce);
var _df=document.createElement("div");
_df.id=_cf;
_df.className="ytab";
if(_d2!=null&&typeof (_d2.align)!="undefined"){
_df.align=_d2.align;
}
var _e0="";
if(_d3.tabheight){
_e0="height:"+_d3.tabheight+";";
}
if(_d2!=null&&typeof (_d2.style)!="undefined"){
var _e1=new String(_d2.style);
_e1=_e1.toLowerCase();
_e0=_e0+_e1;
}
if(_d2!=null&&typeof (_d2.overflow)!="undefined"){
var _e2=new String(_d2.overflow);
_e2=_e2.toLowerCase();
if(_e2!="visible"&&_e2!="auto"&&_e2!="scroll"&&_e2!="hidden"){
ColdFusion.handleError(null,"layout.createtab.invalidoverflow","widget",null,null,null,true);
return;
}
if(_e2.toLocaleLowerCase()==="hidden"){
_db=false;
}
_e0=_e0+"overflow:"+_e2+";";
}else{
_e0=_e0+"; overflow:auto;";
}
_df.style.cssText=_e0;
_de.appendChild(_df);
}
ColdFusion.Layout.addTab(_d3,_cf,_d4,_d0,_dc,_d7,false,_d8,_db);
ColdFusion.Log.info("layout.createtab.success","http",[_cf,_ce]);
if(_d9==true){
ColdFusion.Layout.selectTab(_ce,_d4);
}
if(_da==true){
ColdFusion.Layout.hideTab(_ce,_d4);
}
if(_d1!=null&&typeof (_d1)!="undefined"&&_d1!=""){
if(_d1.indexOf("?")!=-1){
_d1=_d1+"&";
}else{
_d1=_d1+"?";
}
var _e3;
var _e4;
if(_d2){
_e3=_d2.callbackHandler;
_e4=_d2.errorHandler;
}
ColdFusion.Ajax.replaceHTML(_cf,_d1,"GET",null,_e3,_e4);
}
}else{
ColdFusion.handleError(null,"layout.createtab.notfound","widget",[_ce],null,null,true);
}
};
ColdFusion.Layout.getBorderLayout=function(_e5){
var _e6=ColdFusion.objectCache[_e5];
if(!_e6){
ColdFusion.handleError(null,"layout.getborderlayout.notfound","widget",[_e5],null,null,true);
}
return _e6;
};
ColdFusion.Layout.showArea=function(_e7,_e8){
var _e9=ColdFusion.Layout.convertPositionToDirection(_e8);
var _ea=ColdFusion.objectCache[_e7];
var _eb;
if(_ea){
var _ec=_ea.items;
for(var i=0;i<_ec.getCount();i++){
var _ee=_ec.items[i];
if(_ee instanceof Ext.Panel&&_ee.region==_e9){
_eb=_ee;
break;
}
}
if(_eb){
_eb.show();
_eb.expand();
ColdFusion.Log.info("layout.showarea.shown","widget",[_e8,_e7]);
}else{
ColdFusion.handleError(null,"layout.showarea.areanotfound","widget",[_e8],null,null,true);
}
}else{
ColdFusion.handleError(null,"layout.showarea.notfound","widget",[_e7],null,null,true);
}
};
ColdFusion.Layout.hideArea=function(_ef,_f0){
var _f1=ColdFusion.Layout.convertPositionToDirection(_f0);
var _f2=ColdFusion.objectCache[_ef];
var _f3;
if(_f2){
var _f4=_f2.items;
for(var i=0;i<_f4.getCount();i++){
var _f6=_f4.items[i];
if(_f6 instanceof Ext.Panel&&_f6.region==_f1){
_f3=_f6;
break;
}
}
if(_f3){
_f3.hide();
ColdFusion.Log.info("layout.hidearea.hidden","widget",[_f0,_ef]);
}else{
ColdFusion.handleError(null,"layout.hidearea.areanotfound","widget",[_f0],null,null,true);
}
}else{
ColdFusion.handleError(null,"layout.hidearea.notfound","widget",[_ef],null,null,true);
}
};
ColdFusion.Layout.collapseArea=function(_f7,_f8){
var _f9=ColdFusion.Layout.convertPositionToDirection(_f8);
var _fa=ColdFusion.objectCache[_f7];
var _fb;
if(_fa){
var _fc=_fa.items;
for(var i=0;i<_fc.getCount();i++){
var _fe=_fc.items[i];
if(_fe instanceof Ext.Panel&&_fe.region==_f9){
_fb=_fe;
break;
}
}
if(_fb){
_fb.collapse();
ColdFusion.Log.info("layout.collpasearea.collapsed","widget",[_f8,_f7]);
}else{
ColdFusion.handleError(null,"layout.collpasearea.areanotfound","widget",[_f8],null,null,true);
}
}else{
ColdFusion.handleError(null,"layout.collpasearea.notfound","widget",[_f8],null,null,true);
}
};
ColdFusion.Layout.expandArea=function(_ff,_100){
var _101=ColdFusion.Layout.convertPositionToDirection(_100);
var _102=ColdFusion.objectCache[_ff];
var _103;
if(_102){
var _104=_102.items;
for(var i=0;i<_104.getCount();i++){
var _106=_104.items[i];
if(_106 instanceof Ext.Panel&&_106.region==_101){
_103=_106;
break;
}
}
if(_103){
_103.expand();
ColdFusion.Log.info("layout.expandarea.expanded","widget",[_100,_ff]);
}else{
ColdFusion.handleError(null,"layout.expandarea.areanotfound","widget",[_100],null,null,true);
}
}else{
ColdFusion.handleError(null,"layout.expandarea.notfound","widget",[_100],null,null,true);
}
};
ColdFusion.Layout.printObject=function(obj){
var str="";
for(key in obj){
str=str+"  "+key+"=";
value=obj[key];
if(typeof (value)==Object){
value=$G.printObject(value);
}
str+=value;
}
return str;
};
ColdFusion.Layout.InitAccordion=function(_109,_10a,_10b,_10c,_10d,_10e,_10f,_110){
var _111=false;
if(_10b.toUpperCase()=="LEFT"){
_111=true;
}
if(_10e==null||typeof (_10e)=="undefined"){
_10d=false;
}
var _112={activeOnTop:_10a,collapseFirst:_111,titleCollapse:_10c,fill:_10d};
var _113={renderTo:_109,layoutConfig:_112,items:_110,layout:"accordion"};
if(_10e==null||typeof (_10e)=="undefined"){
_113.autoHeight=true;
_113.height=600;
}else{
_113.height=_10e;
}
_113.flex=1;
if(_10f==null||typeof (_10f)=="undefined"){
_113.autoWidth=true;
}else{
_113.width=_10f;
}
_113.align="stretch";
var _114=new Ext.Panel(_113);
ColdFusion.objectCache[_109]=_114;
ColdFusion.Log.info("layout.accordion.initialized","widget",[_109]);
return _114;
};
ColdFusion.Layout.InitAccordionChildPanel=function(_115,_116,_117,_118,_119,_11a,_11b,_11c){
if(_117==null||typeof (_117)==undefined||_117.length==0){
_117="  ";
}
var _11d={contentEl:_115,id:_116,title:_117,collapsible:_118,closable:_119,autoScroll:_11a,_cf_body:_115};
if(_11b&&typeof _11b=="string"){
_11d.iconCls=_11b;
}
var _11e=new Ext.Panel(_11d);
_11e._cf_visible=false;
_11e._cf_dirtyview=true;
_11e._cf_refreshOnActivate=_11c;
_11e.on("expand",ColdFusion.Layout.onAccordionPanelExpand,this);
_11e.on("collapse",ColdFusion.Layout.onAccordionPanelCollapse,this);
_11e.on("hide",ColdFusion.Layout.onAccordionPanelHide,this);
_11e.on("show",ColdFusion.Layout.onAccordionPanelExpand,this);
ColdFusion.objectCache[_116]=_11e;
ColdFusion.Log.info("layout.accordion.childinitialized","widget",[_116]);
return _11e;
};
ColdFusion.Layout.getAccordionLayout=function(_11f){
var _120=ColdFusion.objectCache[_11f];
if(!_120||!(_120 instanceof Ext.Panel)){
ColdFusion.handleError(null,"layout.getaccordionlayout.notfound","widget",[_11f],null,null,true);
}
return _120;
};
ColdFusion.Layout.onAccordionPanelExpand=function(_121){
_121._cf_visible=true;
if(_121._cf_dirtyview){
var _122=ColdFusion.bindHandlerCache[_121.contentEl];
if(_122){
_122();
}
_121._cf_dirtyview=false;
}
var el=Ext.get(_121.contentEl);
el.move("left",1);
el.move("right",1);
var _124=ColdFusion.MapVsAccordion[_121._cf_body];
if(_124!=undefined){
var _125=$MAP.getMapPanelObject(_124);
if(_125!=undefined){
if(_125.initShow===true){
$MAP.show(_124);
}
}
}
};
ColdFusion.Layout.onAccordionPanelCollapse=function(_126){
_126._cf_visible=false;
if(_126._cf_refreshOnActivate){
_126._cf_dirtyview=true;
}
};
ColdFusion.Layout.onAccordionPanelHide=function(_127){
_127._cf_visible=false;
};
ColdFusion.Layout.hideAccordion=function(_128,_129){
var _12a=ColdFusion.objectCache[_128];
var _12b=ColdFusion.objectCache[_129];
if(!_12a||!_12a instanceof Ext.Panel){
ColdFusion.handleError(null,"layout.hideaccordion.layoutnotfound","widget",[_128],null,null,true);
}
if(!_12b||!_12b instanceof Ext.Panel){
ColdFusion.handleError(null,"layout.hideaccordion.panelnotfound","widget",[_129],null,null,true);
}
_12b.hide();
ColdFusion.Log.info("layout.hideaccordion.hidden","widget",[_129,_128]);
};
ColdFusion.Layout.showAccordion=function(_12c,_12d){
var _12e=ColdFusion.objectCache[_12c];
var _12f=ColdFusion.objectCache[_12d];
if(!_12e||!_12e instanceof Ext.Panel){
ColdFusion.handleError(null,"layout.showaccordion.layoutnotfound","widget",[_12c],null,null,true);
}
if(!_12f||!_12f instanceof Ext.Panel){
ColdFusion.handleError(null,"layout.showaccordion.panelnotfound","widget",[_12d],null,null,true);
}
_12f.show();
ColdFusion.Log.info("layout.showaccordion.shown","widget",[_12d,_12c]);
};
ColdFusion.Layout.expandAccordion=function(_130,_131){
var _132=ColdFusion.objectCache[_130];
var _133=ColdFusion.objectCache[_131];
if(!_132||!_132 instanceof Ext.Panel){
ColdFusion.handleError(null,"layout.expandaccordion.layoutnotfound","widget",[_130],null,null,true);
}
if(!_133||!_133 instanceof Ext.Panel){
ColdFusion.handleError(null,"layout.expandaccordion.panelnotfound","widget",[_131],null,null,true);
}
_133.expand();
ColdFusion.Log.info("layout.expandaccordion.expanded","widget",[_131,_130]);
};
ColdFusion.Layout.selectAccordion=function(_134,_135){
return ColdFusion.Layout.expandAccordion(_134,_135);
};
ColdFusion.Layout.collapseAccordion=function(_136,_137){
var _138=ColdFusion.objectCache[_136];
var _139=ColdFusion.objectCache[_137];
if(!_138||!_138 instanceof Ext.Panel){
ColdFusion.handleError(null,"layout.collapseaccordion.layoutnotfound","widget",[_136],null,null,true);
}
if(!_139||!_139 instanceof Ext.Panel){
ColdFusion.handleError(null,"layout.collapseaccordion.panelnotfound","widget",[_137],null,null,true);
}
_139.collapse();
ColdFusion.Log.info("layout.collapseaccordion.collapsed","widget",[_137,_136]);
};
ColdFusion.Layout.createAccordionPanel=function(_13a,_13b,_13c,url,_13e){
var _13f=ColdFusion.objectCache[_13a];
var _140=_13b;
if(_13a&&typeof (_13a)!="string"){
ColdFusion.handleError(null,"layout.createaccordionpanel.invalidname","widget",[_13a],null,null,true);
return;
}
if(!_13a||ColdFusion.trim(_13a)==""){
ColdFusion.handleError(null,"layout.createaccordionpanel.emptyname","widget",[_13a],null,null,true);
return;
}
if(_13b&&typeof (_13b)!="string"){
ColdFusion.handleError(null,"layout.createaccordionpanel.invalidaccordionpanelname","widget",[_13b],null,null,true);
return;
}
if(!_13b||ColdFusion.trim(_13b)==""){
ColdFusion.handleError(null,"layout.createaccordionpanel.emptyaccordionpanelname","widget",[_13b],null,null,true);
return;
}
if(_13c&&typeof (_13c)!="string"){
ColdFusion.handleError(null,"layout.createaccordionpanel.invalidtitle","widget",[_13b],null,null,true);
return;
}
if(!_13c||ColdFusion.trim(_13c)==""){
ColdFusion.handleError(null,"layout.createaccordionpanel.invalidtitle","widget",[_13b],null,null,true);
return;
}
if(url&&typeof (url)!="string"){
ColdFusion.handleError(null,"layout.createaccordionpanel.invalidurl","widget",[_13b],null,null,true);
return;
}
if(!url||ColdFusion.trim(url)==""){
ColdFusion.handleError(null,"layout.createaccordionpanel.invalidurl","widget",[_13b],null,null,true);
return;
}
_13b="cf_layoutarea"+_140;
if(_13f&&(_13f instanceof Ext.Panel)){
var _141=null;
var ele=document.getElementById(_13b);
if(ele!=null){
ColdFusion.handleError(null,"layout.createaccordionpanel.duplicateel","widget",[_13b],null,null,true);
return;
}
var _143=true;
var _144;
var _145=false;
var _146=null;
if(_13e!=null){
if(typeof (_13e)!="object"){
ColdFusion.handleError(null,"layout.createaccordionpanel.invalidconfig","widget",[_13b],null,null,true);
return;
}
}
if(_13e&&typeof (_13e.selected)!="undefined"&&_13e.selected==true){
_145=true;
}
if(_13e&&_13e.titleicon){
if(typeof _13e.titleicon!="string"){
ColdFusion.handleError(null,"layout.createaccordionpanel.invalidtitleicon","widget",[_13b],null,null,true);
return;
}
var _147=Ext.String.format(ACCORDION_TITLE_ICON_CSS_TEMPLATE,_13b,_13e.titleicon);
Ext.util.CSS.createStyleSheet(_147,_13b+"_cf_icon");
_146=_13b;
}
var _148=_13f.layoutConfig;
var _149=true;
if(_148&&typeof _148.fill!="undefined"){
_149=_148.fill;
}
if(_13e!=null&&typeof (_13e.overflow)!="undefined"){
var _144=new String(_13e.overflow);
_144=_144.toLowerCase();
if(_144!="visible"&&_144!="auto"&&_144!="scroll"&&_144!="hidden"){
ColdFusion.handleError(null,"layout.createaccordionpanel.invalidoverflow","widget",[_13b],null,null,true);
return;
}
if(!_149&&(_144=="auto"||_144=="scroll")){
ColdFusion.handleError(null,"layout.createaccordionpanel.invalidoverflowforfillheight","widget",[_13b],null,null,true);
return;
}
if(_144=="hidden"){
_143=false;
}
}else{
_144="auto";
_143=true;
}
var _14a=document.getElementById(_13a);
if(_14a){
var _14b=document.getElementById(_13a);
var _14c=document.createElement("div");
_14c.id=_13b;
if(_13e!=null&&typeof (_13e.align)!="undefined"){
_14c.align=_13e.align;
}
var _14d="";
if(_13f.height){
_14d="height:"+_13f.height+";";
}
if(_13e!=null&&typeof (_13e.style)!="undefined"){
var _14e=new String(_13e.style);
_14e=_14e.toLowerCase();
_14d=_14d+_14e;
}
_14d=_14d+"overflow:"+_144+";";
_14c.style.cssText=_14d;
_14b.appendChild(_14c);
}
var _14f=true;
var _150=true;
itemobj=ColdFusion.Layout.InitAccordionChildPanel(_13b,_140,_13c,_150,_14f,_143,_146,false);
_13f.add(itemobj);
if(url!=null&&typeof (url)!="undefined"&&url!=""){
if(url.indexOf("?")!=-1){
url=url+"&";
}else{
url=url+"?";
}
var _151;
var _152;
if(_13e){
_151=_13e.callbackHandler;
_152=_13e.errorHandler;
}
ColdFusion.Ajax.replaceHTML(_13b,url,"GET",null,_151,_152);
}
_13f.doLayout();
if(_145){
ColdFusion.Layout.expandAccordion(_13a,_140);
}
ColdFusion.Log.info("layout.createaccordionpanel.created","widget",[_13b]);
}else{
ColdFusion.handleError(null,"layout.createaccordionpanel.layoutnotfound","widget",[_13a],null,null,true);
}
};
ColdFusion.Layout.initViewport=function(_153,item){
var _155=new Array();
_155[0]=item;
var _156={items:_155,layout:"fit",name:_153};
var _157=new Ext.Viewport(_156);
return _157;
};
ColdFusion.Layout.convertPositionToDirection=function(_158){
if(_158.toUpperCase()=="LEFT"){
return "west";
}else{
if(_158.toUpperCase()=="RIGHT"){
return "east";
}else{
if(_158.toUpperCase()=="CENTER"){
return "center";
}else{
if(_158.toUpperCase()=="BOTTOM"){
return "south";
}else{
if(_158.toUpperCase()=="TOP"){
return "north";
}
}
}
}
}
};
ColdFusion.Layout.addMapInAccordionMapping=function(_159,map){
ColdFusion.MapVsAccordion[_159]=map;
};
