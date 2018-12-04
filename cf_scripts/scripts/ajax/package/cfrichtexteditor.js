/*ADOBE SYSTEMS INCORPORATED
Copyright 2012 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
ColdFusion.RichText||(ColdFusion.RichText={});
ColdFusion.RichText.editorState={};
ColdFusion.RichText.buffer=null;
ColdFusion.RichText.registerAfterSet=function(_4b9){
if(ColdFusion.RichText.editorState[_4b9]){
var _4ba=function(){
ColdFusion.RichText.fireChangeEvent(_4b9);
};
var _4bb=CKEDITOR.instances[_4b9];
_4bb.on("OnAfterSetHTML",_4ba);
}else{
setTimeout("ColdFusion.RichText.registerAfterSet('"+_4b9+"')",1000);
}
};
ColdFusion.RichText.getEditorObject=function(_4bc){
if(!_4bc){
ColdFusion.handleError(null,"richtext.geteditorobject.missingtextareaname","widget",null,null,null,true);
return;
}
var _4bd=ColdFusion.objectCache[_4bc];
if(_4bd==null||CKEDITOR.editor.prototype.isPrototypeOf(_4bd)==false){
ColdFusion.handleError(null,"richtext.geteditorobject.notfound","widget",[_4bc],null,null,true);
return;
}
return CKEDITOR.instances[_4bd.richtextid];
};
ColdFusion.RichText.setValue=function(_4be,_4bf){
if(ColdFusion.RichText.editorState[_4be]){
var _4c0=CKEDITOR.instances[_4be];
_4c0.setData(_4bf);
_4c0.fire("onAfterSetHTML");
}else{
setTimeout("ColdFusion.RichText.setValue(\""+_4be+"\",\""+_4bf+"\")",1000);
}
};
ColdFusion.RichText.getValue=function(_4c1){
if(ColdFusion.RichText.editorState[_4c1]){
return CKEDITOR.instances[_4c1].getData();
}else{
ColdFusion.Log.error("richtext.initialize.getvalue.notready","widget",[_4c1]);
return null;
}
};
ColdFusion.RichText.fireChangeEvent=function(_4c2){
var _4c3=ColdFusion.objectCache[_4c2];
ColdFusion.Log.info("richtext.firechangeevent.firechange","widget",[_4c3._cf_name]);
var _4c4=document.getElementById(_4c2);
if(_4c4){
if(_4c4.fireEvent){
_4c4.fireEvent("onchange");
}
if(document.createEvent){
var evt=document.createEvent("HTMLEvents");
if(evt.initEvent){
evt.initEvent("change",true,true);
}
if(_4c4.dispatchEvent){
_4c4.dispatchEvent(evt);
}
}
}
ColdFusion.Event.callBindHandlers(_4c2,null,"change");
};
ColdFusion.RichText.editor_onfocus=function(e){
document.getElementById(e.editor.id+"_top").style.display="block";
};
ColdFusion.RichText.editor_onblur=function(e){
document.getElementById(e.editor.id+"_top").style.display="none";
};
ColdFusion.RichText.setChangeBuffer=function(e){
ColdFusion.RichText.buffer=CKEDITOR.instances[e.editor.name].getData();
};
ColdFusion.RichText.resetChangeBuffer=function(e){
if(ColdFusion.RichText.buffer!=CKEDITOR.instances[e.editor.name].getData()){
ColdFusion.RichText.fireChangeEvent(e.editor.name);
}
ColdFusion.RichText.buffer=null;
};
var parameters={};
CKEDITOR.on("instanceCreated",function(e){
var _4cb=e.editor.name;
if(parameters[_4cb].Id){
ColdFusion.RichText.editorState[parameters[_4cb].Id]=false;
e.editor.richtextid=parameters[_4cb].Id;
ColdFusion.objectCache[parameters[_4cb].Id]=e.editor;
}
if(parameters[_4cb].Name){
e.editor._cf_name=parameters[_4cb].Name;
ColdFusion.objectCache[parameters[_4cb].Name]=e.editor;
}
if(parameters[_4cb].Val){
e.editor.Value=parameters[_4cb].Val;
}
e.editor._cf_setValue=function(_4cc){
ColdFusion.RichText.setValue(_4cb,_4cc);
};
e.editor._cf_getAttribute=function(){
return ColdFusion.RichText.getValue(_4cb);
};
e.editor._cf_register=function(_4cd,_4ce,_4cf){
var _4d0=document.getElementById(_4cb);
if(_4d0){
ColdFusion.Event.addListener(_4d0,_4cd,_4ce,_4cf);
}
};
});
ColdFusion.RichText.initialize=function(Id,Name,Val,_4d4,_4d5,_4d6,_4d7,_4d8,_4d9,Skin,_4db,_4dc,_4dd,_4de,_4df){
parameters[Id]={};
parameters[Id].Id=Id;
parameters[Id].Name=Name;
parameters[Id].Val=Val;
var _4e0=function(evt){
if(_4db==true){
evt.editor.on("focus",ColdFusion.RichText.editor_onfocus);
evt.editor.on("blur",ColdFusion.RichText.editor_onblur);
document.getElementById(evt.editor.id+"_top").style.display="none";
}
evt.editor.on("focus",ColdFusion.RichText.setChangeBuffer);
evt.editor.on("blur",ColdFusion.RichText.resetChangeBuffer);
ColdFusion.RichText.editorState[evt.editor.name]=true;
if(ColdFusion.RichText.OnComplete){
ColdFusion.RichText.OnComplete(evt.editor);
}
};
var _4e2={on:{"instanceReady":_4e0}};
_4e2["toolbar"]="Default";
if(_4d6!=null){
_4e2["height"]=_4d6;
}
if(_4d5!=null){
_4e2["width"]=_4d5;
}
if(_4d7!=null){
_4e2["font_names"]=_4d7;
}
if(_4d8!=null){
_4e2["fontSize_sizes"]=_4d8;
}
if(_4d9!=null){
_4e2["format_tags"]=_4d9;
}
if(Skin!=null){
_4e2["skin"]=Skin;
}
if(_4db==true){
_4e2["toolbarCanCollapse"]=false;
}
if(_4dc!=null){
_4e2["toolbar"]=_4dc;
}
var _4e3=CKEDITOR.replace(Id,_4e2);
};
