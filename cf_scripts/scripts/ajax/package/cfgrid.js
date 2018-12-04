/*ADOBE SYSTEMS INCORPORATED
Copyright 2012 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
cfinitgrid=function(){
Ext.override(Ext.form.field.Number,{decimalPrecision:6});
if(!ColdFusion.Grid){
ColdFusion.Grid={};
}
var $G=ColdFusion.Grid;
if(!$G.GridBindelementsMap){
$G.GridBindelementsMap={};
}
var $L=ColdFusion.Log;
$G.init=function(id,name,_77d,_77e,edit,_780,_781,_782,_783,_784,_785,_786,_787,_788,_789,_78a,_78b,_78c,_78d,_78e,_78f,_790,_791,_792,_793,_794,_795,_796,_797,_798){
var grid;
var _79a;
var _79b=false;
if(_78c&&typeof (_78c)!="undefined"){
_79a=_78c;
_79b=true;
}else{
_79a="rowmodel";
_79a=new Ext.selection.RowModel({mode:"MULTI"});
}
var _79c=_783;
var _79d={store:_784,columns:_783,selModel:_79a,autoSizeColumns:_781,autoSizeHeaders:_781,stripeRows:_787,autoExpandColumnId:_782};
if(_796!=null&&typeof _796!="undefined"){
_79d.plugins=_796;
}
var _79e=ColdFusion.objectCache[id];
var _79f=document.getElementById(_79e.gridId);
if(_79f!=null){
var _7a0=_79f.style.cssText;
if(typeof _7a0=="undefined"){
_7a0="";
}
_7a0="width:"+_785+"px;"+_7a0;
_79f.style.cssText=_7a0;
}
_79d.width=_785;
if(_781===true){
_79d.viewConfig={forceFit:true};
_79d.forceFit=true;
}else{
if(_78c&&typeof (_78c)!="undefined"){
_79d.autoExpandColumn=_782;
}else{
_79d.autoExpandColumn=_782;
}
}
if(_786){
_79d.height=_786;
}else{
_79d.autoHeight=true;
var _7a1=".x-grid3-header {position: relative;}";
Ext.util.CSS.createStyleSheet(_7a1,"_cf_grid"+id);
}
if(_78e&&typeof (_78e)!="undefined"){
_79d.features={ftype:"grouping",groupHeaderTpl:"{columnName}: {groupValue} ({rows.length} items)"};
}
_79d.title=_78f;
_79d.collapsible=_78d;
if(_78d&&_78f==null){
_79d.title="  ";
}
var _7a2=ColdFusion.objectCache[id];
_7a2.bindOnLoad=_780;
_7a2.dynamic=_77e;
_7a2.styles=_788;
_7a2.grouping=_78e;
_7a2.onLoadFunction=_795;
_7a2.multiRowSelection=_79b;
_79d.renderTo=_7a2.gridId;
Ext.onReady(function(){
_79d.dockedItems={xtype:"toolbar",dock:"top"};
_79d.tbar=new Ext.Toolbar({hidden:true});
if(_77e){
_79d.bbar=new Ext.PagingToolbar({pageSize:_789,store:_784});
if(_793&&(_790||_791)){
var _7a3=_79d.bbar;
if(_790){
_7a3.add({xtype:"button",text:_790,handler:$G.insertRow,scope:_7a2});
_7a3.add({xtype:"button",text:" save ",handler:$G.saveNewRecord,scope:_7a2});
_7a3.add({xtype:"button",text:" cancel ",handler:$G.cancelNewRecord,scope:_7a2});
}
if(_791){
_7a3.add({xtype:"button",text:_791,handler:$G.deleteRow,scope:_7a2});
}
}
}
if(edit&&!_77e){
var bbar=new Ext.Toolbar();
if(_790||_791){
if(_790){
bbar.add({xtype:"button",text:_790,handler:$G.insertRow,scope:_7a2});
}
if(_791){
bbar.add({xtype:"button",text:_791,handler:$G.deleteRow,scope:_7a2});
}
}else{
var bbar=new Ext.Toolbar({hidden:true});
}
_79d.bbar=bbar;
}
_784.pageSize=_789;
var fn=function(){
grid=Ext.create("Ext.grid.Panel",_79d);
$G.Ext_caseInsensitive_sorting();
_784.addListener("load",$G.Actions.onLoad,_7a2,{delay:50});
grid.view.addListener("beforeshow",function(menu){
var _7a7=_79c.getColumnCount();
for(var i=0;i<_7a7;i++){
if("CFGRIDROWINDEX"==_79c.getDataIndex(i)){
menu.remove(menu.items["items"][i]);
break;
}
}
},this);
_7a2.grid=grid;
if(!_77e){
_784.addListener("load",$G.Actions.onLoad,_7a2,{delay:50});
_784.load();
}
if(_77e){
_784._cf_errorHandler=_794;
_784.proxy._cf_actions=_7a2;
_784.load({params:{start:0,limit:_789}});
}else{
$G.applyStyles(_7a2);
}
if(_797){
ColdFusion.Bind.register(_797,{actions:_7a2},$G.bindHandler,false);
}
$L.info("grid.init.created","widget",[id]);
_7a2.init(id,name,_77d,_792,_77e,edit,_793,_794,_78b,_789,_78a,_78e);
};
if(_77e&&_798){
setTimeout(fn,0);
}else{
fn();
}
});
};
$G.applyStyles=function(_7a9){
Ext.util.CSS.createStyleSheet(_7a9.styles);
_7a9.stylesApplied=true;
};
$G.bindHandler=function(e,_7ab){
$G.refresh(_7ab.actions.id,_7ab.actions.preservePageOnSort);
};
$G.bindHandler._cf_bindhandler=true;
$G.refresh=function(_7ac,_7ad){
var _7ae=ColdFusion.objectCache[_7ac];
if(_7ae&&$G.Actions.prototype.isPrototypeOf(_7ae)==true){
var _7af=_7ae.grid.getStore();
if(_7ae.dynamic){
_7ae.editOldValue=null;
_7ae.selectedRow=-1;
var bind=$G.GridBindelementsMap[_7ac];
if(bind){
var url=_7af.proxy.url;
var _7b2=bind.split(";");
for(i=0;i<_7b2.length;i++){
var _7b3=_7b2[i].split(",");
indx=url.indexOf(_7b3[0]+"=");
url1=url.substring(0,indx);
nxtindx=url.indexOf("&",indx);
url2=url.substring(nxtindx);
var val=_7b3[2];
var eval="";
if(_7b3[2]&&_7b3[2].endsWith("()")){
val=_7b3[2].substring(0,val.length-2);
eval=window[val]();
}else{
eval=ColdFusion.Bind.getBindElementValue(_7b3[1],val,_7b3[3]);
}
url=url1+"&"+_7b3[0]+"="+eval+url2;
}
_7af.proxy.url=url;
}
if(_7ad){
_7af.lastOptions.page=1;
_7af.currentPage=1;
_7af.reload();
}else{
_7af.lastOptions.page=1;
_7af.currentPage=1;
_7af.reload({params:{start:0,limit:_7ae.pageSize}});
}
}
}else{
ColdFusion.handleError(null,"grid.refresh.notfound","widget",[_7ac],null,null,true);
return;
}
if(_7ae.multiRowSelection){
}
$L.info("grid.refresh.success","widget",[_7ac]);
};
$G.Ext_caseInsensitive_sorting=function(){
Ext.data.Store.prototype.sortData=function(f,_7b7){
_7b7=_7b7||"ASC";
var st=this.fields.get(f).sortType;
var fn=function(r1,r2){
var v1=st(r1.data[f]),v2=st(r2.data[f]);
if(v1.toLowerCase){
v1=v1.toLowerCase();
v2=v2.toLowerCase();
}
return v1>v2?1:(v1<v2?-1:0);
};
this.data.sort(_7b7,fn);
if(this.snapshot&&this.snapshot!=this.data){
this.snapshot.sort(_7b7,fn);
}
};
};
$G.getTopToolbar=function(_7bd){
var _7be=ColdFusion.objectCache[_7bd];
if(!_7be){
ColdFusion.handleError(null,"grid.getTopToolbar.notfound","widget",[_7bd],null,null,true);
return;
}
return _7be.grid.getDockedItems()[1];
};
$G.showTopToolbar=function(_7bf){
var _7c0=ColdFusion.objectCache[_7bf];
if(!_7c0){
ColdFusion.handleError(null,"grid.showTopToolbar.notfound","widget",[_7bf],null,null,true);
return;
}
var tbar=_7c0.grid.getDockedItems()[1];
if(!tbar){
ColdFusion.handleError(null,"grid.showTopToolbar.toolbarNotDefined","widget",[_7bf],null,null,true);
return;
}
tbar.show();
};
$G.hideTopToolbar=function(_7c2){
var _7c3=ColdFusion.objectCache[_7c2];
if(!_7c3){
ColdFusion.handleError(null,"grid.hideTopToolbar.notfound","widget",[_7c2],null,null,true);
return;
}
var tbar=_7c3.grid.getDockedItems()[1];
if(!tbar){
ColdFusion.handleError(null,"grid.hideTopToolbar.toolbarNotDefined","widget",[_7c2],null,null,true);
return;
}
tbar.hide();
};
$G.refreshTopToolbar=function(_7c5){
var _7c6=ColdFusion.objectCache[_7c5];
if(!_7c6){
ColdFusion.handleError(null,"grid.refreshTopToolbar.notfound","widget",[_7c5],null,null,true);
return;
}
var tbar=_7c6.grid.getDockedItems()[1];
if(!tbar){
ColdFusion.handleError(null,"grid.refreshTopToolbar.toolbarNotDefined","widget",[_7c5],null,null,true);
return;
}
tbar.doLayout();
if(tbar.isVisible()==false){
tbar.show();
}
};
$G.getBottomToolbar=function(_7c8){
var _7c9=ColdFusion.objectCache[_7c8];
if(!_7c9){
ColdFusion.handleError(null,"grid.getBottomToolbar.notfound","widget",[_7c8],null,null,true);
return;
}
return _7c9.grid.getDockedItems()[_7c9.grid.getDockedItems().length-1];
};
$G.showBottomToolbar=function(_7ca){
var _7cb=ColdFusion.objectCache[_7ca];
if(!_7cb){
ColdFusion.handleError(null,"grid.showBottomToolbar.notfound","widget",[_7ca],null,null,true);
return;
}
var tbar=_7cb.grid.getDockedItems()[_7cb.grid.getDockedItems().length-1];
if(!tbar){
ColdFusion.handleError(null,"grid.showBottomToolbar.toolbarNotDefined","widget",[_7ca],null,null,true);
return;
}
tbar.show();
};
$G.hideBottomToolbar=function(_7cd){
var _7ce=ColdFusion.objectCache[_7cd];
if(!_7ce){
ColdFusion.handleError(null,"grid.hideBottomToolbar.notfound","widget",[_7cd],null,null,true);
return;
}
var tbar=_7ce.grid.getDockedItems()[_7ce.grid.getDockedItems().length-1];
if(!tbar){
ColdFusion.handleError(null,"grid.hideBottomToolbar.toolbarNotDefined","widget",[_7cd],null,null,true);
return;
}
tbar.hide();
};
$G.refreshBottomToolbar=function(_7d0){
var _7d1=ColdFusion.objectCache[_7d0];
if(!_7d1){
ColdFusion.handleError(null,"grid.refreshBottomToolbar.notfound","widget",[_7d0],null,null,true);
return;
}
var tbar=_7d1.grid.getDockedItems()[_7d1.grid.getDockedItems().length-1];
if(!tbar){
ColdFusion.handleError(null,"grid.refreshBottomToolbar.toolbarNotDefined","widget",[_7d0],null,null,true);
return;
}
tbar.doLayout();
if(tbar.isVisible()==false){
tbar.show();
}
};
$G.sort=function(_7d3,_7d4,_7d5){
var _7d6=ColdFusion.objectCache[_7d3];
if(!_7d6){
ColdFusion.handleError(null,"grid.sort.notfound","widget",[_7d3],null,null,true);
return;
}
_7d4=_7d4.toUpperCase();
var _7d7=-1;
var _7d8=_7d6.grid.columns;
for(var i=0;i<_7d8.length-1;i++){
if(_7d4==_7d8[i].colName){
_7d7=i;
break;
}
}
if(_7d7==-1){
ColdFusion.handleError(null,"grid.sort.colnotfound","widget",[_7d4,_7d3],null,null,true);
return;
}
if(!_7d5){
_7d5="ASC";
}
_7d5=_7d5.toUpperCase();
if(_7d5!="ASC"&&_7d5!="DESC"){
ColdFusion.handleError(null,"grid.sort.invalidsortdir","widget",[_7d5,_7d3],null,null,true);
return;
}
var _7da=_7d6.grid.getStore();
_7da.sort(_7d4,_7d5);
};
$G.getGridObject=function(_7db){
if(!_7db){
ColdFusion.handleError(null,"grid.getgridobject.missinggridname","widget",null,null,null,true);
return;
}
var _7dc=ColdFusion.objectCache[_7db];
if(_7dc==null||$G.Actions.prototype.isPrototypeOf(_7dc)==false){
ColdFusion.handleError(null,"grid.getgridobject.notfound","widget",[_7db],null,null,true);
return;
}
return _7dc.grid;
};
$G.getSelectedRows=function(_7dd){
if(!_7dd){
ColdFusion.handleError(null,"grid.getSelectedRowData.missinggridname","widget",null,null,null,true);
return;
}
var _7de=ColdFusion.objectCache[_7dd];
var _7df=new Array();
var _7e0=_7de.grid.getSelectionModel();
var _7e1=_7e0.selected;
var _7e2=_7de.grid.columns;
var _7e3=0;
if(_7de.multiRowSelection===true&&_7de.dynamic===false){
_7e3++;
}
for(i=0;i<_7e1.length;i++){
var _7e4=_7e1.items[i].data;
var _7e5={};
for(var _7e6=_7e3;_7e6<_7e2.length-1;_7e6++){
var key=_7e2[_7e6].dataIndex;
_7e5[key]=_7e4[key];
}
_7df[i]=_7e5;
}
return _7df;
};
$G.clearSelectedRows=function(_7e8){
if(!_7e8){
ColdFusion.handleError(null,"grid.getSelectedRowData.missinggridname","widget",null,null,null,true);
return;
}
var _7e9=ColdFusion.objectCache[_7e8];
var _7ea=_7e9.grid.getSelectionModel();
_7ea.deselectAll();
if(_7e9.multiRowSelection){
}
};
$G.Actions=function(_7eb){
this.gridId=_7eb;
this.init=$G.Actions.init;
this.onChangeHandler=$G.Actions.onChangeHandler;
this.onChangeHandler_MultiRowsDelete=$G.Actions.onChangeHandler_MultiRowsDelete;
this.selectionChangeEvent=new ColdFusion.Event.CustomEvent("cfGridSelectionChange",_7eb);
this.fireSelectionChangeEvent=$G.fireSelectionChangeEvent;
this._cf_getAttribute=$G.Actions._cf_getAttribute;
this._cf_register=$G.Actions._cf_register;
this.loaded=false;
};
$G.Actions.init=function(id,_7ed,_7ee,_7ef,_7f0,edit,_7f2,_7f3,_7f4,_7f5,_7f6,_7f7){
this.id=id;
this.gridName=_7ed;
this.formId=_7ee;
this.form=document.getElementById(_7ee);
this.cellClickInfo=_7ef;
this.edit=edit;
this.onChangeFunction=_7f2;
this.onErrorFunction=_7f3;
this.preservePageOnSort=_7f4;
this.pageSize=_7f5;
this.selectedRow=-1;
this.selectOnLoad=_7f6;
this.grouping=_7f7;
this.grid.addListener("cellclick",$G.cellClick,this,true);
this.editField=document.createElement("input");
this.editField.setAttribute("name",_7ed);
this.editField.setAttribute("type","hidden");
this.form.appendChild(this.editField);
if(edit){
if(!_7f0){
var _7f8=this.grid.columns;
this.editFieldPrefix="__CFGRID__EDIT__=";
var i=0;
var _7fa=_7f8.length-1;
if(this.multiRowSelection===true&&this.dynamic===false){
i++;
_7fa--;
}
this.editFieldPrefix+=_7fa+$G.Actions.fieldSep;
var _7fb=true;
for(i;i<_7f8.length-1;i++){
if(!_7fb){
this.editFieldPrefix+=$G.Actions.fieldSep;
}
this.editFieldPrefix+=_7f8[i].colName;
this.editFieldPrefix+=$G.Actions.valueSep;
if(_7f8[i].getEditor()){
this.editFieldPrefix+="Y";
}else{
this.editFieldPrefix+="N";
}
_7fb=false;
}
this.editFieldPrefix+=$G.Actions.fieldSep;
}
this.editFieldState=[];
this.editFieldState.length=this.grid.getStore().getTotalCount();
$G.Actions.computeEditField(this);
this.insertInProgress=false;
this.insertEvent=null;
this.grid.addListener("beforeedit",$G.Actions.beforeEdit,this);
this.grid.addListener("edit",$G.Actions.afterEdit,this,true);
}
if(_7f0){
this.grid.getStore().addListener("beforeload",$G.Actions.beforeLoad,this,true);
}
this.grid.getSelectionModel().addListener("select",$G.rowSelect,this,true);
this.grid.getSelectionModel().addListener("beforerowselect",$G.beforeRowSelect,this,true);
};
$G.Actions.beforeLoad=function(_7fc,_7fd){
var _7fe=_7fc.sortInfo;
var _7ff=(_7fd.sorters[0]&&_7fd.sorters[0].property!=this.sortCol);
if(_7ff&&!this.preservePageOnSort){
_7fd.start=0;
_7fd.page=1;
_7fc.currentPage=1;
}
if(_7fd.sorters[0]){
this.sortCol=_7fd.sorters[0].property;
this.sortDir=_7fd.sorters[0].direction;
}
};
$G.Actions.onLoad=function(_800){
this.editOldValue=null;
this.selectedRow=-1;
this.insertInProgress=false;
var _801=0;
if((this.bindOnLoad||!this.dynamic)&&this.selectOnLoad&&!this.grouping){
this.grid.getSelectionModel().select(_801,false);
}
if(!this.gridRendered&&this.onLoadFunction&&typeof this.onLoadFunction=="function"){
this.gridRendered=true;
this.onLoadFunction.call(null,this.grid);
}
$G.applyStyles(_800);
try{
var _802=Ext.ComponentQuery.query("tabpanel");
if(_802&&this.grid&&this.loaded==false){
for(var i=0;i<_802.length;i++){
if(_802[i].body.dom.innerHTML.indexOf(this.grid.id)>0){
_802[i].doComponentLayout();
this.loaded=true;
}
}
}
}
catch(exception){
}
};
$G.Actions._cf_getAttribute=function(_804){
_804=_804.toUpperCase();
var _805=this.selectedRow;
var _806=null;
if(_805!=0&&(!_805||_805==-1)){
return _806;
}
var ds=this.grid.getStore();
var _808=(this.dynamic)?ds.getAt(_805):ds.getById(_805);
_806=_808.get(_804);
return _806;
};
$G.Actions._cf_register=function(_809,_80a,_80b){
this.selectionChangeEvent.subscribe(_80a,_80b);
};
$G.rowSelect=function(_80c,_80d,row){
var _80f="";
var _810=_80c.selected.items;
if(_810.length==0){
return;
}
var _811=_810[0].get("CFGRIDROWINDEX")||row;
if(this.selectedRow!=_811){
this.selectedRow=_811;
var _812=true;
for(col in _810[0].data){
if(col=="CFGRIDROWINDEX"){
continue;
}
if(typeof col=="undefined"||col=="undefined"){
continue;
}
if(!_812){
_80f+="; ";
}
_80f+="__CFGRID__COLUMN__="+col+"; ";
_80f+="__CFGRID__DATA__="+_810[0].data[col];
_812=false;
}
this.fireSelectionChangeEvent();
this.insertInProgress=false;
}
};
$G.beforeRowSelect=function(_813,row){
var ds=this.grid.getStore();
var _816=ds.getAt(row);
return !$G.isNullRow(_816.data);
};
$G.isNullRow=function(data){
var _818=true;
for(col in data){
if(data[col]!=null){
_818=false;
break;
}
}
return _818;
};
$G.fireSelectionChangeEvent=function(){
$L.info("grid.fireselectionchangeevent.fire","widget",[this.id]);
this.selectionChangeEvent.fire();
};
$G.cellClick=function(grid,td,_81b,_81c,tr,_81e,e,_820){
var _821=this.cellClickInfo.colInfo[_81b];
if(_821){
var _822=grid.getSelectionModel().selected;
var url;
if(_822.items.length>0&&_822.items[0].raw){
url=_822.items[0].raw[_821.href.toUpperCase()];
}
if(!url){
url=_821.href;
}
var _824=_821.hrefKey;
var _825=_821.target;
var _826=this.appendKey;
if(this.cellClickInfo.appendKey){
var _827;
if(_824||_824==0){
var _828=grid.getStore().getAt(_81e);
var _829=grid.panel.columns[_824].dataIndex;
_827=_828.get(_829);
}else{
var _82a=this.grid.columns;
_827=_822.items[0].get(_82a[0].dataIndex);
for(var i=1;i<_82a.length-1;i++){
_827+=","+_822.items[0].get(_82a[i].dataIndex);
}
}
if(url.indexOf("?")!=-1){
url+="&CFGRIDKEY="+_827;
}else{
url+="?CFGRIDKEY="+_827;
}
}
if(_825){
_825=_825.toLowerCase();
if(_825=="_top"){
_825="top";
}else{
if(_825=="_parent"){
_825="parent";
}else{
if(_825=="_self"){
_825=window.name;
}else{
if(_825=="_blank"){
window.open(encodeURI(url));
return;
}
}
}
}
if(!parent[_825]){
ColdFusion.handleError(null,"grid.cellclick.targetnotfound","widget",[_825]);
return;
}
parent[_825].location=encodeURI(url);
}else{
window.location=encodeURI(url);
}
}
};
$G.insertRow=function(){
if(this.insertInProgress&&this.dynamic){
ColdFusion.handleError(null,"Multiple row insert is not supported","Grid",[this.gridId],null,null,true);
return;
}
var _82c={action:"I",values:[]};
var _82d=this.grid.columns;
var _82e=this.grid.getStore();
var _82f={};
var _830="{[";
for(var i=0;i<_82d.length-1;i++){
var _832="";
_82c.values[i]=[_832,_832];
_82f[_82d[i].dataIndex]=_832;
_830=_830+_82d[i].colName+":'"+_832+"',";
}
_82f["CFGRIDROWINDEX"]=_82e.getCount()+1;
_830=_830+"CFGRIDROWINDEX:'"+(_82e.getCount()+1)+"']}";
_82e.add(_830);
_82e.getAt(_82e.getCount()-1).data["CFGRIDROWINDEX"]=_82e.getCount();
if(this.dynamic==true){
this.selectedRow=_82e.getCount();
}
this.editFieldState.push(_82c);
this.grid.getSelectionModel().select(_82e.getCount()-1);
this.insertInProgress=true;
$G.Actions.computeEditField(this);
};
$G.saveNewRecord=function(){
if(!this.insertInProgress){
return;
}
var _833=this.selectedRow;
var _834=this.insertEvent;
if(_833==-1){
return;
}
if(this.onChangeFunction){
this.onChangeHandler("I",_833-1,_834,$G.insertRowCallback);
}else{
if(this.dynamic==false){
var _835=this.grid.getStore();
var _836=_834.record;
var _837=new Array(1);
_837[0]=_836;
var _838=_835.getAt(this.selectedRow-1);
_835.remove(_838);
_835.add(_837);
}
}
this.insertInProgress=false;
this.insertEvent=null;
};
$G.cancelNewRecord=function(){
if(!this.insertInProgress){
return;
}
this.editFieldState.pop();
var _839=this.grid.getStore();
var _83a=_839.getAt(this.selectedRow-1);
_839.remove(_83a);
this.insertInProgress=false;
this.insertEvent=null;
this.selectedRow=this.selectedrow-1;
};
$G.deleteRow=function(){
var _83b=null;
var _83c;
if(this.multiRowSelection===true){
var _83d=this.grid.getSelectionModel();
_83b=_83d.selected;
}
_83b=this.grid.getSelectionModel().getSelection();
if(_83b!=null&&_83b.length<2){
_83b=null;
}
if(_83b==null){
_83c=this.selectedRow;
}
if(_83c==-1&&_83b==null){
return;
}
if(this.onChangeFunction){
if(_83b!=null){
this.onChangeHandler_MultiRowsDelete("D",_83b,null,$G.deleteRowCallback);
}else{
this.onChangeHandler("D",_83c,null,$G.deleteRowCallback);
}
}else{
if(!this.dynamic){
var _83e=this.grid.getStore();
if(_83b!=null){
for(i=0;i<_83b.length;i++){
var _83f=_83e.indexOf(_83b[i]);
var _840=this.editFieldState[_83f];
if(_840){
_840.action="D";
}else{
_840=$G.Actions.initEditState(this,"D",_83b[i],_83f+1);
}
}
for(i=0;i<_83b.length;i++){
_83e.remove(_83b[i]);
}
}else{
var _840=this.editFieldState[_83c-1];
if(_840){
_840.action="D";
}else{
var _841=this.grid.getStore().getById(_83c);
_840=$G.Actions.initEditState(this,"D",_841,_83c);
}
_83e.remove(this.grid.getSelectionModel().getSelection());
}
$G.Actions.computeEditField(this);
this.grid.editingPlugin.completeEdit();
this.selectedRow=-1;
}
}
};
$G.deleteRowCallback=function(_842,_843){
var _844=_843._cf_grid.getStore();
var _845=_843._cf_grid_properties;
var _843=_844.lastOptions;
var key="start";
if(_844.getCount()==1){
if(_843.start>=_843.limit){
_843.start=_843.start-_843.limit;
}
_843.page=_843.page-1;
_844.reload(_843);
}else{
_844.reload();
}
if(_845.multiRowSelection){
var _847=_845.grid.getView().headerCt(0);
if(_847!=null){
var _848=Ext.Element.get(_847).first();
if(_848){
_848.replaceClass("x-grid3-hd-checker-on");
}
}
}
};
$G.insertRowCallback=function(_849,_84a){
var _84b=_84a._cf_grid.getStore();
var _84c=_84a._cf_grid.actions;
_84b.reload();
};
$G.Actions.beforeEdit=function(_84d,e,_84f){
if($G.isNullRow(e.record.data)){
return false;
}
this.editColumn=e.column;
this.editOldValue=e.value;
};
$G.Actions.afterEdit=function(_850,_851,_852){
var _853=_851.value;
if(_853==this.editOldValue){
return;
}
if(this.insertInProgress==false&&this.onChangeFunction){
this.onChangeHandler("U",this.selectedRow,_851);
}else{
if(!this.dynamic){
rowidx=_851.rowIdx;
if(!rowidx&&rowidx!=0){
rowidx=_851.row;
}
var _854=$G.computeActualRow_editField(this.editFieldState,_851.record.data.CFGRIDROWINDEX);
var _855=this.editFieldState[_854-1];
var _856=_851.colIdx;
if(!_856&&_856!=0){
_856=_851.column;
}
if(_855){
if(this.multiRowSelection===true&&this.insertInProgress==true){
_856=_856-1;
}
_855.values[_856][1]=_853;
}else{
var _857=this.grid.getStore().getById(_851.record.data.CFGRIDROWINDEX);
_855=$G.Actions.initEditState(this,"U",_857,_854);
var _858=this.editOldValue+"";
if(_851.column.type=="date"){
if(_858&&typeof _858=="string"){
_858=new Date(_858);
}
var _859="F, j Y H:i:s";
if(_851.column&&_851.column.format){
_859=_851.column.format;
}
_855.values[_856][1]=Ext.Date.format(_853,_859);
_855.values[_856][0]=_858?Ext.Date.format(_858,_859):_858;
}else{
_855.values[_856][0]=_858;
_855.values[_856][1]=_853;
}
}
$G.Actions.computeEditField(this);
}
}
this.editOldValue=null;
this.fireSelectionChangeEvent();
};
$G.computeActualRow_editField=function(_85a,_85b){
if(_85a.length==_85b){
return _85b;
}
var _85c=0;
var _85d=0;
for(;_85d<_85a.length&&_85c<_85b;_85d++){
var _85e=_85a[_85d];
if(!_85e||_85e.action!="D"){
_85c++;
}
}
return _85d;
};
$G.Actions.onChangeHandler=function(_85f,_860,_861,_862){
var _863={};
var _864={};
var data="";
if(null==_861){
data=this.grid.getStore().getAt(_860).data;
}else{
data=_861?_861.record.data:this.grid.getStore().getAt(_860).data;
}
for(col in data){
_863[col]=data[col];
}
if(_85f=="U"){
if((_861.value==null||_861.value=="")&&(_861.originalValue==null||_861.originalValue=="")){
return;
}
if(_861.value&&_861.column.type=="date"){
if(typeof _861.originalValue=="string"){
var _866=new Date(_861.originalValue);
}
if(_866!=null&&_866.getElapsed(_861.value)==0){
return;
}else{
_863[_861.field]=_861.originalValue;
var _867="F, j Y H:i:s";
if(_861.column.format){
_867=_861.column.format;
}
_864[_861.field]=Ext.Date.format(_861.value,_867);
}
}else{
_863[_861.field]=_861.originalValue;
_864[_861.field]=_861.value;
}
}
this.onChangeFunction(_85f,_863,_864,_862,this.grid,this.onErrorFunction,this);
};
$G.Actions.onChangeHandler_MultiRowsDelete=function(_868,_869,_86a,_86b){
var _86c=new Array();
var _86d={};
for(i=0;i<_869.length;i++){
_86c[i]=_869.items[i].data;
}
this.onChangeFunction(_868,_86c,_86d,_86b,this.grid,this.onErrorFunction,this);
};
$G.Actions.initEditState=function(_86e,_86f,_870,_871){
var _872={action:_86f,values:[]};
var _873=_86e.grid.columns;
var _874=_873.length-1;
_872.values.length=_874;
var i=0;
if(_86e.multiRowSelection===true&&_86e.dynamic===false){
i=i++;
}
for(i;i<_874;i++){
var _876=_870.get(_873[i].colName);
_872.values[i]=[_876,_876];
}
_86e.editFieldState[_871-1]=_872;
return _872;
};
$G.Actions.fieldSep=eval("'\\u0001'");
$G.Actions.valueSep=eval("'\\u0002'");
$G.Actions.nullValue=eval("'\\u0003'");
$G.Actions.computeEditField=function(_877){
if(_877.dynamic){
return;
}
var _878=_877.editFieldPrefix;
var _879=_877.editFieldState;
var _87a=_877.grid.columns;
var _87b=0;
var _87c="";
for(var i=0;i<_879.length;i++){
var _87e=_879[i];
if(_87e){
_87b++;
_87c+=$G.Actions.fieldSep;
_87c+=_87e.action+$G.Actions.valueSep;
var _87f=_87e.values;
if(_877.multiRowSelection===true&&_877.dynamic===false&&_87e.action!="I"){
_87f=_87f.slice(1,_87f.length);
}
for(var j=0;j<_87f.length;j++){
if(j>0){
_87c+=$G.Actions.valueSep;
}
var _881=($G.Actions.isNull(_87f[j][0]))?$G.Actions.nullValue:_87f[j][0];
var _882=($G.Actions.isNull(_87f[j][1]))?$G.Actions.nullValue:_87f[j][1];
var _883=j;
if(_877.multiRowSelection===true){
_883++;
}
if(_87a[_883].getEditor()&&_882==$G.Actions.nullValue&&_87a[_883].getEditor().xtype=="checkbox"){
_882="0";
}
if(_87e.action!="I"||(_87e.action=="I"&&_87a[_883].getEditor())){
_87c+=_882;
if(_87e.action=="U"&&_87a[_883].getEditor()){
_87c+=$G.Actions.valueSep+_881;
}
}
}
}
}
_878+=_87b+_87c;
_877.editField.setAttribute("value",_878);
};
$G.Actions.isNull=function(val){
var ret=(val==null||typeof (val)=="undefined"||val.length==0);
return ret;
};
$G.loadData=function(data,_887){
_887._cf_gridDataProxy.loadResponse(data,_887);
var _888=ColdFusion.objectCache[_887._cf_gridname];
$G.applyStyles(_888);
$L.info("grid.loaddata.loaded","widget",[_887._cf_gridname]);
if($G.Actions.isNull(data.TOTALROWCOUNT)==false&&data.TOTALROWCOUNT==0){
_888.fireSelectionChangeEvent();
}
};
$G.printObject=function(obj){
var str="";
for(key in obj){
str=str+"  "+key+"=";
value=obj[key];
str+=value;
}
return str;
};
$G.formatBoolean=function(v,p,_88d){
return "<div class=\"x-grid3-check-col"+(v?"-on":"")+" x-grid3-cc-"+this.id+"\">&#160;</div>";
};
$G.formatDate=function(_88e,p,_890){
if(_88e&&!_88e.dateFormat){
_88e=new Date(_88e);
}
var _891=this.dateFormat?this.dateFormat:"m/d/y";
return _88e?Ext.Date.dateFormat(_88e,_891):"";
};
$G.convertDate=function(_892,p,_894){
if(_892&&!_892.dateFormat){
_892=new Date(_892);
}
var _895=this.dateFormat?this.dateFormat:"m/d/y";
return _892;
};
$G.ExtProxy=function(_896,_897){
this.api={load:true,create:undefined,save:undefined,destroy:undefined};
$G.ExtProxy.superclass.constructor.call(this);
this.bindHandler=_896;
this.errorHandler=_897;
};
Ext.extend($G.ExtProxy,Ext.data.DataProxy,{_cf_firstLoad:true,load:function(_898,_899,_89a,_89b,arg){
if(!this._cf_actions.bindOnLoad){
var _89d={"_cf_reader":_899,"_cf_grid_errorhandler":this.errorHandler,"_cf_scope":_89b,"_cf_gridDataProxy":this,"_cf_gridname":this._cf_gridName,"_cf_arg":arg,"_cf_callback":_89a,"ignoreData":true};
var data=[];
for(i=0;i<_898.limit;i++){
data.push(new Ext.data.Record({}));
}
this.loadResponse(data,_89d);
this._cf_actions.bindOnLoad=true;
}else{
var _89f=(_898.start/_898.limit)+1;
if(!_898.sort){
_898.sort="";
}
if(!_898.dir){
_898.dir="";
}
this.bindHandler(this,_89f,_898.limit,_898.sort,_898.dir,this.errorHandler,_89a,_89b,arg,_899);
}
},loadResponse:function(data,_8a1){
var _8a2=null;
if(_8a1.ignoreData){
_8a2={success:true,records:data,totalRecords:data.length};
}else{
var _8a3;
if(!data){
_8a3="grid.extproxy.loadresponse.emptyresponse";
}else{
if(!data.TOTALROWCOUNT&&data.TOTALROWCOUNT!=0){
_8a3="grid.extproxy.loadresponse.totalrowcountmissing";
}else{
if(!ColdFusion.Util.isInteger(data.TOTALROWCOUNT)){
_8a3="grid.extproxy.loadresponse.totalrowcountinvalid";
}else{
if(!data.QUERY){
_8a3="grid.extproxy.loadresponse.querymissing";
}else{
if(!data.QUERY.COLUMNS||!ColdFusion.Util.isArray(data.QUERY.COLUMNS)||!data.QUERY.DATA||!ColdFusion.Util.isArray(data.QUERY.DATA)||(data.QUERY.DATA.length>0&&!ColdFusion.Util.isArray(data.QUERY.DATA[0]))){
_8a3="grid.extproxy.loadresponse.queryinvalid";
}
}
}
}
}
if(_8a3){
ColdFusion.handleError(_8a1._cf_grid_errorHandler,_8a3,"widget");
this.fireEvent("loadexception",this,_8a1,data,e);
return;
}
_8a2=_8a1._cf_reader.readRecords(data);
}
this.fireEvent("load",this,_8a1,_8a1._cf_arg);
_8a1._cf_callback.call(_8a1._cf_scope,_8a2,_8a1._cf_arg,true);
},update:function(_8a4){
},updateResponse:function(_8a5){
}});
$G.ExtReader=function(_8a6){
this.recordType=Ext.data.Record.create(_8a6);
};
Ext.extend($G.ExtReader,Ext.data.DataReader,{readRecords:function(_8a7){
var _8a8=[];
var cols=_8a7.QUERY.COLUMNS;
var data=_8a7.QUERY.DATA;
for(var i=0;i<data.length;i++){
var _8ac={};
for(var j=0;j<cols.length;j++){
_8ac[cols[j]]=data[i][j];
}
_8a8.push(new Ext.data.Record(_8ac));
}
return {success:true,records:_8a8,totalRecords:_8a7.TOTALROWCOUNT};
}});
$G.CheckColumn=function(_8ae){
Ext.apply(this,_8ae);
if(!this.id){
this.id=Ext.id();
}
this.renderer=this.renderer.bind(this);
};
$G.findColumnIndex=function(grid,_8b0){
var _8b1=grid.headerCt.getGridColumns();
for(var i=0;i<_8b1.length;i++){
if(_8b1[i].dataIndex==_8b0){
return i;
}
}
};
$G.CheckColumn.prototype={init:function(grid){
this.grid=grid;
this.count=0;
this.columnIndex=$G.findColumnIndex(this.grid,this.dataIndex);
this.grid.on("render",function(){
var view=this.grid.getView();
if(this.editable==true){
this.grid.addListener("itemmousedown",this.onMouseDown,this);
}
},this);
},onMouseDown:function(thi,_8b6,item,_8b8,e,_8ba){
var t=e.target;
if(t.className&&t.className.indexOf("x-grid-cc-"+this.id)!=-1){
e.stopEvent();
var _8bc=ColdFusion.clone(_8b6);
_8bc.data=ColdFusion.clone(_8b6.data);
this.grid.getSelectionModel().select(_8b8);
this.grid.getSelectionModel().fireEvent("rowselect",this.grid.getSelectionModel(),_8b8);
this.grid.fireEvent("beforeedit",this,{grid:this.grid,row:_8b8,record:_8b6,column:this.columnIndex,field:this.dataIndex,value:_8b6.data[this.dataIndex]});
_8b6.set(this.dataIndex,this.toggleBooleanValue(_8b6.data[this.dataIndex]));
this.grid.fireEvent("edit",this,{grid:this.grid,row:_8b8,record:_8bc,column:this.columnIndex,field:this.dataIndex,value:_8b6.data[this.dataIndex],originalValue:_8bc.data[this.dataIndex]});
}
},toggleBooleanValue:function(v){
v=typeof v=="undefined"?"N":(typeof v=="string"?v.toUpperCase():v);
if(v==="Y"){
return "N";
}
if(v==="N"){
return "Y";
}
if(v===true){
return false;
}
if(v===false){
return true;
}
if(v===0){
return 1;
}
if(v===1){
return 0;
}
if(v==="YES"){
return "NO";
}
if(v==="NO"){
return "YES";
}
if(v==="T"){
return "F";
}
if(v==="F"){
return "T";
}
return "Y";
},renderer:function(v,p,_8c0){
p.css+=" x-grid-check-col-td";
var _8c1=false;
v=(typeof v=="string")?v.toUpperCase():v;
if(typeof v!="undefined"&&(v==1||v=="1"||v=="Y"||v=="YES"||v=="TRUE"||v===true||v==="T")){
_8c1=true;
}
return "<div style=\"background-repeat: no-repeat;background-position:center center;width:auto\" class=\"x-grid-cell-checker"+(_8c1!=true?"-off":"")+" x-grid-cc-"+this.id+"\">&#160;</div>";
}};
$G.convertBoolean=function(v,_8c3){
v=typeof v=="undefined"?"N":(typeof v=="string"?v.toUpperCase():v);
if(v==="Y"){
return "YES";
}
if(v==="N"){
return "NO";
}
if(v===true){
return "YES";
}
if(v===false){
return "NO";
}
if(v===0){
return "NO";
}
if(v===1){
return "YES";
}
if(v==="YES"){
return "YES";
}
if(v==="NO"){
return "NO";
}
if(v==="T"){
return "YES";
}
if(v==="F"){
return "NO";
}
if(v==="FALSE"){
return "NO";
}
if(v==""){
return "NO";
}
if(v.toUpperCase()=="NULL"){
return "NO";
}
return "YES";
};
Ext.define("MyReader",{extend:"Ext.data.reader.Json",alias:"reader.my-json",read:function(_8c4){
var _8c5=_8c4.responseText;
if(!_8c5){
_8c5=_8c4;
}
var _8c6="";
if(!this.proxy._cf_actions.bindOnLoad){
_8c6="{  totalrows:0, data :[] }";
this.proxy._cf_actions.bindOnLoad=true;
}else{
_8c6=$G.queryToJson(_8c5);
}
$G.applyStyles(this.proxy._cf_actions);
return this.callParent([Ext.decode(_8c6)]);
}});
Ext.define("customcfajax",{extend:"Ext.data.proxy.Ajax",alias:"proxy.customcfajax",getParams:function(_8c7){
params=this.callParent(arguments);
if(!(this.sortParam&&_8c7.sorters&&_8c7.sorters.length>0)){
params[this.sortParam]="";
params[this.directionParam]="ASC";
}
return params;
}});
Ext.define("Ext.data.proxy.JsProxy",{requires:["Ext.util.MixedCollection","Ext.Ajax"],extend:"Ext.data.proxy.Server",alias:"proxy.jsajax",alternateClassName:["Ext.data.HttpProxy","Ext.data.JsProxy"],actionMethods:{create:"POST",read:"GET",update:"POST",destroy:"POST"},binary:false,jsfunction:"",extraparams:[],getParams:function(_8c8){
params=this.callParent(arguments);
if(!(this.sortParam&&_8c8.sorters&&_8c8.sorters.length>0)){
params[this.sortParam]="";
params[this.directionParam]="ASC";
}
return params;
},processResponse:function(_8c9,_8ca,_8cb,_8cc,_8cd,_8ce){
var me=this,reader,result;
if(_8c9===true){
reader=me.getReader();
reader.applyDefaults=_8ca.action==="read";
result=reader.read(me.extractResponseData(_8cc));
if(result.success!==false){
Ext.apply(_8ca,{response:_8cc,resultSet:result});
_8ca.commitRecords(result.records);
_8ca.setCompleted();
_8ca.setSuccessful();
}else{
_8ca.setException(result.message);
me.fireEvent("exception",this,_8cc,_8ca);
}
}else{
me.setException(_8ca,_8cc);
me.fireEvent("exception",this,_8cc,_8ca);
}
if(typeof _8cd=="function"){
_8cd.call(_8ce||me,_8ca);
}
},doRequest:function(_8d0,_8d1,_8d2){
var me=this;
op=_8d0;
sorters=_8d0.sorters;
sortcol="";
sortdir="ASC";
if(sorters.length>0){
sortcol=sorters[0].property;
sortdir=sorters[0].direction;
}
if(this._cf_actions.bindOnLoad){
result=eval(this.jsfunction);
}else{
var _8d4=[];
for(i=0;i<this._cf_actions.grid.columns.length;i++){
var _8d5=this._cf_actions.grid.columns[i];
_8d4[i]=_8d5.colName;
}
result="{  totalrows:0, QUERY : { COLUMNS : "+_8d4+" data :[] }}";
}
me.processResponse(true,_8d0,"",result,_8d1,_8d2);
return null;
},getMethod:function(_8d6){
return this.actionMethods[_8d6.action];
},createRequestCallback:function(_8d7,_8d8,_8d9,_8da){
var me=this;
return function(_8dc,_8dd,_8de){
me.processResponse(_8dd,_8d8,_8d7,_8de,_8d9,_8da);
};
}},function(){
Ext.data.HttpProxy=this;
});
$G.queryToJson=function(data){
var _8e0=[];
jsondata=ColdFusion.AjaxProxy.JSON.decode(data);
var cols=jsondata.QUERY.COLUMNS;
var data=jsondata.QUERY.DATA;
var _8e2="{  totalrows:"+jsondata.TOTALROWCOUNT+", data :[";
for(var i=0;i<data.length;i++){
var _8e4={};
_8e2=_8e2+"{";
for(var j=0;j<cols.length;j++){
if(data[i][j]==null){
data[i][j]="";
}
_8e4[cols[j]]=data[i][j];
encodedata=ColdFusion.AjaxProxy.JSON.encode(data[i][j]);
_8e2=_8e2+cols[j]+":"+encodedata;
if(j!=cols.length-1){
_8e2=_8e2+",";
}
}
_8e2=_8e2+"}";
if(i!=data.length-1){
_8e2=_8e2+",";
}
}
_8e2=_8e2+"]}";
return _8e2;
};
$G.queryToArray=function(data){
var _8e7=[];
jsondata=ColdFusion.AjaxProxy.JSON.decode(data);
var cols=jsondata.QUERY.COLUMNS;
var data=jsondata.QUERY.DATA;
var _8e9=new Array();
for(var i=0;i<data.length;i++){
var _8eb=new Array(1);
for(var j=0;j<cols.length;j++){
_8eb[j]=data[i][j];
}
_8e9[i]=_8eb;
}
return _8e9;
};
};
cfinitgrid();
