����  - � 
SourceFile */CFIDE/administrator/security/useredit.cfm 0cfuseredit2ecfm1791926774$funcCFADMIN_GETALLDSNS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   DSNNAMES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - _setCurrentLineNo (I)V / 0
   1 ArrayNew (I)Ljava/util/List; 3 4 coldfusion/runtime/CFPage 6
 7 5 set (Ljava/lang/Object;)V 9 : coldfusion/runtime/Variable <
 = ; REQUEST ? java/lang/String A SQLEXECUTIVE C NAMES E _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; G H
   I _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; K L
   M _List $(Ljava/lang/Object;)Ljava/util/List; O P coldfusion/runtime/Cast R
 S Q 
textnocase U asc W 	ArraySort 7(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z Y Z
 7 [ cfadmin_getAllDsns ] metaData Ljava/lang/Object; _ `	  a &coldfusion/runtime/AttributeCollection c java/lang/Object e name g 
Parameters i ([Ljava/lang/Object;)V  k
 d l getMetadata ()Ljava/lang/Object; this 2Lcfuseredit2ecfm1791926774$funcCFADMIN_GETALLDSNS; LocalVariableTable Code getName ()Ljava/lang/String; getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 1       _ `     n o  s   "     � b�    r        p q    t u  s   !     ^�    r        p q    v w  s   #     � B�    r        p q    x y  s  }     w+� � :+� ,� :	+� :
-� $� *:-� .:
-]� 2-� 8� >
-@� BYDSYFS� J� >-b� 2-
� N� TVX� \W-
� N��    r   p    w p q     w z {    w | `    w } ~    w  �    w � �    w � `    w + ,    w  �    w  � 	   w  � 
 �   ~   [ ,[ ,] 6] 6] 5] 5] 5] 5] ,] ?` ?` ?` ?` =` ]b ]b ]b ]b fb fb hb hb ]b ]b ]b nc nc nc nc nc     s   #     *� 
�    r        p q    �   s   C     %� dY� fYhSY^SYjSY� fS� m� b�    r       % p q        ����  -
 
SourceFile */CFIDE/administrator/security/useredit.cfm cfuseredit2ecfm1791926774  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   ALLROLESMAP Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   GRANTEDFILEPERMISSIONS   	   NEWFILEREAD   	    FILEOBJ " " 	  $ 
DATASOURCE & & 	  ( EXECUTE_VAR * * 	  , USERNAME . . 	  0 TOKEN 2 2 	  4 ADDFILE 6 6 	  8 	AUTHUSERS : : 	  < ALLOWRDSACCESSLABEL > > 	  @ 
EDITEDUSER B B 	  D EDIT F F 	  H 	PASSWORD2 J J 	  L PASSWORD_EMPTY N N 	  P 	PASSWORD1 R R 	  T NEWFILE V V 	  X DATAS Z Z 	  \ CFADMIN_GETALLDSNS ^ ^ 	  ` ERR_USERNAMELENGTH b b 	  d SORTEDDSNARRAY f f 	  h DESCRIPTIONLABEL j j 	  l USERALLOWADMINAPI n n 	  p NEWFILEEXECUTE r r 	  t ACTS v v 	  x USERALLOWADMINAPICHECK z z 	  | 	CANCELADD ~ ~ 	  � I � � 	  � GRANTEDROLES � � 	  � VFSFILEFACTORY � � 	  � ERR_CANTCREATEROOT � � 	  � URL � � 	  � ROLE � � 	  � ALLOWCLIENTCERTAUTH � � 	  � DELETE � � 	  � 	USERALLOW � � 	  � USERNAME_EMPTY � � 	  � ERR_PASSWORDLENGTH � � 	  � DESCRIPTION � � 	  � ERR_USERNAMENONCHARS � � 	  � APIACCESSONLYLABEL � � 	  � 
DELETE_VAR � � 	  � NEWFILEDELETE � � 	  � 
ADDUSERBTN � � 	  � ALLDATASOURCESMAP � � 	  � PAGEHEADER_USERMANAGER � � 	  � USERALLOWCLIENTCERTAUTH � � 	  � ADMINACTION � � 	  � ALLROLES � � 	  � PROHIBITEDDATASOURCESLABEL � � 	  � GRANTEDDATASOURCES � � 	  � PROHIBITEDSERVICESLABEL � � 	  � ALLOWEDSERVICESLABEL � � 	  � ADMINAUTH_ERROR � � 	  � REQUEST � � 	  � ALLOWEDROLESLABEL � � 	  � BROWSE_BUTTON_USER � � 	  � BERRORSEXIST � � 	  � FNAMES � � 	   ERR_USERNAMEALREADYEXISTS 	  MODE 	  ERR_PASSWORDMISMATCH

 	  FILEPERMISSIONSSTR 	  ALLOWEDDATASOURCESLABEL 	  TEMPFILE 	  TEMPLIST 	  GRANTEDROLESSELECTLIST 	   ADDEDITUSERFILEDIR"" 	 $ ALLSERVICESMAP&& 	 ( SERVICE** 	 , CURRENTUSER.. 	 0 SORTEDDSNNAMES22 	 4 NEWUSER66 	 8 ADMINCONSOLEANDAPILABEL:: 	 < ADDUSER>> 	 @ EDITFILEBB 	 D USERDATASOURCEPERMISSIONFF 	 H UNAMEJJ 	 L SORTEDROLENAMESNN 	 P PASSWORDRR 	 T FILEPERMVV 	 X 
FILESTRUCTZZ 	 \ CONSTRUCTFILEPERMISSIONS^^ 	 ` ALLOWADMINACCESSLABELbb 	 d USERALLOWADMINISTRATIVEff 	 h PROHIBITEDROLESSELECTLISTjj 	 l 
FILESPERMSnn 	 p 	SUBTITLE2rr 	 t 	SUBTITLE3vv 	 x PWORDzz 	 | CHECKCSRFTOKEN~~ 	 � 	SUBTITLE1�� 	 � ROLENAME�� 	 � ALLDATASOURCES�� 	 � GRANTEDSERVICES�� 	 � EDITUSERBTN�� 	 � FILEACTIONSARRAY�� 	 � READ_VAR�� 	 � GETCSRFTOKEN�� 	 � 	WRITE_VAR�� 	 � PROHIBITEDROLESLABEL�� 	 � CANCELEDITBTN�� 	 � CONFIRMPASSWORD�� 	 � FORM�� 	 � EDITUSER�� 	 � CHARHELPSTRING�� 	 � ERR_USERDOESNTEXIST�� 	 � AERRORMESSAGES�� 	 � RDSAUTH_ERROR�� 	 � NEWFILEWRITE�� 	 � 
TEMPACTION�� 	 � USERALLOWRDS�� 	 � USERALLOWADMIN�� 	 � com.macromedia.SourceModTime  d7ߕ pageContext #Lcoldfusion/runtime/NeoPageContext;��	 � getOut ()Ljavax/servlet/jsp/JspWriter;�� javax/servlet/jsp/JspContext�
�� parent Ljavax/servlet/jsp/tagext/Tag;��	 � Cp1252� setPageEncoding (Ljava/lang/String;)V�� !coldfusion/runtime/NeoPageContext�
�� _setCurrentLineNo (I)V��
 � java/lang/String� SECURITY� _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;��
 � isAdminSecurityEnabled� java/lang/Object _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
  _boolean (Ljava/lang/Object;)Z coldfusion/runtime/Cast

	 isAdminUserIdRequired isRootAdminUser NOTROOTADMIN coldfusion/runtime/CFBoolean t_true Lcoldfusion/runtime/CFBoolean;	 _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V
  'class$coldfusion$tagext$lang$IncludeTag Ljava/lang/Class; !coldfusion.tagext.lang.IncludeTag forName %(Ljava/lang/String;)Ljava/lang/Class;!" java/lang/Class$
%#	 ' _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag;)*
 + !coldfusion/tagext/lang/IncludeTag- 	cfinclude/ template1 GetContextRoot ()Ljava/lang/String;34
 5 "/CFIDE/administrator/forbidden.cfm7 concat &(Ljava/lang/String;)Ljava/lang/String;9:
�; _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;=>
 ? setTemplateA�
.B 	hasEndTag (Z)VDE coldfusion/tagext/GenericTagG
HF _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)ZJK
 L %class$coldfusion$tagext$lang$AbortTag coldfusion.tagext.lang.AbortTagON	 Q coldfusion/tagext/lang/AbortTagS �
<script src="../../../cf_scripts/scripts/ajax/jquery/jquery.js" type="text/javascript"></script>
<script src="../sha1.js" type="text/javascript"></script>
U writeW� java/io/WriterY
ZX pstrength.cfm\ �
<script language="Javascript" src="../scripts/util.js"></script>


<script type="text/javascript">
function select(){
	$('.password').pstrength();
}
</script>

^ LOCALE` REQUEST.LOCALEb end checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Vfg
 h 
LOCALEFILEj java/lang/StringBuilderl resources/security_n �
mp _resolveAndAutoscalarizer�
 s _String &(Ljava/lang/Object;)Ljava/lang/String;uv
w append -(Ljava/lang/String;)Ljava/lang/StringBuilder;yz
m{ .cfm} toString4
� (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag��	 � "coldfusion/tagext/lang/ImportedTag� l10n� 
../cftags/� admin� setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V��
�� &coldfusion/runtime/AttributeCollection� id� adminAuth_error� var� ([Ljava/lang/Object;)V �
�� setAttributecollection (Ljava/util/Map;)V��  coldfusion/tagext/lang/ModuleTag�
�� 
doStartTag ()I��
�� 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;��
 � �Administrative Authentication is currently only enabled for the admin user.  To enable access to the Console or Admin API by other users, go to Security > Administrator to enable Separate User name and Password Authentication� doAfterBody��
�� _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;��
 � doEndTag�� #javax/servlet/jsp/tagext/TagSupport�
�� doCatch (Ljava/lang/Throwable;)V��
�� 	doFinally� 
�� rdsAuth_error� �RDS Authentication is currently only enabled for the admin user.  To enable access to RDS by other users, go to Security > RDS to enable Separate User name and Password Authentication� 	subtitle1� RDS and Administrator Access� 	subtitle2� 	Sandboxes� 	subtitle3� Exposed Services� userManagerPagename� pagename� User Manager� username� 
User name:� AllowClientCertAuth� Certificate Authentication� Password� 	Password:� ConfirmPassword� Confirm Password:� DescriptionLabel� Description:� AllowRDSAccessLabel� Allow RDS Access� AllowAdminAccessLabel� Allow Administrative Access� APIAccessOnlyLabel� API Access Only� AdminConsoleAndAPILabel� "Administrator Console & API Access� AllowedRolesLabel� Allowed Roles:� ProhibitedRolesLabel� Prohibited Roles: AllowedServicesLabel Allowed Services: ProhibitedServicesLabel Prohibited Services:	 AllowedDataSourcesLabel Allowed Data sources: ProhibitedDataSourcesLabel Prohibited Data sources: UserDataSourcePermission Data Source Permissions AddEditUserFileDir (Add / Edit Secured Files and Directories 
addUserBtn Add User editUserBtn Update User! cancelEditBtn# Cancel Edit% 	cancelAdd' Cancel) addUser+ Authentication (Add Mode)- editUser/ Authentication (Edit Mode)1 edit3 Edit5 Delete7 delete9 GridHeaderAction; Action= GridHeaderUser? UserA GridHeaderSandBoxesC GridHeaderRolesE RolesG GridHeaderAccessI AccessK CFAdminAccessLabelM CF AdminO RDSAccessLabelQ RDSS AdminAPIAccessLabelU 	Admin APIW err_usernameAlreadyExistsY 5Unable to create user: this user name already exists.[ err_cantcreateroot] ]Unable to create user: You are attempting to create a user with the same ID as the root user._ err_userDoesntExista The selected user doesn't existc pageHeader_usermanagere 	_factor18 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object;gh
 i deleteConfirmationk *Are you sure you want to delete this user?m err_passwordlengtho 8Password should be greater than or equal to 5 charactersq err_usernamelengths /User name should be between 5 and 20 charactersu err_usernamenoncharsw 2User name can contain only alphanumeric charactersy err_passwordmismatch{ *Password and Confirm Password do not match} charHelpString (Minimum 5 characters)� username_empty� User name cannot be empty� password_empty� Password cannot be empty� password_oldpassword_error1� password_oldpassword_error� ?Password could not be changed as the old password is incorrect.� err_no_sandbox_permission� NYou need to grant atleast one permission to files/directories added in sandbox� allDatasourcesLabel� &lt;&lt;ALL DATASOURCES&gt;&gt;� read� read_var� Read�W 	write_var� Write� execute� execute_var� Execute� 
delete_var�%

<script language="javascript">
	//global var to keep file permissions for this call
	var globalfilepermissionsstr = "";
	if(document.getElementById("filepermissionsstr") != null && (document.getElementById("filepermissionsstr").value).length > 0)
	{		
		globalfilepermissionsstr = document.getElementById("filepermissionsstr").value;
	}
	var interfileentrydelim = "$$$$";
	var fileactionsdelim = "====";
	// variable to keep original name in case of edit
	var originalfilenamestr ="";
	
	
	
	function init()
	{
		//Initialize the List Boxes to the correct state when the page loads.
		enableListBoxes();
		showRadioButtons();
		enableSandBoxes();
	}

	function showRadioButtons()
	{
		var allowAdministrative = document.getElementById("userallowadministrative");
		var userallowapionly = document.getElementById("userallowapionly");
		var userallowapiandconsole = document.getElementById("userallowapiandconsole");
		if (allowAdministrative.checked)
		{
			userallowapionly.disabled=false;
			userallowapiandconsole.disabled=false;
			if (!userallowapionly.checked && !userallowapiandconsole.checked) userallowapiandconsole.checked = true;
		}
		else
		{
			userallowapionly.disabled=true;
			userallowapiandconsole.disabled=true;
		}

	}
	function checkAdminAuth()
	{
		� $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag��	 � coldfusion/tagext/io/OutputTag�
�� alert('� _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object;��
 � ');�
�� coldfusion/tagext/QueryLoop�
��
��
�� 
		� _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V��
 � (

	}
	function checkRDSAuth()
	{
		� getUseSingleRdsPassword�{

	}
	function enableListBoxes()
	{
		var allowAdministrative = document.getElementById("userallowadministrative");
		var grantedRolesList = document.getElementById("grantedRolesSelectList");
		var prohibitedRolesList = document.getElementById("prohibitedRolesSelectList");

		if (allowAdministrative.checked)
		{
			grantedRolesList.disabled= false;
			prohibitedRolesList.disabled = false;
		}
		else
		{
			grantedRolesList.disabled = true;
			prohibitedRolesList.disabled = true;
		}
	}
	
	function enableSandBoxes()
	{
		var allowrds = document.getElementById("userallowrds");
		var grantedDatasourcesList = document.getElementById("grantedDatasourcesSelectList");
		var prohibitedDatasourcesList = document.getElementById("prohibitedDatasourcesSelectList");

		if (allowrds.checked)
		{
			grantedDatasourcesList.disabled= false;
			prohibitedDatasourcesList.disabled = false;
			setenabledisable(document.getElementById("filestable"),false);
			setenabledisable(document.getElementById("addNewFileBtn"),false);
			setenabledisable(document.getElementById("filepermissionstable"),false);
		}
		else
		{
			grantedDatasourcesList.disabled = true;
			prohibitedDatasourcesList.disabled = true;
			setenabledisable(document.getElementById("filestable"),true);
			setenabledisable(document.getElementById("addNewFileBtn"),true);
			setenabledisable(document.getElementById("filepermissionstable"),true);
		}
	}
	
	function setenabledisable(elem,flag) 
	{
		try 
		{
			elem.disabled = flag;
		}
		catch(E)
		{}
		if (elem.childNodes && elem.childNodes.length > 0) 
		{
			for (var x = 0; x < elem.childNodes.length; x++) 
			{
				setenabledisable(elem.childNodes[x],flag);
			}
		}
	}

	function validateFormControls()
	{
		var unameValue = document.getElementById("uname").value;
		var password1Field = document.getElementById("password1").value;
		var password2Field = document.getElementById("password2").value;
		var clientCertAuthField = document.getElementById("userallowclientcertauth")? document.getElementById("userallowclientcertauth").value: null;

		if (unameValue.length == 0)
		{
			� A
			return false;
		}

		if (unameValue.length < 5)
		{
			� b
			return false;
		}

		if (!clientCertAuthField && unameValue.match(/\W/) != null)
		{
			� ^
			return false;
		}

		if (password1Field.length == 0 && !clientCertAuthField)
		{
			�T
			return false;
		}
		
		if (password1Field.length > 0 )
			transformPasswordFields();
		
		return true;
	}
	
	    
    function transformPasswordFields()
	{
	    var pwdFields = [document.useredit.password1, document.useredit.password2];
	    for(var i=0; i < pwdFields.length; i++)
	    {
	    	if(pwdFields[i].value == � "� STATICPASSWORD��)
	    		continue;
	        var value = pwdFields[i].value.replace(/^\s+|\s+$/gm,'');
	        var length = value.length;
	        if(length > 0)
	            pwdFields[i].value = hex_sha1(value);
	    }
	}

	function MoveItemsAcrossLists(sourceList, destinationList)
	{
		var sourceListOpts = sourceList.options;
		var sourceListOptsLen = sourceList.options.length;
		var destinationListOpts = destinationList.options;
		var destinationListOptsLen = destinationList.options.length;

		var i=0;
		while (i<sourceListOptsLen)
		{
			if (sourceListOpts[i].selected)
			{
				destinationListOpts[destinationListOptsLen++] = new Option(sourceListOpts[i].text, sourceListOpts[i].value);
				sourceListOpts[i] = null;
				sourceListOptsLen--;
			}
			else
				i++;
		}
    }
	
	/**
	 * we need special handling for All datasources case, hence a separate method
	 */
	function MoveItemsAcrossListsForDS(sourceList, destinationList)
	{
		var sourceListOpts = sourceList.options;
		var sourceListOptsLen = sourceList.options.length;
		var destinationListOpts = destinationList.options;
		var destinationListOptsLen = destinationList.options.length;

		var i=0;
		while (i<sourceListOptsLen)
		{
			if (sourceListOpts[i].selected)
			{
				if (sourceListOpts[i].value == "*") {
					//empty the destination list fist and move things to source list
					while(destinationListOptsLen > 0)
					{
						sourceListOpts[sourceListOptsLen++] = new Option(destinationListOpts[0].text, destinationListOpts[0].value);
						destinationListOpts[0] = null;
						destinationListOptsLen--;
					}
					
					// now copy everything from source list to destination list
					while(sourceListOptsLen > 0){
						destinationListOpts[destinationListOptsLen++] = new Option(sourceListOpts[0].text, sourceListOpts[0].value);
						sourceListOpts[0] = null;
						sourceListOptsLen--;
					}
					return;
				}
				else {
					destinationListOpts[destinationListOptsLen++] = new Option(sourceListOpts[i].text, sourceListOpts[i].value);
					sourceListOpts[i] = null;
					sourceListOptsLen--;
				}
			}
			else
				i++;
		}
    }

	function adjustRoles ()
	{
		//Adjust the grantedRoles list (hidden form variable)
		var i=0;
		var grantedRolesJS = document.getElementById("grantedRoles");
		var grantedRolesList = document.getElementById("grantedRolesSelectList").options;
		var grantedRolesListLen = document.getElementById("grantedRolesSelectList").options.length;

		grantedRolesJS.value = "";
		for (i=0; i<grantedRolesListLen; i++)
		{
			if (grantedRolesJS.value == "")
			{
				grantedRolesJS.value = grantedRolesList[i].value;
			}
			else
			{
				grantedRolesJS.value = grantedRolesJS.value + "," + grantedRolesList[i].value;
			}
		}

		//Adjust the Datasources list (hidden form variable)
		var i=0;
		var grantedDatasourcesJS = document.getElementById("grantedDatasources");
		var revokeDatasourcesList = document.getElementById("grantedDatasourcesSelectList").options;
		var revokeDatasourcesListLen = document.getElementById("grantedDatasourcesSelectList").options.length;

		grantedDatasourcesJS.value = "";
		for (i=0; i<revokeDatasourcesListLen; i++)
		{
			if (grantedDatasourcesJS.value == "")
			{
				grantedDatasourcesJS.value = revokeDatasourcesList[i].value;
			}
			else
			{
				grantedDatasourcesJS.value = grantedDatasourcesJS.value + "," + revokeDatasourcesList[i].value;
			}
		}

		//Adjust the grantedServices list (hidden form variable)
		var i=0;
		var grantedServicesJS = document.getElementById("grantedServices");
		var grantedServicesList = document.getElementById("grantedServicesSelectList").options;
		var grantedServicesListLen = document.getElementById("grantedServicesSelectList").options.length;

		grantedServicesJS.value = "";
		for (i=0; i<grantedServicesListLen; i++)
		{
			if (grantedServicesJS.value == "")
			{
				grantedServicesJS.value = grantedServicesList[i].value;
			}
			else
			{
				grantedServicesJS.value = grantedServicesJS.value + "," + grantedServicesList[i].value;
			}
		}
	}
	
	/**
	 * reset the form after add/edit.
	 */
	function resetfilepermissions()
	{		
		document.getElementById("logic").value = "";
		document.getElementById("fr").checked = true;
		document.getElementById("fw").checked = true;
		document.getElementById("fe").checked = true;
		document.getElementById("fd").checked = true;
		document.getElementById("addNewFileBtn").value = "Add Files / Paths";
		document.getElementById("addNewFileBtn").title = "Add Files / Paths";
		document.getElementById("addNewFileBtn").onclick = setfilepermissions;
		originalfilenamestr = "";
	}	
		
	/**
	 * return true if the file virtual file, i.e. starts with "ram:"
	 */
	function isramfile(filename)
	{
		if(filename != null && filename.length >= 4)
		{
			var urlscheme = filename.toLowerCase();		
			if(urlscheme.indexOf("ram:",0) == 0 || urlscheme.indexOf("s3:",0) == 0)
			{
				return true;
			}
		}
		return false;
	}

	/**
	 * fetch values of file permissions from form.
	 */
	function getfilepermissionsformvalues()
	{	
		var filestr = "";
		if(document.getElementById("logic") != null && (document.getElementById("logic").value).length > 0)
		{
			filestr = new String(document.getElementById("logic").value).replace(/\\/g,"/") ;
			
			// if it is a virtual file, don't set and show alert.
			if(isramfile(filestr))
			{
				alert("User cannot be given permission on Virtual files.");
				filestr ="";
			}else
			{							
				filestr = filestr + fileactionsdelim;
				filestr = filestr.replace(/</g, "&lt;");
				filestr = filestr.replace(/>/g, "&gt;");
			
				//construct actions string
				var actionstr = "";
				if(document.getElementById("fr").checked)
				{
					actionstr = actionstr + "read" + ",";
				}
				if(document.getElementById("fw").checked)
				{
					actionstr = actionstr + "write" + ",";
				}
				if(document.getElementById("fe").checked)
				{
					actionstr = actionstr + "execute" + ",";
				}
				if(document.getElementById("fd").checked)
				{
					actionstr = actionstr + "delete" + ",";
				}
				// now remove the trailing "," if any"
				if(actionstr.lastIndexOf(",") == (actionstr.length -1 ))
				{
					actionstr = actionstr.substring(0,(actionstr.length -1 ));
				}
				
				//finally add actions to this 
				filestr = filestr + actionstr;
			}
			
		}	
		return filestr;
	}
	
	/**
	 * update the hidden variable for permissions.
	 */
	function updateformelementforfilepermissions()
	{
		document.getElementById("filepermissionsstr").value = globalfilepermissionsstr;
	}
	
	/**
	 * each file permission row data, to be updated dynamically
	 */
	function getdefaultrowdata()
	{
		var tablerowdata = "<td nowrap height=\"20\">"
									+ "<table>"
										+"<tr>"
										+"<td>"											
											+"<a href=\"javascript:loadeditformfile('TO_REPLACE_FNAME','TO_REPLACE_ACTS');\">"
											+"<img src=\"../images/iedit2.gif\" height=\"16\" width=\"16\" border=\"0\" alt=\"#edit#\"></a>"
										+"</td>"
										+"<td>"
											+"<a href=\"javascript:deletefilepermissions('TO_REPLACE_FNAME','TO_REPLACE_ACTS');\">"
											+"<img src=\"../images/idelete.gif\" height=\"16\" width=\"16\" alt=\"#delete#\" border=\"0\"></a>"
										+"</td>"
										+"</tr>"
									+"</table>"
								+"</td>"
								+"<td nowrap>"
									+"<font class=\"label\">&nbsp; <a href=\"javascript:loadeditformfile('TO_REPLACE_FNAME','TO_REPLACE_ACTS')\">TO_REPLACE_FNAME</a> &nbsp; &nbsp;</font>"
								+"</td>"
								+"<td nowrap><font class=\"label\">"
								+"&nbsp; TO_REPLACE_ACTS &nbsp;</font></td>";
		return tablerowdata;
	}
	
	/**
	 * row data when there are no file entries
	 */
	function getnomappingrowdata()
	{
		var tablerowdata = "<td colspan=\"3\" height=\"50\" align=\"center\"><font class=\"sentance\">No mappings are active.</font></td��>";
		return tablerowdata;
	}

	/**
	 * code to dynamically update data in table
	 */
	function updatetableforfilepermissions()
	{
		var parenttable = document.getElementById("filepermissionstable");
		var rowcount = parenttable.rows.length;
		
		if(rowcount > 2)
		{
			for(i = 2; i < rowcount; i++)
			{
				parenttable.deleteRow(2);
			}
		}
		
		//get updated value
		if(document.getElementById("filepermissionsstr") != null && (document.getElementById("filepermissionsstr").value).length > 0)
		{		
			globalfilepermissionsstr = document.getElementById("filepermissionsstr").value;
		}
		if(globalfilepermissionsstr.length == 0)
		{
			var row = parenttable.insertRow(2);
			var temprowdata = getnomappingrowdata();
			row.innerHTML = temprowdata;
		}else
		{
			var persarray = globalfilepermissionsstr.split(interfileentrydelim);
			var insertrowindex = 0;
			for(i=0;i< persarray.length; i++)
			{
				if(persarray[i].length > 0)
				{
					var row = parenttable.insertRow(2+insertrowindex);
					var temprowdata = getdefaultrowdata();
					var datas = persarray[i].split(fileactionsdelim);
					var fname = datas[0];
					fname = fname.replace(/</g, "&lt;");
					fname = fname.replace(/>/g, "&gt;");
					
					var acts = datas[1];
				
					var actsarr = acts.split(",");
					for (j = 0; j < actsarr.length; j++) 
					{
						actsarr[j] = changeToCamelCase(actsarr[j]);
					}
					
					acts = actsarr.join(",");
					
					temprowdata = temprowdata.replace(/TO_REPLACE_FNAME/g,fname);				
					temprowdata = temprowdata.replace(/TO_REPLACE_ACTS/g,acts);
					row.innerHTML = temprowdata;
					insertrowindex++;	
				}
			}
		}	
	}
	
	/**
	 * utility method to convert to camel case
	 */
	function changeToCamelCase(acts) 
	{
		return acts.charAt(0).toUpperCase() + acts.substr(1);
	}
	
	/**
	 * create delimited string for given file name and action
	 */
	function constructfilepermissionstr(filename, actions)
	{
		var tempfilename = filename;
		tempfilename = 	tempfilename.replace(/\\/g,"/");
		tempfilename = tempfilename.replace(/</g, "&lt;");
		tempfilename = tempfilename.replace(/>/g, "&gt;");
		return tempfilename + fileactionsdelim + new String(actions).toLowerCase();
	}
	
	/**
	 * handle delete file permission event
	 */
	function deletefilepermissions(filename,actions)
	{
		if(document.getElementById("filepermissionsstr") != null && (document.getElementById("filepermissionsstr").value).length > 0)
		{		
			globalfilepermissionsstr = document.getElementById("filepermissionsstr").value;
		}
		
		globalfilepermissionsstr = globalfilepermissionsstr.replace(/</g, "&lt;");
		globalfilepermissionsstr = globalfilepermissionsstr.replace(/>/g, "&gt;");
		
		if (globalfilepermissionsstr.length > 0) 
		{
			var filetodeletestr = constructfilepermissionstr(filename, actions);
			var tempfilearray = [];			
			var persarray = globalfilepermissionsstr.split(interfileentrydelim);
			var j = 0;
			for(i=0;i< persarray.length; i++)
			{
				// if not the string to copy, then copy to temp
				if(persarray[i] != filetodeletestr)
				{
					tempfilearray[j++] = persarray[i];
				}
			}
			//construct the string back
			globalfilepermissionsstr = tempfilearray.join(interfileentrydelim);
		}
		
		//set this back to form hidden element
		updateformelementforfilepermissions();

		//update the table for showing added elements
		updatetableforfilepermissions();
		
		//reset file permissions
		resetfilepermissions();
	}
	
	/**
	 * populate form for edit
	 */
	function loadeditformfile(filename,actions)
	{
		originalfilenamestr = filename;
		document.getElementById("logic").value = filename;
		document.getElementById("fr").checked = true;
		document.getElementById("fw").checked = true;
		document.getElementById("fe").checked = true;
		document.getElementById("fd").checked = true;
		if(actions.search(/read/i) == -1)
		{
			document.getElementById("fr").checked = false;
		}
		if(actions.search(/write/i) == -1)
		{
			document.getElementById("fw").checked = false;
		}
		if(actions.search(/execute/i) == -1)
		{
			document.getElementById("fe").checked = false;
		}
		if(actions.search(/delete/i) == -1)
		{
			document.getElementById("fd").checked = false;
		}
		document.getElementById("addNewFileBtn").value = "Edit Files / Paths";
		document.getElementById("addNewFileBtn").title = "Edit Files / Paths";
		document.getElementById("addNewFileBtn").onclick = setfilepermissions;
	}

	/**
	 * add/edit file permissions.
	 */
	function setfilepermissions()
	{	
		var newfileperstr = getfilepermissionsformvalues();
		var split = newfileperstr.split("====");
		if(split.length == 2 && split[1].length == 0)
		{
                   window.alert("You need to grant atleast one permission to files/directories added in sandbox");
		   return;
		}
		
		if(newfileperstr.length > 0)
		{
			//get old name, in case name edit is happening.
			if(originalfilenamestr != null && originalfilenamestr.length > 0 )
			{
				originalfilenamestr = originalfilenamestr.replace(/\\/g,"/")
				originalfilenamestr = originalfilenamestr.replace(/</g, "&lt;");
				originalfilenamestr = originalfilenamestr.replace(/>/g, "&gt;");
				originalfilenamestr = originalfilenamestr + fileactionsdelim;
			}
			
			if(document.getElementById("filepermissionsstr") != null && (document.getElementById("filepermissionsstr").value).length > 0)
			{		
				globalfilepermissionsstr = document.getElementById("filepermissionsstr").value;
			}
			
			globalfilepermissionsstr = globalfilepermissionsstr.replace(/</g, "&lt;");
			globalfilepermissionsstr = globalfilepermissionsstr.replace(/>/g, "&gt;");
			
			if(globalfilepermissionsstr.length == 0)
			{
				//get values from form fields and update in global var
				globalfilepermissionsstr = globalfilepermissionsstr + newfileperstr;
			}else 
			{
				//var newfname = newfileperstr.substring(0,(newfileperstr.indexOf("====") + 4 ));
				var updated = false;
				var persarray = globalfilepermissionsstr.split(interfileentrydelim);
				
				for(i=0;i< persarray.length; i++)
				{
					var fname = (new String(persarray[i]).split(fileactionsdelim))[0] + fileactionsdelim;
					// update the matching string
					if(fname == originalfilenamestr)
					{
						persarray[i] = newfileperstr;
						updated = true;
					}
				}
				//construct the string back
				globalfilepermissionsstr = persarray.join(interfileentrydelim);
				
							
				//if not updated yet, then it is a new string, add it.
				if(!updated)
				{
					if(globalfilepermissionsstr.length > 0)
					{
						globalfilepermissionsstr = globalfilepermissionsstr + interfileentrydelim;
					}		
					//get values from form fields and update in global var
					globalfilepermissionsstr = globalfilepermissionsstr + newfileperstr;
				}
			}
			
			//set this back to form hidden element
			updateformelementforfilepermissions();
	
			//update the table for showing added elements
			updatetableforfilepermissions();
		}					
		//reset file permissions
		resetfilepermissions();	
	}
	
    //bug: 2922000 This method is added strictly to get <<ALL FILES>> get working in edit case. some how if a user is edit who had <<ALL FILES>> permissions, when 
    // submitting this user, <<ALL FILES>> was getting messed up.
    function adjustformstrforedit(){
        if (document.getElementById("filepermissionsstr") != null && (document.getElementById("filepermissionsstr").value).length > 0) {
            str = document.getElementById("filepermissionsstr").value;
            str = str.replace(/</g, "&lt;");
            str = str.replace(/>/g, "&gt;");
            document.getElementById("filepermissionsstr").value = str;
        }
    }
</script>


� CANCELSUBMIT� FORM.CANCELSUBMIT�  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z��
 � 
	� 'class$coldfusion$tagext$net$LocationTag !coldfusion.tagext.net.LocationTag��	 � !coldfusion/tagext/net/LocationTag� setAddtoken�E
�� usermanager.cfm� setUrl��
�� false� 2(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Vf�
 � ArrayNew (I)Ljava/util/List;��
   _Array 2(Ljava/lang/Object;)Lcoldfusion/runtime/FastArray;
 setArray !(Lcoldfusion/runtime/FastArray;)V coldfusion/runtime/Variable	

   api _compare '(Ljava/lang/Object;Ljava/lang/String;)D
  set (Ljava/lang/Object;)V

 adminapi isDefinedCanonicalVariable  (Lcoldfusion/runtime/Variable;)Z
  	CSRFTOKEN FORM.CSRFTOKEN  _Object (Z)Ljava/lang/Object;"#
$ URL.CSRFTOKEN& _get(�
 ) checkCSRFToken+ SECTABKEYNAME- 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;/0
 1 java3 coldfusion.vfs.VFSFileFactory5 CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;78
 9 FORM.FILEPERMISSIONSSTR; Len (Ljava/lang/Object;)I=>
 ? (I)Ljava/lang/Object;"A
B (Ljava/lang/Object;D)DD
 E $$$$G ListToArray 6(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;IJ
 K _List $(Ljava/lang/Object;)Ljava/util/List;MN
O java/util/ListQ sizeS�RT P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; V
 W getYARZ ====\ 	StructNew ()Ljava/util/Map;^_
 ` _arrayGetAt C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object;bc
 d 	&lt;,&gt;f <,>h ReplaceList J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;jk
 l FILENAMEn E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)Vp
 q ACTIONs ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Zuv
 w _factor5yh
 z 	__HTSWT_0 Lcoldfusion/util/FastHashtable;|}	 ~ __caseValue 4(Lcoldfusion/util/FastHashtable;Ljava/lang/Object;)I��
 � f_false�	� getRootAdminUserId� '(Ljava/lang/Object;Ljava/lang/Object;)D�
 � ArrayLen�>
 � (D)Ljava/lang/Object;"�
� _arraySetAt�p
 � *coldfusion/runtime/TransientVariableHolder� &(Lcoldfusion/runtime/NeoPageContext;)V �
�� SECURITYAPI� getUser� Trim�:
 � unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;�� coldfusion/runtime/NeoException�
�� t114 [Ljava/lang/String; Any���	 � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I��
�� ex� bind '(Ljava/lang/String;Ljava/lang/Object;)V��
�� unbind� 
�� Compare '(Ljava/lang/String;Ljava/lang/String;)I��
 � IsArray�
 � $(Ljava/lang/String;)Ljava/util/List;I�
 � _factor0�h
 � D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object;r�
 � setUser� %coldfusion/runtime/ArgumentCollection� password� description� allowrdsaccess� allowadminaccess� allowadminapiaccess� 	enabledds� filepermissions� services� roles� isHashed� allowclientcertauth� )([Ljava/lang/Object;[Ljava/lang/Object;)V �
�� G(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;�
 � &(Ljava/lang/String;)Ljava/lang/Object;��
 � _Map #(Ljava/lang/Object;)Ljava/util/Map;��
� grantedRoles� StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z��
 � grantedServices� grantedDatasources� grantedFilepermissions� _factor1�h
 � _factor2 h
  t115 any�	  _factor3h
 	 	ENABLEDDS FILEPERMISSIONS constructfilepermissions SERVICES ROLES EDITEDUSER.ROLES contains coldfusion.administrator coldfusion.rds coldfusion.adminapi t116�	   _factor4"h
 # 
deleteUser% coldfusion/runtime/SwitchTable'
( 	 addStringCase 5(Ljava/lang/String;I)Lcoldfusion/runtime/SwitchTable;*+
(, SAVE. ADD0 	_factor192h
 3 getAllAdminRoles5 ArrayToList $(Ljava/util/List;)Ljava/lang/String;78
 9 ,; java/util/StringTokenizer= '(Ljava/lang/String;Ljava/lang/String;)V ?
>@ 	nextTokenB4
>C getL10NRoleNameE CFLOOPG checkRequestTimeoutI�
 J hasMoreTokens ()ZLM
>N StructKeyList #(Ljava/util/Map;)Ljava/lang/String;PQ
 R 
textnocaseT ascV ListSort J(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;XY
 Z getAllExposedServices\ cfadmin_getAllDsns^ *` ListPrepend 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;bc
 d ListFindNoCasef�
 g (D)Zi
j�

l 
ListAppendnc
 o _double (Ljava/lang/Object;)Dqr
s FORM.NEWFILEu FORM.NEWFILEREADw truey FORM.NEWFILEWRITE{ FORM.NEWFILEEXECUTE} FORM.NEWFILEDELETE 


<body onLoad="init()">
� ../header.cfm� ../include/margintop.cfm� )class$coldfusion$tagext$html$form$FormTag #coldfusion.tagext.html.form.FormTag��	 � #coldfusion/tagext/html/form/FormTag� cfform� action� CGI� SCRIPT_NAME� 	setAction��
�� HTML� 	setFormat��
�� post� 	setMethod��
�� useredit���
��
�� 
	
	</td><tr><td>
	� ../include/errors.cfm� 4
	
		<input type="hidden" name="csrftoken" value="� getCSRFToken� ">

		<h2 class="pageHeader">� =</h2>
		<table>
		<tr>
			<td>
				<b class="subheading">� �</b>
			</td>
		</tr>
		<tr>
		<td>
		<table>
		<tr><td height="15px"></td></tr>
		<tr>
			<td>
				<label class="label-bold">*� !</label>
			</td>
			<td>
				� 

					<b>� EncodeForHTML�:
 � K</b><input class="label-bold" type="hidden" name="uname" id="uname" value="� EncodeForHTMLAttribute�:
 � E" width="25" style="width:20em;color:#CCCCCC;" readonly="true">
				� 9
					<input type="Text" id="uname" name="uname" value="� R" width="25" maxlength="200" style="width:20em;">
					<label class="label-bold">� </label>
				� ;
			</td>
		</tr>
		<tr><td height="15px"></td></tr>
		� isAdminClientCertAuthEnabled� 4
			<tr>
				<td>
					<label class="label-bold">� </label>
				<td>
					� *class$coldfusion$tagext$html$form$InputTag $coldfusion.tagext.html.form.InputTag��	 � $coldfusion/tagext/html/form/InputTag� checkbox� setType��
�� userallowclientcertauth�
�� setValue��
�� checked�
�� </td>
				</td>
			</tr>
		� 2
		<tr>
			<td>
				<label class="label-bold">*� 	password1� cfinput� value� setMaxLength��
�� class� width� 25� style� width:20em;� autocomplete� off  �
				
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr><td height="15px"></td></tr>
		<tr>
			<td>
				<label class="label-bold">* 	password2 _factor6h
  |
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr><td height="15px"></td></tr>
		<tr>
			<td>
				<label class="label-bold">	 m</label>
			</td>
			<td>
				<input type="Text" name="Description" width="25" style="width:20em;" value=" w">
			</td>
			<td>&nbsp;</td>
		</tr>
		</table>
		</td>
		</tr>
			<tr>
				<td>
					<b class="subheading"> c</b>
				</td>
			</tr>
			<tr>
				<td height="15px"></td>
			</tr>
			<tr>
				<td>
					 userallowrds onclick ?javascript:enableSandBoxes();if (this.checked) {checkRDSAuth()} margin-left: 15px ;
					<label class="label-bold" style="margin-left: 15px"> g</label>
				</td>
			</tr>
			<tr>
				<td height="10px"></td>
			</tr>
			<tr>
				<td>
					 
					 
						 userallowadministrative! Tjavascript:showRadioButtons();enableListBoxes();if (this.checked) {checkAdminAuth()}# radio% 	userallow' userallowapiandconsole) margin-left:15px+ <
						<label class="label-bold" style="margin-left: 15px">- </label>
						/ userallowapionly1 </label>
					3 disabled5 _factor77h
 8 �
				</td>
			</tr>
			<tr>
				<td height="10px"></td>
			</tr>
			<tr>
				<td colspan="2">
					<table>
						<tr>
							<td><label class=label>: E</label></td>
							<td>&nbsp;</td>
							<td><label class=label>< =</label></td>
						</tr>
						<tr>
							<td>
								> 
									@ 

								B !(Lcoldfusion/runtime/CFBoolean;)DqD
E +class$coldfusion$tagext$html$form$SelectTag %coldfusion.tagext.html.form.SelectTagHG	 J %coldfusion/tagext/html/form/SelectTagL grantedRolesSelectListN
M� setMultipleQE
MR width:400px;TS 5W (coldfusion/tagext/html/form/FormChildTagY
Z�
M� 
										] 
											_ 
												<option value="a ">c </option>
											e
M�
M�
H�
H� _factor8kh
 l ?
							</td>
							<td>
								<table>
									<tr><td>n Buttonp adjustRolesOptionr >>t 
buttn-greyv Qjavascript:MoveItemsAcrossLists(grantedRolesSelectList,prohibitedRolesSelectList)x </td></tr>
									<tr><td>z adjustRolesOption2| <<~ Qjavascript:MoveItemsAcrossLists(prohibitedRolesSelectList,grantedRolesSelectList)� A</td></tr>
								</table>
							</td>
							<td>
								� prohibitedRolesSelectList� _factor9�h
 � 
							</td>
							� Hidden� �
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<hr class="line">
					<b class="subheading">� r</b>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<table>
						<tr>
							<td><label class=label>� grantedServicesSelectList� _validatingMap��
 � java/util/Map� entrySet ()Ljava/util/Set;���� java/util/Set� iterator ()Ljava/util/Iterator;���� java/util/Iterator� next ()Ljava/lang/Object;���� class$java$util$Map$Entry java.util.Map$Entry��	 � _cast 7(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;��
� java/util/Map$Entry� getKey���� service� SetVariable 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;��
 � 
											<option value="� 
StructFind 5(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;��
 � </option>
										� hasNext�M�� %
							</td>
							<td>
								� $
								<table>
									<tr><td>� adjustServicesOption� Wjavascript:MoveItemsAcrossLists(grantedServicesSelectList,prohibitedServicesSelectList)� 	_factor10�h
 � adjustServicesOption2� Wjavascript:MoveItemsAcrossLists(prohibitedServicesSelectList,grantedServicesSelectList)� prohibitedServicesSelectList� �
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<hr class="line">
					<b class="subheading">� : � /</label></td>
						</tr>
						<tr>
							� 	
							� 
							<td>
								� grantedDatasourcesSelectList� allDatasourcesMap[datasource]� IIf 9(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;��
 � 	_factor11�h
 � adjustDatasourcesOption� bjavascript:MoveItemsAcrossListsForDS(grantedDatasourcesSelectList,prohibitedDatasourcesSelectList)� adjustDatasourcesOption2� bjavascript:MoveItemsAcrossListsForDS(prohibitedDatasourcesSelectList,grantedDatasourcesSelectList)� prohibitedDatasourcesSelectList� 	_factor12�h
 � x
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<font class="admin-tip">
					� 	step_ds_1��
					To select more than one data source, hold down the Control key and click the name of the data source.
					This user cannot use data sources listed in the Disabled Data Sources box. <br />
					<br />
					<b>Note:</b> The ALL DATASOURCES option includes all data sources not otherwise specified as enabled or disabled
					as well as all future data sources created in the Data Sources section of the ColdFusion administrator.� �
					<br />
					<br />
					<br />
					</font>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<hr class="line">
					<b class="subheading">  �</b>
				</td>
			</tr>
			<tr>
				<td align="left">
					<table border="0" cellpadding="0" cellspacing="0" id="filestable">
					<tr><td height="5"></td></tr>
					<tr><td colspan="4"><p class="sentance">
						 step_files1 ~
							Enter files that you would like to <b>grant</b> access for templates operations under this directory.<br><br>
						 m
					</p></td></tr>					
					<tr>
						<td nowrap>
							<font class="label-bold"><label for="logic"> logical_filepath_folder
 File / Folder Path: h</label> &nbsp;</font>
						</td>
						<td><input type="text" maxlength="550" name="newfile" value=" 
ESAPIUTILS encodeForHTMLAttributeFilePath p" size="25" style="width:30em;" class="label-bold"  id="logic"></td>
						<td>&nbsp;</td>
						<td>
							 button_browse_user browse_button_user Browse Server %
							<input type="button" title=" " name="browsesubmit" value=" �" class="buttn-grey" onclick='wopen("logic");'>
						</td>
					</tr>
					<tr>
						<td height="5">							
						</td>					
					</tr>
					<tr>
						<td nowrap><font class="label-bold"><label for="dirpath">  permissions" Permissions$ 	_factor13&h
 ' �:</label> &nbsp; &nbsp;</font></td>
						<td nowrap>
							<table border="0" cellpadding="0" cellspacing="0"><tr>
							<td><font class="label-bold"><label for="fr" style="margin-right: 10px">) `</label></font></td>
							<td><input type="checkbox" name="newfileread" value="true" id="fr" + � ></td>
							<td><font class="label-bold">&nbsp;&nbsp;</font></td>
							<td><font class="label-bold"><label for="fw" style="margin-right: 10px">- b</label></font></td>
							<td><input type="checkbox" name="newfilewrite" value="true" id="fw"  / �></td>
							<td><font class="label-bold">&nbsp;&nbsp;</font></td>
							<td><font class="label-bold"><label for="fe" style="margin-right: 10px">1 d</label></font></td>
							<td><input type="checkbox" name="newfileexecute" value="true" id="fe"  3 �></td>
							<td><font class="label-bold">&nbsp;&nbsp;</font></td>
							<td><font class="label-bold"><label for="fd" style="margin-right: 10px">5 c</label></font></td>
							<td><input type="checkbox" name="newfiledelete" value="true" id="fd"  74></td>
							</tr></table>
						</td>
						<td><font class="label-bold">&nbsp;&nbsp;</font></td>
					</tr>
					<tr><td height="5"></td></tr>
					</table>	
				</td>
			</tr>
			<tr>				
				<td align="left">
					<input type="Hidden" name="filepermissionsstr" id="filepermissionsstr" value="9 ">
					
					; addFile_folder= addFile? Add Files / FoldersA editFile_folderC editFileE Edit Files / FoldersG 
URL.ACTIONI $
						<input type="button" title="K ." name="addNewFile" id="addNewFileBtn" value="M =" class="buttn-grey"  onclick='setfilepermissions();'>
					O ,								
						<input type="button" title="Q �
				</td>
			</tr>
			<tr id="headerrow">
				<td height="20" colspan="3"><hr class="line"><font class="label-bold"><b class="subheading">S file_activeU Secured Files and DirectoriesW 	_factor14Yh
 Z �</b></font></td>
			</tr>
				<table border="0" cellpadding="0" cellspacing="1" width="100%" id="filepermissionstable" class="main-table">
					<tr class="main-table-header" id="colheaderrow">
						<th nowrap height="20">&nbsp; \ actions^ Actions` 3 &nbsp; &nbsp;</td>
						<th width="100%">&nbsp; b Filed 	File Pathf - &nbsp; &nbsp;</td>
						<th nowrap>&nbsp; h  &nbsp;</td>
					</tr>
					j 						
						lY �
							<tr>
								<td nowrap height="20">
									<table>
										<tr>
										<td>											
											<a href="javascript:loadeditformfile('o ','q Y');">
											<img src="../images/iedit2.gif" height="16" width="16" border="0" alt="s _"></a>
										</td>
										<td>
											<a href="javascript:deletefilepermissions('u O');">
											<img src="../images/idelete.gif" height="16" width="16" alt="w �" border="0"></a>
										</td>
										</tr>
									</table>
								</td>
								<td nowrap>
									<font class="label-bold">&nbsp; <a href="Javascript:loadeditformfile('y ');">{ `</a> &nbsp; &nbsp;</font>
								</td>
								<td nowrap><font class="label-bold">
								} 	VARIABLES ListContains��
 �nk
 � 
								&nbsp; � ) &nbsp;</font></td>
							</tr>
						� X	
						<tr>
							<td colspan="3" height="50" align="center"><font class="sentance">� map_nomappings� No mappings are active.�  </font></td>
						</tr>
					� 	_factor15�h
 � \
				</table>
			
			<br />
			<tr>
				<td>							
					<p class="admin-tip">
						� step_files_tip1�.
							A file permission consists of a pathname and a set of actions valid 
							for that pathname. A pathname is the pathname of the file or 
							directory granted the specified actions. A pathname that ends in "/*" 
							indicates all the files and directories contained in that directory. 
							A pathname that ends with "/-" indicates (recursively) all files and 
							subdirectories contained in that directory. A pathname consisting of the 
							special token &quot;&lt;&lt;ALL FILES&gt;&gt;&quot; matches any file.<br><br>
						� D
					</p>
				</td>
			</tr>
			<tr>
				<td colspan=2>
					� 	submitBtn� iadjustRoles(); adjustformstrforedit(); if (validateFormControls()) {document.forms['useredit'].submit();}� Submit� cancelSubmit� adminaction� save� add� 	_factor16�h
 � 0
					<hr class="line">
				</td>
			</tr>
	� 	_factor17�h
 � 

	�
��
��
��
�� 	_factor20�h
 � 
� ../footer.cfm� 	
</body>� Lcoldfusion/runtime/UDFMethod; 0cfuseredit2ecfm1791926774$funcCFADMIN_GETALLDSNS�
� 	^�	 � registerUDF 3(Ljava/lang/String;Lcoldfusion/runtime/UDFMethod;)V��
 � 6cfuseredit2ecfm1791926774$funcCONSTRUCTFILEPERMISSIONS�
� 	�	 � metaData Ljava/lang/Object;��	 � 	Functions�	��	�� 
Properties� this Lcfuseredit2ecfm1791926774; __factorParent out Ljavax/servlet/jsp/JspWriter; t4 Ljava/lang/String; t5 t6 t7 t8 Ljava/util/StringTokenizer; t9 t10 t11 t12 t13 	include94 #Lcoldfusion/tagext/lang/IncludeTag; 	include95 form143 %Lcoldfusion/tagext/html/form/FormTag; mode143 t18 t19 Ljava/lang/Throwable; t20 t21 t22 t23 t24 LocalVariableTable LineNumberTable java/lang/Throwable� Code runPage 	output145  Lcoldfusion/tagext/io/OutputTag; mode145 
include144 getMetadata varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; registerUDFs input112 &Lcoldfusion/tagext/html/form/InputTag; 	select113 'Lcoldfusion/tagext/html/form/SelectTag; mode113 Ljava/util/Iterator; input114 input115 input116 	select117 mode117 	select118 mode118 t16 t17 t25 t26 input119 input120 input121 	select122 mode122 t14 t15 	select106 mode106 	select107 mode107 t27 t28 t29 	module123 $Lcoldfusion/tagext/lang/ImportedTag; mode123 	module124 mode124 	module125 mode125 	module126 mode126 t30 t31 t32 t33 t34 t35 	module127 mode127 t38 t39 t40 t41 t42 t43 input108 input109 	select110 mode110 	select111 mode111 	module128 mode128 	module129 mode129 	module130 mode130 input97 input98 input99 	module131 mode131 	module132 mode132 	module133 mode133 Ljava/util/List; 	module134 mode134 t36 t37 input100 input101 input102 input103 input104 input105 	module135 mode135 input136 input137 input138 input139 input140 input141 	include96 	output142 mode142 include0 abort1 !Lcoldfusion/tagext/lang/AbortTag; include2 module4 mode4 module5 mode5 module6 mode6 module7 mode7 module8 mode8 t44 t45 t46 module9 mode9 t49 t50 t51 t52 t53 t54 module10 mode10 t57 t58 t59 t60 t61 t62 module11 mode11 t65 t66 t67 t68 t69 t70 module12 mode12 t73 t74 t75 t76 t77 t78 module13 mode13 t81 t82 t83 t84 t85 t86 module14 mode14 t89 t90 t91 t92 t93 t94 module15 mode15 t97 t98 t99 t100 t101 t102 module16 mode16 t105 t106 t107 t108 t109 t110 module17 mode17 t113 t117 t118 module18 mode18 t121 t122 t123 t124 t125 t126 module19 mode19 t129 t130 t131 t132 t133 t134 module20 mode20 t137 t138 t139 t140 t141 t142 module21 mode21 t145 t146 t147 t148 t149 t150 module22 mode22 t153 t154 t155 t156 t157 t158 module23 mode23 t161 t162 t163 t164 t165 t166 module24 mode24 t169 t170 t171 t172 t173 t174 module25 mode25 t177 t178 t179 t180 t181 t182 module26 mode26 t185 t186 t187 t188 t189 t190 module27 mode27 t193 t194 t195 t196 t197 t198 module28 mode28 t201 t202 t203 t204 t205 t206 module29 mode29 t209 t210 t211 t212 t213 t214 module30 mode30 t217 t218 t219 t220 t221 t222 module31 mode31 t225 t226 t227 t228 t229 t230 module32 mode32 t233 t234 t235 t236 t237 t238 module33 mode33 t241 t242 t243 t244 t245 t246 module34 mode34 t249 t250 t251 t252 t253 t254 module35 mode35 t257 t258 t259 t260 t261 t262 module36 mode36 t265 t266 t267 t268 t269 t270 module37 mode37 t273 t274 t275 t276 t277 t278 module38 mode38 t281 t282 t283 t284 t285 t286 module39 mode39 t289 t290 t291 t292 t293 t294 module40 mode40 t297 t298 t299 t300 t301 t302 module41 mode41 t305 t306 t307 t308 t309 t310 module42 mode42 t313 t314 t315 t316 t317 t318 module43 mode43 t321 t322 t323 t324 t325 t326 module44 mode44 t329 t330 t331 t332 t333 t334 module45 mode45 t337 t338 t339 t340 t341 t342 module46 mode46 t345 t346 t347 t348 t349 t350 module47 mode47 t353 t354 t355 t356 t357 t358 module48 mode48 module49 mode49 module50 mode50 module51 mode51 module52 mode52 module53 mode53 t47 t48 module54 mode54 t55 t56 module55 mode55 t63 t64 module56 mode56 t71 t72 module57 mode57 t79 t80 module58 mode58 t87 t88 module59 mode59 t95 t96 module60 mode60 t103 t104 module61 mode61 t111 t112 module62 mode62 t119 t120 output63 mode63 t127 t128 output64 mode64 t135 output65 mode65 output66 mode66 t144 output67 mode67 t151 t152 output68 mode68 t159 output69 mode69 
location70 #Lcoldfusion/tagext/net/LocationTag; 
location87 ,Lcoldfusion/runtime/TransientVariableHolder; #Lcoldfusion/runtime/AbortException; Ljava/lang/Exception; __cfcatchThrowable0 !coldfusion/runtime/AbortException	� java/lang/Exception
 __cfcatchThrowable2 <clinit> __cfcatchThrowable1 1     �                 "     &     *     .     2     6     :     >     B     F     J     N     R     V     Z     ^     b     f     j     n     r     v     z     ~     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �            
                        "    &    *    .    2    6    :    >    B    F    J    N    R    V    Z    ^    b    f    j    n    r    v    z    ~    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �       N   �   �   �   |}   ��   �   �   �   �   G   �   ^�   �   ��    �h �      �*� �*g��**���Y�S��6���*� *h���a�*i��**� ٶ��P�::<:6*��X:�>Y�A:� ��DN-�*��*j��**���Y�S��F�Y**� ���SY*���YaS�tS��**� �Y**����S**� �����H�K`6�O��}*�Q*m��*m��***� ����SUW�[�*�)*o��**���Y�S��]���*��*q��**� a�*_*��2�*� �*r���a�*s��**�����P�::	<:
6*[�X:�>Y	
�A:� :�DN-�**� ��Y**� ]��S**� ]����H�K`6�O���*�5*v��*v��***� ɶ���SUW�[�*�5*w��**�5���xa�e�**� ��YaSa��*}��*}��**� ���P�:a�h��k�*�*��**� ���P�:�*� i*���**�5���x<�L��*� ��m� �*���**����x**� i**� ����e�x�h��k�� R*���**� ���P**� i**� ����e�xW*���**����x**� i**� ����e�x�pW*� �**� ����tc���**� ���*���**� i�����C���t|���H� X*���**�5���xa�h��k�� 7*�5*���**�5���xa�e�**� ��YaSa��**��Wv�i**��xz�i**���|z�i**��s~z�i**����z�i**��<*���**�a�**�Y**� ��S�2�i,��[*�(^+�,�.:*�����C�I�M� �*�(_+�,�.:*�����C�I�M� �*�� �+�,��:*�����*���Y�S�t�x�@������������I��Y6� w*,��M*,��� :� P� ��*,���*� =*]��**���Y�S������������ � :� �:*,��M���� :� #�� � #:��� � :� �:���*� .I��O�������#I��O�������#I��O��������������� �   �   ���    ���   ���   ���   ���   ���   �� �   ��    ���   ��� 	  ��� 
  �� �   ��    ���   ���   ���   ���   �� �   ���   ���   ���   ���   ���   ���   ��� �  �/  Z g g g g  g  g 4h 4h 4h 4h )h )h Ai Ai Ai Ai Ai Ai Ai Ai �j �j �j �j �j �j �j �j ~j ~j �k �k �k �k �k �k �k �k �i Aimmmm
m
m
m
mmmmm
m
m
m
m �m �m0o0o0o0o%o%oYqYqYqYqYqYqNqNqzrzrzrzroror�s�s�s�s�s�s�s�s�t�t�t�t�t�t�t�t�s�s
v
v
v
v	v	v	v	vvvvv	v	v	v	v�v�v/w/w/w/w:w:w/w/w/w/w$w$wNxNxRxRxRxRxCxCxf}f}f}f}f}f}f}f}t}t}f}f}����������������������������������������������������������������������������(�(�(�(�8�8�3�3�3�3�(�(�(���N�N�N�N�Y�Y�N�N�N�N�J�a�a�p�p�p�p�a�a�����������������������������������������������������������������f}fz������������/�/�G�G�Y�Y�G�G�G�G�����o���������������������b]b]b]b]W]W]�� �� �  �     �*���L*��N*����*-+�j� �*-+�4� �*-+��� �*�� �-�,��:*a���I��Y6� R*+���*�( ��,�.:*b����C�I�M� :� E�*+����������� :� #�� � #:		�¨ � :
� 
�:�é+��[�  X � �� � � �� � � �� X � �� � � �� � � �� � � �� � � �� �   z    ���     ���    ���    ���    �     � �    ��    ���    ���    ��� 	   ��� 
   ��� �     �b �b kb ;a   � �   "     �԰   �       ��      �  �    �*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )**++,� � -**/+,� � 1**3+,� � 5**7+,� � 9**;+,� � =**?+,� � A**C+,� � E**G+,� � I**K+,� � M**O+,� � Q**S+,� � U**W+,� � Y**[+,� � ]**_+,� � a**c+,� � e**g+,� � i**k+,� � m**o+,� � q**s+,� � u**w+,� � y**{+,� � }**+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� �**+,� �**+,� �	**+,� �**+,� �**+,� �**+,� �**+,� �**+,� �!**#+,� �%**'+,� �)**++,� �-**/+,� �1**3+,� �5**7+,� �9**;+,� �=**?+,� �A**C+,� �E**G+,� �I**K+,� �M**O+,� �Q**S+,� �U**W+,� �Y**[+,� �]**_+,� �a**c+,� �e**g+,� �i**k+,� �m**o+,� �q**s+,� �u**w+,� �y**{+,� �}**+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� �ٱ   �       ���    �   �  	  �   2     *_�Ƕ�*_�ж˱   �       ��      �   #     *� 
�   �       ��   �h �  |    ,��[*��p+�,��:*W���������*W��**� ����P�:�@���I�M� �,��[,**�y���x�[,��[,**� ���x�[,=�[,**� ���x�[,?�[*�Kq+�,�M:*l����P�S��Y�Y�SYUSYVSYXS���[�I�\Y6�*,��M*,A��**�)������ �� :� ��� �������� N*�-��W*,^��*n��***���*�Y**�-��S��� L,��[,**�-���x�[,d�[,*o��***�)����**�-�����x�[,ö[*,A��H�K�� ��P*,C���g��� � :� �:	*,��M�	�h� :
� #
�� � #:�i� � :� �:�j�,ȶ[*��r+�,��:*u����������*u��**�����P�:�@���I�M� �,ʶ[*��s+�,��:*w��q��̶�u����Y�Y�SYwSYSY�S�����I�M� �*� ������ �(�"%(� �7�"%7�(47�7<7� �   �   ��    ��   ��   ��   
       �   �   ��   �� 	  �� 
  ��   ��   ��       �  j Z W W 'W 'W <W <W <W <W <W <W <W <W W i_ i_ i_ i_ h_ f f f f ~f �h �h �h �h �h �l �l �l �l �l �lmmmmJmJmbnbnsnsnanan�o�o�o�o�o�o�o�o�o�o�o�o�o�o�o�oan�mm �lguguouou�u�u�u�u�u�u�u�uOu�w�w�w�w�w�w�w�w�w�w�w �h �  V 
   �,{�[*��t+�,��:*x��q��Ӷ�����Y�Y�SYwSYSY�S�����I�M� �,��[*�Ku+�,�M:*|��׶P�S��Y�Y�SYUSYVSYXS���[�I�\Y6�*,��M*,A��**�)������ �� :� ��� �������� N*�-��W*,^��*~��***���*�Y**�-��S���� L,��[,**�-���x�[,d�[,*��***�)����**�-�����x�[,ö[*,A��H�K�� ��N*,C���g��� � :� �:	*,��M�	�h� :
� #
�� � #:�i� � :� �:�j�,ٶ[,**�u���x�[,۶[,**�I���x�[,��[,**����x�[,=�[,**� ݶ��x�[,ݶ[*���**� ������ 2*,C��*� �*���**� ���x�ø�*,߶�,�[*�Kv+�,�M:*����P�S��Y�Y�SYUSYVSYXS���[�I�\Y6�0*,��M*,A��**�5���x:<:6*'�X:�>Y�A:� ��DN-�*,^��*���***� �*�Y**� �**� )���eS��� c,��[,**� �**� )���e�x�[,d�[,*���***� �**� )���ea��~����x�[,ö[*,A��H�K`6�O��@*,C���g���� � :� �:*,��M��h� :� #�� � #:�i� � :� �:�j�*�  �������� �������� ������� ��36�6;6�Vb�\_b�Vq�\_q�bnq�qvq� �     ���    ���   ���   ���   �   �   � �   ��   ���   ��� 	  ��� 
  ���   ���   ���   �   � �   ��   ��   �� �   ��    ���   ���   ���   ���   ���   ��   �� �  * � x x 'x 'x /x /x Gx Gx Sx Sx x �| �| �| �| �| �| �} �} �} �}}},~,~=~=~+~+~+~+~+~+~YYYYXwwww��vvvvn+~�} �} t|�����2�2�2�2�1�H�H�H�H�G�^�^�^�^�]�z�z�z�z�z�z�z�z���������������������z�����������/�/�/�/�y�y�����x�x�����������������������������������������������������x��/��� �h �  � 
   ,ȶ[*��w+�,��:*�����������*���**� ���P�:�@���I�M� �,ʶ[*��x+�,��:*���q����u����Y�Y�SYwSYSY�S�����I�M� �,{�[*��y+�,��:*���q��������Y�Y�SYwSYSY�S�����I�M� �,��[*�Kz+�,�M:*�����P�S��Y�Y�SYUSYVSYXS���[�I�\Y6�2*,��M*,A��**�5���x:	<:
6*'�X:�>Y	
�A:� ��DN-�*,^��*���***� �*�Y**� �**� )���eS���� c,��[,**� �**� )���e�x�[,d�[,*���***� �**� )���ea��~����x�[,ö[*,A��H�K`6�O��>*,C���g���� � :� �:*,��M��h� :� #�� � #:�i� � :� �:�j�*� �������������������������������� �   �   ��    ��   ��   ��                �   �� 	  �� 
  � �   �    ��    �   !�   �   �   ��   �� �  V U � � '� '� <� <� <� <� <� <� <� <� � �� �� �� �� �� �� �� �� �� �� h� �� �� �� �� �� ����!�!� ��Z�Z�x�x�������������������������������5�5�0�0�0�0�/�[�[�V�V�f�f�V�V�V�V�r�r�u�u�U�U�U�U�M�������B� kh �  � 
   $,;�[,**� ����x�[,=�[,**�����x�[,?�[*)��**� ������� 2*,A��*� �**��**� ����x�ø�*,C��*,C��**�ٶ���F�F�~��%Y�� W**� q����F�F�~��%���*,A��*�Kj+�,�M:*-��O�P�S��Y�Y�SYUSYVSYXS���[�I�\Y6�*,��M*,^��**�Q���x:<:6*��X:	�>Y�A:
� �
�DN	-�*,`��*/��***� ��*�Y**� **�����eS��� >,b�[,**� **�����e�x�[,d�[,**�����x�[,f�[*,^��H�K`6
�O��e*,A���g��� � :� �:*,��M��h� :� #�� � #:�i� � :� �:�j�*,C�ɧ�*,A��*�Kk+�,�M:*5��O�P�S��Y�Y�SYUSYVSYXS���[�I�\Y6�*,��M*,^��**�Q���x:<:6*��X:�>Y�A:� ��DN-�*,`��*7��***� ��*�Y**� **�����eS��� >,b�[,**� **�����e�x�[,d�[,**�����x�[,f�[*,^��H�K`6�O��e*,A���g��� � :� �:*,��M��h� :� #�� � #:�i� � :� �:�j�*,C��*� (�"�=I�CFI�=X�CFX�IUX�X]X�������������������	���	��	�		� �  .   $��    $��   $��   $��   $"   $# �   $��   $��   $� �   $�  	  $�� 
  $��   $��   $��   $ �   $!�   $�   $$   $% �   $��   $��   $� �   $�    $��   $��   $�   $�   $&�   $'�   $(� �  � q # # # # # % % % % % :) :) :) :) :) :) :) :) ]* ]* ]* ]* ]* ]* ]* ]* R* R* :) �, �, �, �, �, �, �, �, �, �, �, �, �, �, �, �, �, �, �- �-----:.:.:.:.�/�/�/�/�/�/�0�0�0�0�0�0�0�0�0�0�0�0�/.:. �-�5�5�5�5�5�5�6�6�6�66767L7L75757n8n8i8i8i8i8h8�8�8�8�8�857�6�6|5t4 �, &h �  9 	 ,  u,��[*��{+�,��:*����������Y�Y�SY�S�����I��Y6� 6*,��M,��[������ � :� �:*,��M���� :� #�� � #:		��� � :
� 
�:���,�[,**�u���x�[,۶[,**�%���x�[,�[*��|+�,��:*Ѷ��������Y�Y�SYS�����I��Y6� 6*,��M,�[������ � :� �:*,��M���� :� #�� � #:��� � :� �:���,	�[*��}+�,��:*׶��������Y�Y�SYS�����I��Y6� 6*,��M,�[������ � :� �:*,��M���� :� #�� � #:��� � :� �:���,�[,*ٶ�**���YS���Y**� Y��S��x�[,�[*��~+�,��:*ܶ��������Y�Y�SYSY�SYS�����I��Y6� 6*,��M,�[������ � :� �:*,��M���� : � # �� � #:!!��� � :"� "�:#���#,�[,**� ����x�[,�[,**� ����x�[,!�[*��+�,��:$*��$�����$��Y�Y�SY#S����$�I$��Y6%� 6*$%,��M,%�[$������ � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)��� � :*� *�:+$���+*� ( Y u x� x } x� N � �� � � �� N � �� � � �� � � �� � � ��Ieh�hmh�>�������>���������������),�,1,�LX�RUX�Lg�RUg�Xdg�glg�47�7<7�Wc�]`c�Wr�]`r�cor�rwr�$'�','��GS�MPS��Gb�MPb�S_b�bgb� �  � ,  u��    u��   u��   u��   u)*   u+ �   u��   u��   u��   u�� 	  u�� 
  u��   u,*   u- �   u �   u!�   u�   u�   u��   u��   u.*   u/ �   u��   u��   u��   u�   u�   u&�   u0*   u1 �   u2�   u3�   u4�    u5� !  u6� "  u7� #  u8* $  u9 � %  u:� &  u;� '  u<� (  u=� )  u>� *  u?� +�   � , >� >� � �� �� �� �� �� �� �� �� �� ��.�.� ��������������������������������������������������������� �h �  , 
    �,o�[*��l+�,��:*@��q��s��u����Y�Y�SYwSYSYyS�����I�M� �,{�[*��m+�,��:*A��q��}������Y�Y�SYwSYSY�S�����I�M� �,��[**�ٶ���F�F�~��%Y�� W**� q����F�F�~��%���*,A��*�Kn+�,�M:*F����P�S��Y�Y�SYUSYVSYXS���[�I�\Y6�*,��M*,^��**�Q���x:<:	6
*��X:�>Y	�A:� ��DN-�*,`��*H��***� ��*�Y**� **�����eS���� >,b�[,**� **�����e�x�[,d�[,**�����x�[,f�[*,^��H�K
`6
�O��c*,A���g��� � :� �:*,��M��h� :� #�� � #:�i� � :� �:�j�*,C�ɧ�*,A��*�Ko+�,�M:*N����P�S��Y�Y�SYUSYVSYXS���[�I�\Y6�*,��M*,^��**�Q���x:<:6*��X:�>Y�A:� ��DN-�*,`��*P��***� ��*�Y**� **�����eS���� >,b�[,**� **�����e�x�[,d�[,**�����x�[,f�[*,^��H�K`6�O��c*,A���g��� � :� �:*,��M��h� :� #�� � #:�i� � :� �:�j�*,C��*� �|���}�������}���������������;/2�272�0R^�X[^�0Rm�X[m�^jm�mrm� �  B    ���    ���   ���   ���   �@   �A   �B   �C �   ���   ��� 	  �� � 
  ��    ���   ���   � �   �!�   ��   ��   ���   �D   �E �   ���   ���   �� �   ��    ��   ��   �&�   �'�   �(�   �2�   �3� �  � r @ @ '@ '@ /@ /@ G@ G@ S@ S@ @ �A �A �A �A �A �A �A �A �A �A tA �E �E �E �E �E �E �E �EEEEEEEEE �E �ECFCFaFaFmFmF�G�G�G�G�H�H�H�H�H�H�H�H�H�HIIIIIII8I8I8I8I7I�HfG�G+F�N�NNN N NMOMOMOMO�P�P�P�P�P�P�P�P�P�P�Q�Q�Q�Q�Q�Q�Q�Q�Q�Q�Q�Q�POMO�N�M �E Yh �  s    �,*�[,**�����x�[,,�[**� !���� 
,�[,.�[,**�����x�[,0�[**�Ͷ��� 
,�[,2�[,**� -���x�[,4�[**� u���� 
,�[,6�[,**� ����x�[,8�[**� ����� 
,�[,:�[,**����x�[,<�[*�� �+�,��:*����������Y�Y�SY>SY�SY@S�����I��Y6� 6*,��M,B�[������ � :� �:*,��M���� :� #�� � #:		��� � :
� 
�:���*,��*�� �+�,��:* ���������Y�Y�SYDSY�SYFS�����I��Y6� 6*,��M,H�[������ � :� �:*,��M���� :� #�� � #:��� � :� �:���*,��**� �tJ����%Y�� !W*���YtS�t4��~�%�� 9,L�[,**� 9���x�[,N�[,**� 9���x�[,P�[� 6,R�[,**�E���x�[,N�[,**�E���x�[,P�[,T�[*�� �+�,��:*	���������Y�Y�SYVS�����I��Y6� 6*,��M,X�[������ � :� �:*,��M���� :� #�� � #:��� � :� �:���*� D`c�chc�9�������9���������������25�5:5�Ua�[^a�Up�[^p�amp�pup������������������������������� �     ���    ���   ���   ���   �F*   �G �   ���   ���   ���   ��� 	  ��� 
  ���   �H*   �I �   � �   �!�   ��   ��   ���   ���   �J*   �K �   ���   ���   ���   ��   ��   �&� �  � b � � � � � � � � :� :� :� :� 9� O� O� O� l� l� l� l� k� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ����)�)� ��� � � � � ��������������������������������������o	o	7	 h �  �    ;,��[,*���**���*�*�Y*���Y.S�tS�2�x�[,��[,**� Ͷ��x�[,��[,**�	���x�[,��[,**� 1���x�[,��[**�	��**�������~�� M,��[,*���**�M���x���[,��[,*���**�M���x���[,ö[� @,Ŷ[,*���**�M���x���[,Ƕ[,**�����x�[,ɶ[,˶[*���**���Y�S������� �,϶[,**� ����x�[,Ѷ[*��a+�,��:*ƶ�ڶ�߶�z����Y�Y�SY**� Ѷ�S�����I�M� �,�[,�[,**�U���x�[,��[*��b+�,��:*϶�϶�����**�}���x�@��P����Y�Y�SY�SY�SY�SY�SY�SY�SYS�����I�M� �,�[,**�����x�[,��[*��c+�,��:*ڶ�϶�����**�}���x�@��P����Y�Y�SY�SY�SY�SY�SYS�����I�M� �*�   �   H   ;��    ;��   ;��   ;��   ;L   ;M   ;N �  �  � � !� !� � � � � � C� C� C� C� B� Y� Y� Y� Y� X� o� o� o� o� n� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ������� �� ��5�5�^�^�^�^�]���������������������s�5���������������$�$�$�$�P�P�\�\�h�h�v�v������������������������������������� �h �  �  )  a,]�[*�� �+�,��:*���������Y�Y�SY_S�����I��Y6� 6*,��M,a�[������ � :� �:*,��M���� :� #�� � #:		��� � :
� 
�:���,c�[*�� �+�,��:*���������Y�Y�SYeS�����I��Y6� 6*,��M,g�[������ � :� �:*,��M���� :� #�� � #:��� � :� �:���,i�[*�� �+�,��:*���������Y�Y�SY#S�����I��Y6� 6*,��M,%�[������ � :� �:*,��M���� :� #�� � #:��� � :� �:���,k�[**� ��%Y�� 'W*��**� �����C��F�t|�%��*,m��**� ���P:66�U 6*#�X: ���[ N -�-��*,߶�*�*��***� %�*n�YoS��*,߶�*� y*��***� %�*n�YtS��,p�[,**����x�[,r�[,**� y���x�[,t�[,**� I���x�[,v�[,**����x�[,r�[,**� y���x�[,x�[,**� ����x�[,z�[,**����x�[,r�[,**� y���x�[,|�[,*%��**����xig�m�[,~�[*���Y�S�**��**� y���x�����k� -*��*+��**�Ѷ��x**�����x<���*,��**� y���x�����k� -*��*-��**�Ѷ��x**�����x<���*.��**� y���x�����k� -*��*/��**�Ѷ��x**� -���x<���*0��**� y���x:����k� -*��*1��**�Ѷ��x**� ����x<���,��[,*3��*���Y�S�t�x���[,��[`6��=*,�ɧ �,��[*�� �+�,��:!*8��!�����!��Y�Y�SY�S����!�I!��Y6"� 6*!",��M,��[!������ � :#� #�:$*",��M�$!��� :%� #%�� � #:&!&��� � :'� '�:(!���(,��[*�   Z v y� y ~ y� O � �� � � �� O � �� � � �� � � �� � � ��;>�>C>�^j�dgj�^y�dgy�jvy�y~y�� ���#/�),/��#>�),>�/;>�>C>��	���,8�258��,G�25G�8DG�GLG� �  � )  a��    a��   a��   a��   aO*   aP �   a��   a��   a��   a�� 	  a�� 
  a��   aQ*   aR �   a �   a!�   a�   a�   a��   a��   aS*   aT �   a��   a��   a��   a�   a�   a&�   a'U   a( �   a2 �   a3 �   a4     aV* !  aW � "  a7� #  aX� $  aY� %  a:� &  a;� '  a<� (�  � � ? ?  ����WWWWVVVVpppp~~ppppVV��������������++====<SSSSRiiiih~�����������%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%%%�%�%�%�%�% ) ) ) ))-*-*-*-*8*8*-*-*P+P+P+P+[+[+[+[+f+f+P+P+P+P+E+-*v,v,v,v,�,�,v,v,�-�-�-�-�-�-�-�-�-�-�-�-�-�-�-v,�.�.�.�.�.�.�.�.�/�/�/�/�/�/�/�/�/�/�/�/�/�/�/�.00000000+1+1+1+161616161A1A1+1+1+1+1 10(Y3Y3Y3Y3Y3Y3Y3Y3Q3���8�8�8�6V 7h �  P  
  �,
�[,**� m���x�[,�[,*��**� ����x���[,�[,**�����x�[,�[*��d+�,��:*���ڶ���z����Y�Y�SY**�ն�SYSYSY�SYS�����I�M� �,�[,**� A���x�[,�[*�i���*,��**� q��Y�� W**�ٶ��� *, ��*�i��*,��*,��*� }���*,��**� q��Y�� W**�ٶ����%�� *, ��*� }��*,��*,��*��e+�,��:*��ڶ�"��z����Y�Y�SY**�i��SYSY$SY�SYS�����I�M� �,�[,**�e���x�[,�[**�i����8*, ��*��f+�,��:*��&��(������Y�Y�SY*SY�SY**�ٶ�SY�SY,S�����I�M� �,.�[,**�=���x�[,0�[*��g+�,��:*��&��(������Y�Y�SY2SY�SY**� }��SY�SY,S�����I�M� �,.�[,**� ����x�[,4�[�Q*, ��*��h+�,��:*��&��(������Y�Y�SY*SY�SY**�ٶ�SY�SY,SY6SY6S�����I�M� �,.�[,**�=���x�[,0�[*��i+�,��:	*��	&��	(��	��	��Y�Y�SY2SY�SY**� }��SY�SY,SY6SY6S����	�I	�M� �,.�[,**� ����x�[,4�[*�   �   f 
  ���    ���   ���   ���   �Z   �[   �\   �]   �^   �_ 	�   � � � � � � %� %� %� %� %� %� %� %� � >� >� >� >� =� k� k� s� s� {� {� �� �� �� �� �� �� �� �� S� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��
�
�
�
� �� ��$ $ $ $      ��>>>>::LLLL\\\\\\\\LL~~~~zzL���������������))WW__gg��������?�����������!!!!22�TTTTS����������������t//77??XXdddduu�������l) �h �  �    �,��[*�� �+�,��:*A���������Y�Y�SY�S�����I��Y6� 6*,��M,��[������ � :� �:*,��M���� :� #�� � #:		��� � :
� 
�:���,��[**�	��**�������~��K*, ��*�� �+�,��:*P��q�������**�����x�@����Y�Y�SYwSYSY�S�����I�M� �*, ��*�� �+�,��:*Q����������**�����x�@����Y�Y�SYwS�����I�M� �*, ��*�� �+�,��:*R������������I�M� �*,�ɧd*, ��*�� �+�,��:*T��q�������**� Ŷ��x�@����Y�Y�SYwSYSY�S�����I�M� �*, ��*�� �+�,��:*U����������**� ����x�@����Y�Y�SYwS�����I�M� �*, ��*�� �+�,��:*V�������������Y�Y�SYwS�����I�M� �*,��*�  Z v y� y ~ y� O � �� � � �� O � �� � � �� � � �� � � �� �   �   ���    ���   ���   ���   �`*   �a �   ���   ���   ���   ��� 	  ��� 
  ���   �b   �c   �d   �e   �f   �g �  . K ?A ?A A �O �O �O �O �O �O	P	PPPPPPPCPCPOPOP �P�Q�Q�Q�Q�Q�Q�Q�Q�Q�QqQ�R�RRRRR�RQTQTYTYTgTgTgTgT�T�T�T�T8T�U�U�U�U�U�U�U�UUU�UGVGVOVOVWVWVoVoV.V0S �O �h �  j    �,��[*�(`+�,�.:*�����C�I�M� �*�� �+�,��:*����I��Y6� �*,�� :��*,�9� :� ��*,�m� :	� �	�*,��� :
� �
�*,��� :� ��*,��� :� ��*,��� :� ��*,�(� :� ��*,�[� :� l�*,��� :� X�*,��� :� D�,��[������� :� #�� � #:�¨ � :� �:�é*�  R k`� q `� � �`� � �`� � �`� � �`� � �`� � �`� �`�`�%3`�9T`�Z]`� R ko� q o� � �o� � �o� � �o� � �o� � �o� � �o� �o�o�%3o�9To�Z]o�`lo�oto� �   �   ���    ���   ���   ���   �h�   �i   �j �   ���   ���   ��� 	  ��� 
  ���   ���   ���   � �   �!�   ��   ��   ���   ���   ���   ��� �     � � � 5� gh �  C� 
g  &H*��**���Y�S�� ��Y�� $W*��**���Y�S������ �*��**���Y�S������� {*���YS��*�(+�,�.:*��02*��*�68�<�@�C�I�M� �*�R+�,�T:*���I�M� �,V�[*�(+�,�.:*��]�C�I�M� �,_�[**� �ace�i*���YkS�mYo�q*���YaS�t�x�|~�|���*��+�,��:*���������Y�Y�SY�SY�SY�S�����I��Y6� 6*,��M,��[������ � :	� 	�:
*,��M�
��� :� #�� � #:��� � :� �:���*��+�,��:*���������Y�Y�SY�SY�SY�S�����I��Y6� 6*,��M,Ķ[������ � :� �:*,��M���� :� #�� � #:��� � :� �:���*��+�,��:*���������Y�Y�SY�SY�SY�S�����I��Y6� 6*,��M,ȶ[������ � :� �:*,��M���� :� #�� � #:��� � :� �:���*��+�,��:* ���������Y�Y�SY�SY�SY�S�����I��Y6 � 6* ,��M,̶[������ � :!� !�:"* ,��M�"��� :#� ##�� � #:$$��� � :%� %�:&���&*��+�,��:'*!��'�����'��Y�Y�SY�SY�SY�S����'�I'��Y6(� 6*'(,��M,ж['������ � :)� )�:**(,��M�*'��� :+� #+�� � #:,',��� � :-� -�:.'���.*��	+�,��:/*"��/�����/��Y�Y�SY�SY�SY�S����/�I/��Y60� 6*/0,��M,ֶ[/������ � :1� 1�:2*0,��M�2/��� :3� #3�� � #:4/4��� � :5� 5�:6/���6*��
+�,��:7*#��7�����7��Y�Y�SY�SY�SY�S����7�I7��Y68� 6*78,��M,ڶ[7������ � :9� 9�::*8,��M�:7��� :;� #;�� � #:<7<��� � :=� =�:>7���>*��+�,��:?*$��?�����?��Y�Y�SY�SY�SY�S����?�I?��Y6@� 6*?@,��M,޶[?������ � :A� A�:B*@,��M�B?��� :C� #C�� � #:D?D��� � :E� E�:F?���F*��+�,��:G*%��G�����G��Y�Y�SY�SY�SY�S����G�IG��Y6H� 6*GH,��M,�[G������ � :I� I�:J*H,��M�JG��� :K� #K�� � #:LGL��� � :M� M�:NG���N*��+�,��:O*&��O�����O��Y�Y�SY�SY�SY�S����O�IO��Y6P� 6*OP,��M,�[O������ � :Q� Q�:R*P,��M�RO��� :S� #S�� � #:TOT��� � :U� U�:VO���V*��+�,��:W*'��W�����W��Y�Y�SY�SY�SY�S����W�IW��Y6X� 6*WX,��M,�[W������ � :Y� Y�:Z*X,��M�ZW��� :[� #[�� � #:\W\��� � :]� ]�:^W���^*��+�,��:_*(��_�����_��Y�Y�SY�SY�SY�S����_�I_��Y6`� 6*_`,��M,�[_������ � :a� a�:b*`,��M�b_��� :c� #c�� � #:d_d��� � :e� e�:f_���f*��+�,��:g*)��g�����g��Y�Y�SY�SY�SY�S����g�Ig��Y6h� 6*gh,��M,�[g������ � :i� i�:j*h,��M�jg��� :k� #k�� � #:lgl��� � :m� m�:ng���n*��+�,��:o**��o�����o��Y�Y�SY�SY�SY�S����o�Io��Y6p� 6*op,��M,��[o������ � :q� q�:r*p,��M�ro��� :s� #s�� � #:tot��� � :u� u�:vo���v*��+�,��:w*+��w�����w��Y�Y�SY�SY�SY�S����w�Iw��Y6x� 6*wx,��M,��[w������ � :y� y�:z*x,��M�zw��� :{� #{�� � #:|w|��� � :}� }�:~w���~*��+�,��:*,���������Y�Y�SY�SY�SY�S�����I��Y6�� 6*�,��M,��[������ � :�� ��:�*�,��M����� :�� #��� � #:����� � :�� ��:�����*��+�,��:�*-�����������Y�Y�SY SY�SY S������I���Y6�� 6*��,��M,�[������� � :�� ��:�*�,��M������ :�� #��� � #:������ � :�� ��:������*��+�,��:�*.�����������Y�Y�SYSY�SYS������I���Y6�� 6*��,��M,�[������� � :�� ��:�*�,��M������ :�� #��� � #:������ � :�� ��:������*��+�,��:�*/�����������Y�Y�SYSY�SYS������I���Y6�� 6*��,��M,
�[������� � :�� ��:�*�,��M������ :�� #��� � #:������ � :�� ��:������*��+�,��:�*0�����������Y�Y�SYSY�SYS������I���Y6�� 6*��,��M,�[������� � :�� ��:�*�,��M������ :�� #��� � #:������ � :�� ��:������*��+�,��:�*1�����������Y�Y�SYSY�SYS������I���Y6�� 6*��,��M,�[������� � :�� ��:�*�,��M������ :�� #��� � #:������ � :�� ��:������*��+�,��:�*2�����������Y�Y�SYSY�SYS������I���Y6�� 6*��,��M,�[������� � :�� ��:�*�,��M������ :�� #��� � #:������ � :�� ��:������*��+�,��:�*3�����������Y�Y�SYSY�SYS������I���Y6�� 6*��,��M,�[������� � :�� ��:�*�,��M������ :�� #��� � #:������ � :�� ��:������*��+�,��:�*4�����������Y�Y�SYSY�SYS������I���Y6�� 6*��,��M,�[������� � :�� ��:�*�,��M������ :è #ð� � #:��Ķ�� � :Ũ ſ:������*��+�,��:�*5��������ǻ�Y�Y�SY SY�SY S������IǶ�Y6ș 6*��,��M,"�[Ƕ����� � :ɨ ɿ:�*�,��M��Ƕ�� :˨ #˰� � #:��̶�� � :ͨ Ϳ:�Ƕ���*��+�,��:�*6��������ϻ�Y�Y�SY$SY�SY$S������I϶�Y6Й 6*��,��M,&�[϶����� � :Ѩ ѿ:�*�,��M��϶�� :Ө #Ӱ� � #:��Զ�� � :ը տ:�϶���*��+�,��:�*7��������׻�Y�Y�SY(SY�SY(S������I׶�Y6ؙ 6*��,��M,*�[׶����� � :٨ ٿ:�*�,��M��׶�� :ۨ #۰� � #:��ܶ�� � :ݨ ݿ:�׶���*��+�,��:�*8��������߻�Y�Y�SY,SY�SY,S������I߶�Y6�� 6*��,��M,.�[߶����� � :� �:�*�,��M��߶�� :� #㰨 � #:����� � :� �:�߶���*�� +�,��:�*9����������Y�Y�SY0SY�SY0S������I��Y6� 6*��,��M,2�[������ � :� �:�*�,��M����� :� #밨 � #:����� � :�� ��:�����*��!+�,��:�*:����������Y�Y�SY4SY�SY4S������I��Y6� 6*��,��M,6�[������ � :� �:�*�,��M����� :� #� � #:������ � :�� ��:�����*��"+�,��:�*;�����������Y�Y�SY8SY�SY8S������I���Y6�� 6*��,��M,8�[������� � :�� ��:�*�,��M������ :�� #��� � #:������ � :�� ��:������*��#+�,��:�*<�����������Y�Y�SY:SY�SY:S������I���Y�6 � B*�� ,��M,8�[������� � !�:� ���:*� ,��Mĩ���� �:� -��� %� /�:����� � �:� ���:���ĩ*��$+�,���:*=�����������Y�Y�SY<SY�SY>S������I���Y�6� F*��,��M,>�[������ � !�:	� �	��:
*�,��Mĩ
���� �:� /��� '� 3�:����� � �:� ���:���ĩ*��%+�,���:*>�����������Y�Y�SY@SY�SYBS������I���Y�6� F*��,��M,B�[������ � !�:� ���:*�,��Mĩ���� �:� /��� '� 3�:����� � �:� ���:���ĩ*��&+�,���:*?�����������Y�Y�SYDSY�SY�S������I���Y�6� F*��,��M,̶[������ � !�:� ���:*�,��Mĩ���� �:� /��� '� 3�:����� � �:� ���:���ĩ*��'+�,���:*@�����������Y�Y�SYFSY�SYHS������I���Y�6 � F*�� ,��M,H�[������ � !�:!� �!��:"*� ,��Mĩ"���� �:#� /�#�� '� 3�:$��$��� � �:%� �%��:&���ĩ&*��(+�,���:'*A���'������'��Y�Y�SYJSY�SYJS�����'�I�'��Y�6(� F*�'�(,��M,L�[�'����� � !�:)� �)��:**�(,��Mĩ*�'��� �:+� /�+�� '� 3�:,�'�,��� � �:-� �-��:.�'��ĩ.*��)+�,���:/*B���/������/��Y�Y�SYNSY�SYNS�����/�I�/��Y�60� F*�/�0,��M,P�[�/����� � !�:1� �1��:2*�0,��Mĩ2�/��� �:3� /�3�� '� 3�:4�/�4��� � �:5� �5��:6�/��ĩ6*��*+�,���:7*C���7������7��Y�Y�SYRSY�SYRS�����7�I�7��Y�68� F*�7�8,��M,T�[�7����� � !�:9� �9��::*�8,��Mĩ:�7��� �:;� /�;�� '� 3�:<�7�<��� � �:=� �=��:>�7��ĩ>*��++�,���:?*D���?������?��Y�Y�SYVSY�SYVS�����?�I�?��Y�6@� F*�?�@,��M,X�[�?����� � !�:A� �A��:B*�@,��MĩB�?��� �:C� /�C�� '� 3�:D�?�D��� � �:E� �E��:F�?��ĩF*��,+�,���:G*E���G������G��Y�Y�SYZSY�SYZS�����G�I�G��Y�6H� F*�G�H,��M,\�[�G����� � !�:I� �I��:J*�H,��MĩJ�G��� �:K� /�K�� '� 3�:L�G�L��� � �:M� �M��:N�G��ĩN*��-+�,���:O*F���O������O��Y�Y�SY^SY�SY^S�����O�I�O��Y�6P� F*�O�P,��M,`�[�O����� � !�:Q� �Q��:R*�P,��MĩR�O��� �:S� /�S�� '� 3�:T�O�T��� � �:U� �U��:V�O��ĩV*��.+�,���:W*G���W������W��Y�Y�SYbSY�SYbS�����W�I�W��Y�6X� F*�W�X,��M,d�[�W����� � !�:Y� �Y��:Z*�X,��MĩZ�W��� �:[� /�[�� '� 3�:\�W�\��� � �:]� �]��:^�W��ĩ^*��/+�,���:_*H���_������_��Y�Y�SYfSY�SYfS�����_�I�_��Y�6`� F*�_�`,��M,ֶ[�_����� � !�:a� �a��:b*�`,��Mĩb�_��� �:c� /�c�� '� 3�:d�_�d��� � �:e� �e��:f�_��ĩf*�`������������(�(�%(�(-(���������������������������������]y|�|�|�R�������R���������������%AD�DID�dp�jmp�d�jm�p|����	���,8�258��,G�25G�8DG�GLG����������� ��� ������� ��}�������r�������r���������������Ead�did�:�������:���������������),�,1,�LX�RUX�Lg�RUg�Xdg�glg����������		 �			 ��		/�			/�	 	,	/�	/	4	/�	�	�	��	�	�	��	�	�	��	�	�	��	�	�	��	�	�	��	�	�	��	�	�	��
e
�
��
�
�
��
Z
�
��
�
�
��
Z
�
��
�
�
��
�
�
��
�
�
��-IL�LQL�"lx�rux�"l��ru��x�����������4@�:=@��4O�:=O�@LO�OTO���������������������������z�������z���������������Mil�lql�B�������B���������������14�494�
T`�Z]`�
To�Z]o�`lo�oto���������(�"%(��7�"%7�(47�7<7��������������������������������m�������b�������b���������������5QT�TYT�*t��z}��*t��z}������������!��<H�BEH��<W�BEW�HTW�W\W�����������
���
��$���������������������������������Uqt�tyt�J�������J���������������9<�<A<�\h�beh�\w�bew�htw�w|w���	��$0�*-0��$?�*-?�0<?�?D?��������������������������u�������j�������j���������������=Y\�\a\�2|������2|��������������%(�(/(��Tb�\_b��Tu�\_u�bru�u|u���#��JX�RUX��Jm�RUm�Xjm�mtm�����DR�LOR��Dg�LOg�Rdg�gng�����>L�FIL��>a�FIa�L^a�aha��
�

��8F�@CF��8[�@C[�FX[�[b[�����2@�:=@��2U�:=U�@RU�U\U������ ��� , :� 4 7 :�� , O� 4 7 O� : L O� O V O� � � �� � � �� �!&!4�!.!1!4� �!&!I�!.!1!I�!4!F!I�!I!P!I�!�!�!��!�!�!��!�" ".�"("+".�!�" "C�"("+"C�"."@"C�"C"J"C�"�"�"��"�"�"��"�##(�#"#%#(�"�##=�#"#%#=�#(#:#=�#=#D#=�#�#�#��#�#�#��#�$$"�$$$"�#�$$7�$$$7�$"$4$7�$7$>$7�$�$�$��$�$�$��$�%%�%%%�$�%%1�%%%1�%%.%1�%1%8%1�%�%�%��%�%�%��%�&&�&&&�%�&&+�&&&+�&&(&+�&+&2&+� �  g  &H��    &H��   &H��   &H��   &Hk�   &Hlm   &Hn�   &Ho*   &Hp �   &H�� 	  &H�� 
  &H��   &H��   &H��   &H �   &Hq*   &Hr �   &H�   &H��   &H��   &H��   &H��   &H��   &Hs*   &Ht �   &H�   &H�   &H&�   &H'�   &H(�   &H2�   &Hu*   &Hv �    &H5� !  &H6� "  &H7� #  &HX� $  &HY� %  &H:� &  &Hw* '  &Hx � (  &H=� )  &H>� *  &H?� +  &Hy� ,  &Hz� -  &H{� .  &H|* /  &H} � 0  &H~� 1  &H� 2  &H�� 3  &H�� 4  &H�� 5  &H�� 6  &H�* 7  &H� � 8  &H�� 9  &H�� :  &H�� ;  &H�� <  &H�� =  &H�� >  &H�* ?  &H� � @  &H�� A  &H�� B  &H�� C  &H�� D  &H�� E  &H�� F  &H�* G  &H� � H  &H�� I  &H�� J  &H�� K  &H�� L  &H�� M  &H�� N  &H�* O  &H� � P  &H�� Q  &H�� R  &H�� S  &H�� T  &H�� U  &H�� V  &H�* W  &H� � X  &H�� Y  &H�� Z  &H�� [  &H�� \  &H�� ]  &H�� ^  &H�* _  &H� � `  &H�� a  &H�� b  &H�� c  &H�� d  &H�� e  &H�� f  &H�* g  &H� � h  &H�� i  &H�� j  &H�� k  &H�� l  &H�� m  &H�� n  &H�* o  &H� � p  &H�� q  &H�� r  &H� s  &H� t  &H�� u  &H�� v  &H�* w  &H� � x  &H�� y  &H�� z  &H�� {  &H�� |  &H�� }  &H�� ~  &H�*   &H� � �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H�* �  &H� � �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H�* �  &H� � �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H�* �  &H� � �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H�* �  &H� � �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H�* �  &H� � �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H�* �  &H� � �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H	 � �  &H	* �  &H	 � �  &H	� �  &H	� �  &H	� �  &H	� �  &H	� �  &H	� �  &H		* �  &H	
 � �  &H	� �  &H	� �  &H	� �  &H	� �  &H	� �  &H	� �  &H	* �  &H	 � �  &H	� �  &H	� �  &H	� �  &H	� �  &H	� �  &H	� �  &H	* �  &H	 � �  &H	� �  &H	� �  &H	� �  &H	� �  &H	� �  &H	 � �  &H	!* �  &H	" � �  &H	#� �  &H	$� �  &H	%� �  &H	&� �  &H	'� �  &H	(� �  &H	)* �  &H	* � �  &H	+� �  &H	,� �  &H	-� �  &H	.� �  &H	/� �  &H	0� �  &H	1* �  &H	2 � �  &H	3� �  &H	4� �  &H	5� �  &H	6� �  &H	7� �  &H	8� �  &H	9* �  &H	: � �  &H	;� �  &H	<� �  &H	=� �  &H	>� �  &H	?� �  &H	@� �  &H	A* �  &H	B � �  &H	C� �  &H	D� �  &H	E� �  &H	F� �  &H	G� �  &H	H� �  &H	I* �  &H	J �   &H	K�  &H	L�  &H	M�  &H	N�  &H	O�  &H	P�  &H	Q*  &H	R �  &H	S�	  &H	T�
  &H	U�  &H	V�  &H	W�  &H	X�  &H	Y*  &H	Z �  &H	[�  &H	\�  &H	]�  &H	^�  &H	_�  &H	`�  &H	a*  &H	b �  &H	c�  &H	d�  &H	e�  &H	f�  &H	g�  &H	h�  &H	i*  &H	j �   &H	k�!  &H	l�"  &H	m�#  &H	n�$  &H	o�%  &H	p�&  &H	q*'  &H	r �(  &H	s�)  &H	t�*  &H	u�+  &H	v�,  &H	w�-  &H	x�.  &H	y*/  &H	z �0  &H	{�1  &H	|�2  &H	}�3  &H	~�4  &H	�5  &H	��6  &H	�*7  &H	� �8  &H	��9  &H	��:  &H	��;  &H	��<  &H	��=  &H	��>  &H	�*?  &H	� �@  &H	��A  &H	��B  &H	��C  &H	��D  &H	��E  &H	��F  &H	�*G  &H	� �H  &H	��I  &H	��J  &H	��K  &H	��L  &H	��M  &H	��N  &H	�*O  &H	� �P  &H	��Q  &H	��R  &H	��S  &H	��T  &H	��U  &H	��V  &H	�*W  &H	� �X  &H	��Y  &H	��Z  &H	��[  &H	��\  &H	��]  &H	��^  &H	�*_  &H	� �`  &H	��a  &H	��b  &H	��c  &H	��d  &H	��e  &H	��f�  J         -  -  -  -      S  S  S  S  S  S  �  �  �  �  v  v  �  �  �  �  �  �  �  �  �  �  S    �    � 3 3 J J P P P P f f F F F F 9 9 � � � � r n n z z 9 6 6 B B   �  �  
  
  �  � !� !� !� !� !� "� "� "� "X "V #V #b #b #  # $ $* $* $� $� %� %� %� %� %� &� &� &� &x &	v '	v '	� '	� '	@ '
> (
> (
J (
J (
 ( ) ) ) )
� )� *� *� *� *� *� +� +� +� +` +^ ,^ ,j ,j ,( ,& -& -2 -2 -� -� .� .� .� .� .� /� /� /� /� /~ 0~ 0� 0� 0H 0F 1F 1R 1R 1 1 2 2 2 2� 2� 3� 3� 3� 3� 3� 4� 4� 4� 4h 4f 5f 5r 5r 50 5. 6. 6: 6: 6� 6� 7� 7 7 7� 7� 8� 8� 8� 8� 8� 9� 9� 9� 9P 9N :N :Z :Z : : ; ;" ;" ;� ;� <� <� <� <� <� =� =� =� =� =� >� >� >� >� >� ?� ?� ?� ?� ?� @� @� @� @| @� A� A� A� Av A� B� B� B� Bp B � C � C � C � C j C!� D!� D!� D!� D!d D"� E"� E"� E"� E"^ E#� F#� F#� F#� F#X F$� G$� G$� G$� G$R G%� H%� H%� H%� H%L H 2h �  #�  �  *��0+�,��:*I���������Y�Y�SYlSY�SYlS�����I��Y6� 6*,��M,n�[������ � :� �:*,��M���� :� #�� � #:		��� � :
� 
�:���*��1+�,��:*J���������Y�Y�SYpSY�SYpS�����I��Y6� 6*,��M,r�[������ � :� �:*,��M���� :� #�� � #:��� � :� �:���*��2+�,��:*K���������Y�Y�SYtSY�SYtS�����I��Y6� 6*,��M,v�[������ � :� �:*,��M���� :� #�� � #:��� � :� �:���*��3+�,��:*L���������Y�Y�SYxSY�SYxS�����I��Y6� 6*,��M,z�[������ � :� �:*,��M���� : � # �� � #:!!��� � :"� "�:#���#*��4+�,��:$*M��$�����$��Y�Y�SY|SY�SY|S����$�I$��Y6%� 6*$%,��M,~�[$������ � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)��� � :*� *�:+$���+*��5+�,��:,*N��,�����,��Y�Y�SY�SY�SY�S����,�I,��Y6-� 6*,-,��M,��[,������ � :.� .�:/*-,��M�/,��� :0� #0�� � #:1,1��� � :2� 2�:3,���3*��6+�,��:4*O��4�����4��Y�Y�SY�SY�SY�S����4�I4��Y65� 6*45,��M,��[4������ � :6� 6�:7*5,��M�74��� :8� #8�� � #:949��� � ::� :�:;4���;*��7+�,��:<*P��<�����<��Y�Y�SY�SY�SY�S����<�I<��Y6=� 6*<=,��M,��[<������ � :>� >�:?*=,��M�?<��� :@� #@�� � #:A<A��� � :B� B�:C<���C*��8+�,��:D*Q��D�����D��Y�Y�SY�SY�SY�S����D�ID��Y6E� 6*DE,��M,��[D������ � :F� F�:G*E,��M�GD��� :H� #H�� � #:IDI��� � :J� J�:KD���K*��9+�,��:L*R��L�����L��Y�Y�SY�SY�SY�S����L�IL��Y6M� 6*LM,��M,��[L������ � :N� N�:O*M,��M�OL��� :P� #P�� � #:QLQ��� � :R� R�:SL���S*��:+�,��:T*S��T�����T��Y�Y�SY�SY�SY�S����T�IT��Y6U� 6*TU,��M,��[T������ � :V� V�:W*U,��M�WT��� :X� #X�� � #:YTY��� � :Z� Z�:[T���[*��;+�,��:\*T��\�����\��Y�Y�SY�SY�SY�S����\�I\��Y6]� 6*\],��M,��[\������ � :^� ^�:_*],��M�_\��� :`� #`�� � #:a\a��� � :b� b�:c\���c*��<+�,��:d*U��d�����d��Y�Y�SY�SY�SY�S����d�Id��Y6e� 6*de,��M,��[d������ � :f� f�:g*e,��M�gd��� :h� #h�� � #:idi��� � :j� j�:kd���k*��=+�,��:l*V��l�����l��Y�Y�SY�SY�SY�S����l�Il��Y6m� 6*lm,��M,��[l������ � :n� n�:o*m,��M�ol��� :p� #p�� � #:qlq��� � :r� r�:sl���s*��>+�,��:t*W��t�����t��Y�Y�SY:SY�SY�S����t�It��Y6u� 6*tu,��M,8�[t������ � :v� v�:w*u,��M�wt��� :x� #x�� � #:yty��� � :z� z�:{t���{,��[* ���**���Y�S������� �*��?+�,��:|* ���|�I|��Y6}� (,��[,**� ����x�[,��[|�����|��� :~� #~�� � #:|�¨ � :�� ��:�|�é�*,Ŷ�,˶[* ���**���Y�S������� �*��@+�,��:�* �����I���Y6�� (,��[,**�ɶ��x�[,��[���������� :�� #��� � #:����¨ � :�� ��:���é�*,Ŷ�,϶[*��A+�,��:�* Ӷ���I���Y6�� (,��[,**� ����x�[,��[���������� :�� #��� � #:����¨ � :�� ��:���é�,Ѷ[*��B+�,��:�* ٶ���I���Y6�� (,��[,**� e���x�[,��[���������� :�� #��� � #:����¨ � :�� ��:���é�,Ӷ[*��C+�,��:�* ߶���I���Y6�� (,��[,**� ����x�[,��[���������� :�� #��� � #:����¨ � :�� ��:���é�,ն[*��D+�,��:�* ����I���Y6�� (,��[,**� Q���x�[,��[���������� :�� #��� � #:����¨ � :�� ��:���é�,׶[*��E+�,��:�* �����I���Y6�� 0,ٶ[,*���Y�S�t�x�[,ٶ[���������� :�� #��� � #:����¨ � :�� ��:���é�,ݶ[,߶[**����� ?*,��*��F+�,��:�*�����������I��M� �**� ����*��*���*���**� ���**�M��**�}��**� ����**� ���**� ����**�����**� q���**�����**� �* ��*���**� *��*���**��*��*���**� �*��*���**�!��**�m��**� ������ *� q��� ***� ������ *�ٲ�*� q��*�	**�A���**� ն�m*+,�{� ��**� ն����   �             8   S   b*+,��� �*+,��� �� �*+,�� �*+,�
� �� i*+,�$� �� Z*K��**���Y�S��&�Y*���YKS�tS�W*�M�*�}�*� ��� *S��**� ն��@�CY�� W**� ն�4��~�%Y�� 'W*S��**�Ŷ����C��F�~��%�� 7*��W+�,��:�*U�����������I��M� �*� � ] y |� | � |� R � �� � � �� R � �� � � �� � � �� � � ��%AD�DID�dp�jmp�d�jm�p|����	���,8�258��,G�25G�8DG�GLG����������� ��� ������� ��}�������r�������r���������������Ead�did�:�������:���������������),�,1,�LX�RUX�Lg�RUg�Xdg�glg���������� � ��/�/� ,/�/4/���������������������������������e�������Z�������Z���������������-IL�LQL�"lx�rux�"l��ru��x��������		�			��	4	@�	:	=	@��	4	O�	:	=	O�	@	L	O�	O	T	O�	�	�	��	�	�	��	�	�
�


�	�	�
�


�


�


�
�
�
��
�
�
��
z
�
��
�
�
��
z
�
��
�
�
��
�
�
��
�
�
��Mil�lql�B�������B���������������AM�GJM�A\�GJ\�MY\�\a\�����������S�������S����������������&� #&��5� #5�&25�5:5�i�������i����������������0<�69<��0K�69K�<HK�KPK����������������������� �  � �  ��    ��   ��   ��   	�*   	� �   ��   ��   ��   �� 	  �� 
  ��   	�*   	� �    �   !�   �   �   ��   ��   	�*   	� �   ��   ��   ��   �   �   &�   	�*   	� �   2�   3�   4�    5� !  6� "  7� #  	�* $  	� � %  :� &  ;� '  <� (  =� )  >� *  ?� +  	�* ,  	� � -  {� .  	�� /  	�� 0  ~� 1  � 2  �� 3  	�* 4  	� � 5  �� 6  	�� 7  	�� 8  �� 9  �� :  �� ;  	�* <  	� � =  �� >  	�� ?  	�� @  �� A  �� B  �� C  	�* D  	� � E  �� F  	�� G  	�� H  �� I  �� J  �� K  	�* L  	� � M  �� N  	�� O  	�� P  �� Q  �� R  �� S  	�* T  	� � U  �� V  	�� W  	�� X  �� Y  �� Z  �� [  	�* \  	� � ]  �� ^  	�� _  	�� `  �� a  �� b  �� c  	�* d  	� � e  �� f  	�� g  	�� h  �� i  �� j  �� k  	�* l  	� � m  �� n  	�� o  	�� p  �� q  �� r  � s  	�* t  	� � u  �� v  	�� w  	�� x  �� y  �� z  �� {  	� |  	� � }  �� ~  	��   	�� �  �� �  	� �  	� � �  �� �  �� �  �� �  	�� �  	� �  	� � �  �� �  �� �  �� �  �� �  	� �  	� � �  	�� �  �� �  �� �  �� �  	� �  	� � �  �� �  	�� �  	�� �  �� �  	� �  	� � �  �� �  �� �  �� �  	�� �  	� �  	� � �  �� �  �� �  �� �  �� �  	�	� �  	�	� ��  �3 6 I 6 I B I B I   I � J � J
 J
 J � J� K� K� K� K� K� L� L� L� LX LV MV Mb Mb M  M N N* N* N� N� O� O� O� O� O� P� P� P� Px Pv Qv Q� Q� Q@ Q> R> RJ RJ R R S S S S� S� T� T� T� T� T	� U	� U	� U	� U	` U
^ V
^ V
j V
j V
( V& W& W2 W2 W
� W� �� �� �� �� �� � � � � � �� �� �� �� �� �� �� �� �� �� �� �f �f �f �f �e �7 �� �� �� �� �� �� �| �| �| �| �{ �M � � � � � �� �� �� �� �� �� �c �����������������4�4����O�O�a�a�`�`�`�`�U�U�p�p�{�{������������������������������ � � � � � ������##..44<<KKKKGGT	T	\	\	k
k
k
k
g
g
uuuuqqT	4{{�������B�B�B�B�D�C����2K2KKKKKLKLKLKLGLUMUMUMUMQM_N_N_N_N[NJI�BoSoSoSoSoSoS�S�S�S�S�S�S�S�SoSoSoSoS�S�S�S�S�S�S�S�S�S�SoSoS�U�U�UoS� �h �  � 	 
  *�9���**�M��*F��**���Y�S��������~�� <*� ���**���Y*J��**�Ŷ����c��S**� �������Y*���:*�1*N��**���Y�S����Y*N��**�M���x��S��� U� [:�:��:�����   (           ���*�9��� �� � :� �:	���	**�9����� <*� ���**���Y*Y��**�Ŷ����c��S**�����*\��*���YKS�t�@�C��F�� <*� ���**���Y*`��**�Ŷ����c��S**� e����*c��**� U���x**� M���x���C��F�� �*e��**� ������� "*� �*g��**� ����x�ø�*j��**�������� "*��*l��**�����x�ø�*n��**� ������ "*� �*p��**� ���x�ø�*r��**� ������ "*� *t��**� ���x�ø�� <*� ���**���Y*{��**�Ŷ����c��S**�����*�  � � �
  � � �
 � �� ��� �   f 
  ��    ��   ��   ��   �	�   �	�   �	�   	��   ��   �� 	�  B � E E E E  E 
F 
F F F 
F 
F DI DI DI DI @I \J \J \J \J \J \J hJ hJ \J \J nJ nJ nJ nJ JJ 
F �N �N �N �N �N �N �N �N �N �N �NRRRR �R yL%U%U%U%U%U%U9X9X9X9X5XQYQYQYQYQYQY]Y]YQYQYcYcYcYcY?Y%Uu\u\u\u\�\�\�_�_�_�_�_�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`u\�c�c�c�c�c�c�c�c�c�c�c�ceeeeeeeeggggggggge9j9j9j9j9j9j9j9jTlTlTlTlTlTlTlTlIl9jonononononononon�p�p�p�p�p�p�p�ppon�r�r�r�r�r�r�r�r�t�t�t�t�t�t�t�t�t�r�z�z�z�z�z�{�{�{�{�{�{�{�{�{�{{{{{�{�c �h �  '    **� ������n*�}**� U���**� Ѷ����%Y�� =W*���*���Y�S�t�x**�}���x���C��F�~��%�� ]*� E*���**���Y�S����Y*���**�M���x��S��*�}**� E��YSS�ɶ*���**���Y�S��˻�Y��Y�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY�S�Y**�M��SY**�}��SY**� ���SY**�ն�SY**�ٶ�SY**� q��SY**� ��SY**� ��SY**����SY	**� ���SY
�SY**� Ѷ�S���W*�M�*�}�*� Ѳ��*� ��*�ٲ��*�ղ��*� q���*� �*���*���*� *���*���*��*���*���*� �*���*����*���**������� **� �*���*���Y�S�t�x�ø�*���**�������� +*��*���*���Y�S�t�x�ø�*���**�������� **� �*���*���Y�S�t�x�ø�*���**�������� **� *���*���YS�t�x�ø�*�   �   *   ��    ��   ��   �� �  f �  ~  ~  ~  ~  ~  ~ � � � � � � � � � � � � � >� >� >� >� Q� Q� Q� Q� >� >� b� b� >� >� >� >� � � �� �� �� �� �� �� �� �� �� �� v� �� �� �� �� �� �I�I�T�T�_�_�j�j�u�u����������������������������� �� �� ����������������������������������������������������	�	�	�	�������%�%�$�$�$�$��;�;�:�:�:�:�/�Q�Q�P�P�P�P�E�g�g�f�f�f�f�[�|�|�|�|�����{�{�������������������{������������������������������������������� � ���������� �C�C�C�C�M�M�B�B�a�a�a�a�a�a�a�a�V�B�  ~ "h �  "  
  ��Y*���:*� E*��**���Y�S����Y*��**�M���x��S��*�M**� E��Y/S�ɶ* ��**� E��YSS�ɸ@�C��F�� *�}*���Y�S�t�*%��***� E����Ѷ�� *� �**� E��Y�S�ɶ*�ٲ��*�ղ��*� q���*.��***� E������� *� �**� E��Y�S�ɶ*� �**� E��YS�ɶ*� **� E��YS�ɶ*���YS*4��**�a�**�Y**� ��S�2�*��**� E��YS�ɶ**� E�� �*� �**� E��YS�ɶ*��*:��***� ��*�YS��*��*;��***� ��*�YS��*� q*<��***� ��*�YS��*�	**������ �� �:�:��:�!���   W           ���*� ���**���Y*E��**�Ŷ����c��S**������� �� � :� �:	���	*�  ^a
  ^f
 ^��a������� �   f 
  ���    ���   ���   ���   ��	�   ��	�   ��	�   �
�   ���   ��� 	�  � � 9 9 9 9 9 9      R R R R N m  m  m  m  �  �  �# �# �# �# �# m  �% �% �% �% �% �% �% �% �' �' �' �' �' �% �* �* �* �* �* �+ �+ �+ �+ �+ �, �, �, �, �, . . . ... �. �.///// �.01010101,1I3I3I3I3E3s4s4�4�4s4s4s4s4^4�6�6�6�6�6�7�7�7�7�7�7�7�7�7�7�9�9�9�9�9�:�:�:�:�:�:�:�:�:
;
;;;	;	;	;	;�;1<1<B<B<0<0<0<0<%<�7P?P?P?P?L?�D�D�D�D�D�E�E�E�E�E�E�E�E�E�E�E�E�E�E�E   yh �  d  	  :*� 5�**��!��%Y�� W**� �'��%�� ?*� 5**��!�� *���YS�t� *���YS�t�*��**���*,*�Y**� 5��SY*���Y.S�tS�2W*� �*��*46�:�**��<��%Y�� 0W*��*���YS�t�@�C��F�t|�%��)*�q*��*���YS�t�xH�L��**�q���P:66�U 6*W�X:� ��[ N-�-� �*��*!��**�Y���x]�L��*�]*"���a�*�*#��**���C�e�xgi�m�**�]��YoS**����r**�]��YtS**���C�e�r*&��**� ���P**�]���xW`6��1*�   �   \ 	  :��    :��   :��   :��   :�U   :� �   :� �   :� �   :�  �  � �               
 
 
 
 $ $ $ $ ( ( + + # # # # 
 
 ? ? ? ? C C F F > > O O b b > > > > : 
 } } � � � � } } }   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �11= = = = �!�!�!�!�!�!�!�!�!�!{!{!�"�"�"�"�"�"�#�#�#�#�#�#�#�#�#�#�#�#�#�#�#�#�$�$�$�$�$�$%%�%�%�%�%�%�%&&&&&&&&&&5 =  �8*  h �  � 	   b*���*���YKS�t�@�C��F�� K*� ���**���Y*���**�Ŷ����c��S**� e����*�	**�����**� Ѷ����%Y�� .W*¶�*���YSS�t�@�C��F�|�%�� K*� ���**���Y*ƶ�**�Ŷ����c��S**� �����*�	**�����*̶�*���YSS�t�x*���YKS�t�x���C��F�� <*ζ�**� ������� "*� �*ж�**� ����x�ø�� K*� ���**���Y*׶�**�Ŷ����c��S**�����*�	**�����*۶�**�������� "*��*ݶ�**�����x�ø�*߶�**� ������ "*� �*��**� ���x�ø�*��**� ������ "*� *��**� ���x�ø�*�   �   *   b��    b��   b��   b�� �  � � � � � � � � ,� ,� ,� ,� (� D� D� D� D� D� D� P� P� D� D� V� V� V� V� 2� e� e� e� e� a� � p� p� p� p� p� p� p� p� �� �� �� �� �� �� �� �� �� �� p� p� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� p�����������3�3�D�D�D�D�D�D�D�D�_�_�_�_�_�_�_�_�T�D�z�z�z�z�v���������������������������������������������������������������������������������������������������������1�1�1�1�1�1�1�1�L�L�L�L�L�L�L�L�A�1� 
  �   	    � �&�(P�&�R��&����&���&����Y�S����YS���YS�!�(Y�)G�-/�-1�-��-���&��Ը&��I�&�K��&����Y�ųǻ�Y�γл�Y�Y�SY�Y��SY��SSY�SY�S���Ա   �       ���  �     �[ �[ �+ �+ h �  |  
   **� ������c��Y*���:*�}**� U���**� Ѷ����%Y�� =W*��*���Y�S�t�x**�}���x���C��F�~��%�� ]*� E*��**���Y�S����Y*��**�M���x��S��*�}**� E��YSS�ɶ*��**���Y�S��˻�Y��Y�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY�S�Y**�M��SY**�}��SY**� ���SY**�ն�SY**�ٶ�SY**� q��SY**� ��SY**� ��SY**����SY	**� ���SY
�SY**� Ѷ�S���W� �� �:�:��:����      Z           ���*� ���**���Y*��**�Ŷ����c��S**������� �� � :� �:	���	**� ������ �*�M�*�}�*� Ѳ��*� ��*�ٲ��*�ղ��*� q���*� �*��*���*� *��*���*� �*��*���*��*��*���*�  ��
  ��
 �_��\_�_d_� �   f 
   ��     ��    ��    ��    �	�    �	�    �	�    
�    ��    �� 	�  � �  �  �  �  �  �  � !� !� !� !� � ,� ,� ,� ,� ,� ,� ,� ,� K� K� K� K� ^� ^� ^� ^� K� K� o� o� K� K� K� K� ,� ,� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ,�V�V�a�a�l�l�w�w��������������������������������� �� �� ��666666BB66HHHH$ �  �p	p	p	p	p	p	��������������������������������������������������������p	      �   �����  - � 
SourceFile */CFIDE/administrator/security/useredit.cfm 6cfuseredit2ecfm1791926774$funcCONSTRUCTFILEPERMISSIONS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   FILEPERMSSTR  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - getVariable  (I)Lcoldfusion/runtime/Variable; / 0 %coldfusion/runtime/ArgumentCollection 2
 3 1   5 set (Ljava/lang/Object;)V 7 8 coldfusion/runtime/Variable :
 ; 9 _isNull (Ljava/lang/Object;Z)Z = >
   ? _Object (Z)Ljava/lang/Object; A B coldfusion/runtime/Cast D
 E C _boolean (Ljava/lang/Object;)Z G H
 E I _setCurrentLineNo (I)V K L
   M PERMISSIONSOBJ O _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; Q R
   S ArrayLen (Ljava/lang/Object;)I U V coldfusion/runtime/CFPage X
 Y W (I)Ljava/lang/Object; A [
 E \ _compare (Ljava/lang/Object;D)D ^ _
   ` I b _set '(Ljava/lang/String;Ljava/lang/Object;)V d e
   f 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; Q h
   i _String &(Ljava/lang/Object;)Ljava/lang/String; k l
 E m $$$$ o concat &(Ljava/lang/String;)Ljava/lang/String; q r java/lang/String t
 u s OBJ w _arrayGetAt 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; y z
   { TEMPFILE } _get  R
   � get � java/lang/Object � FILENAME � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
   � <,> � 	&lt;,&gt; � ReplaceList J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 Y � ==== � ACTION � '(Ljava/lang/String;I)Ljava/lang/Object; Q �
   � _double (Ljava/lang/Object;)D � �
 E � '(Ljava/lang/Object;Ljava/lang/Object;)D ^ �
   � constructfilepermissions � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � 
Parameters � REQUIRED � false � NAME � permissionsobj � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this 8Lcfuseredit2ecfm1791926774$funcCONSTRUCTFILEPERMISSIONS; LocalVariableTable Code getName ()Ljava/lang/String; getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 1       � �     � �  �   "     � ��    �        � �    � �  �   !     ��    �        � �    � �  �   (     
� uYPS�    �       
 � �    � �  �  Y 	   �+� � :+� ,� :	+� :
-� $� *:-� .:� 4:
6� <-� @�� FY� J� %W-.� N-P� T� Z� ]�� a�t|� F� J�-c� ]� g� �-c� T�� a�� 
-
� j� np� v� <-x-P-c� T� |� g-~-7� N--x� ��� �Y�S� �� g-~-8� N-~� T� n��� �� g
-
� j� n-~� T� n� v� <
-
� j� n�� v� <
-
� j� n-;� N--x� ��� �Y�S� �� n� v� <-c � �� �X-c� T-0� N-P� T� Z� ]� ��t|����-
� j��    �   z   � � �    � � �   � � �   � � �   � � �   � � �   � � �   � + ,   �  �   �  � 	  �  � 
  � O �  �  6 �  + 2+ 4- 6- 6- 6- 6- 4- ;. ;. ;. ;. ;. ;. ;. ;. V. V. V. V. b. b. V. V. V. V. ;. ;. y0 y0 y0 y0 v0 �2 �2 �2 �2 �4 �4 �4 �4 �4 �4 �4 �4 �4 �4 �4 �2 �6 �6 �6 �6 �6 �6 �6 �7 �7 �7 �7 �7 �7 �7 �7 �7 �8 �8 �8 �8 �8 �8 �8 �8 �8 �8 �8 �8 �8 �9 �9 �9 �99999 �9 �9 �9 �9 �9:::::::::::&;&;&;&;7;7;E;E;6;6;6;6;&;&;&;&;$;T0T0T0T0T0T0T0a0a0n0n0n0n0a0a0 v0 ;.�>�>�>�>�>     �   #     *� 
�    �        � �    �   �   e     G� �Y� �Y�SY�SY�SY� �Y� �Y� �Y�SY�SY�SY�S� �SS� �� ��    �       G � �        