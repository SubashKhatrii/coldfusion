����  -� 
SourceFile 3/CFIDE/administrator/extensions/flexintegration.cfm  cfflexintegration2ecfm1313177034  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   KEYSTOREPASSWORD Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   KEYSTOREPWDLABEL   	   JR   	    FDSIP_ERROR_GET " " 	  $ I & & 	  ( CHECKCSRFTOKEN * * 	  , KEYSTOREPATHLABEL . . 	  0 IPS 2 2 	  4 BSEGMENTISINVALID 6 6 	  8 GETADMINVARIANT : : 	  < IP_ERROR_INVALID > > 	  @ CFCATCH B B 	  D GETCSRFTOKEN F F 	  H TOKEN J J 	  L FDSIP_ERROR_REMOVE N N 	  P OLDID R R 	  T IP_ERROR_ADD V V 	  X ERROR_KEYSTOREPASS Z Z 	  \ FORM ^ ^ 	  ` LOG b b 	  d SERVERIDENTITYLABEL f f 	  h AERRORMESSAGES j j 	  l REMOVE_BUTTON n n 	  p ERROR_FLEXASSEMBLER r r 	  t IDENTITY v v 	  x 	DEFAULTID z z 	  | ADMINSUBMIT ~ ~ 	  � REQUEST � � 	  � IPUTILS � � 	  � TMP � � 	  � IPINDEX � � 	  � 
ADD_BUTTON � � 	  � BERRORSEXIST � � 	  � KEYSTORE � � 	  � RESULT � � 	  � NUMSEGMENTS � � 	  � com.macromedia.SourceModTime  d7�5 pageContext #Lcoldfusion/runtime/NeoPageContext; � �	  � getOut ()Ljavax/servlet/jsp/JspWriter; � � javax/servlet/jsp/JspContext �
 � � parent Ljavax/servlet/jsp/tagext/Tag; � �	  � Cp1252 � setPageEncoding (Ljava/lang/String;)V � � !coldfusion/runtime/NeoPageContext �
 � � _setCurrentLineNo (I)V � �
  � GetAuthUser ()Ljava/lang/String; � �
  � matches � java/lang/Object � ^\w$ � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � _boolean (Ljava/lang/Object;)Z � � coldfusion/runtime/Cast �
 � � %class$coldfusion$tagext$net$CookieTag Ljava/lang/Class; coldfusion.tagext.net.CookieTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/net/CookieTag � 30 � 
setExpires (Ljava/lang/Object;)V � �
 � � cfcookie � value � CGI � java/lang/String � SCRIPT_NAME � _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  setValue �
 � setHttpOnly (Z)V	
 �
 name cfadmin_lastpage_ concat &(Ljava/lang/String;)Ljava/lang/String;
 � setName �
 � 	hasEndTag	 coldfusion/tagext/GenericTag
 _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z
  $class$coldfusion$tagext$io$SilentTag coldfusion.tagext.io.SilentTag!  �	 # coldfusion/tagext/io/SilentTag% 
doStartTag ()I'(
&) 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;+,
 - LOCALE/ REQUEST.LOCALE1 en3 checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V56
 7 
LOCALEFILE9 java/lang/StringBuilder; resources/extensions_=  �
<? append -(Ljava/lang/String;)Ljava/lang/StringBuilder;AB
<C .cfmE toStringG �
 �H _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)VJK
 L IPLISTN FORM.IPLISTP  R falseT 2(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)V5V
 W defaultY set[ � coldfusion/runtime/Variable]
^\ _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object;`a
 b getAdminVariantd 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;fg
 h jrunj _compare '(Ljava/lang/Object;Ljava/lang/String;)Dlm
 n &class$coldfusion$tagext$lang$ObjectTag  coldfusion.tagext.lang.ObjectTagqp �	 s  coldfusion/tagext/lang/ObjectTagu createw 	setActiony �
vz java| setType~ �
v jrunx.kernel.JRun� setClass� �
v� jr�
v getServerName� FORM.IDENTITY� 	defaultID� ArrayNew (I)Ljava/util/List;��
 � _Array 2(Ljava/lang/Object;)Lcoldfusion/runtime/FastArray;��
 �� setArray !(Lcoldfusion/runtime/FastArray;)V��
^� REMOVE� FORM.REMOVE�  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z��
 � _Object (Z)Ljava/lang/Object;��
 �� RESTRICTEDIPLIST� FORM.RESTRICTEDIPLIST� ADD� FORM.ADD� isDefinedCanonicalVariable  (Lcoldfusion/runtime/Variable;)Z��
 � IPTOBEADDED� FORM.IPTOBEADDED� Trim�
 � Len (Ljava/lang/Object;)I��
 � (I)Ljava/lang/Object;��
 �� 	CSRFTOKEN� FORM.CSRFTOKEN� checkCSRFToken� _autoscalarize�a
 � DATASERVTABKEYNAME� _factor4 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object;��
 � *coldfusion/runtime/TransientVariableHolder� &(Lcoldfusion/runtime/NeoPageContext;)V �
�� (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag�� �	 � "coldfusion/tagext/lang/ImportedTag� l10n� 
../cftags/� admin� :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V�
�� &coldfusion/runtime/AttributeCollection� id� error_req_keystore_pass� var� error_keystorepass� ([Ljava/lang/Object;)V �
�� setAttributecollection (Ljava/util/Map;)V��  coldfusion/tagext/lang/ModuleTag�
��
�) ;
    You must provide a keystore file and a password
    � write� � java/io/Writer�
�� doAfterBody (
� _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;
  doEndTag( #javax/servlet/jsp/tagext/TagSupport	

 doCatch (Ljava/lang/Throwable;)V
� 	doFinally 
� User  X changed Flex integration settings. The old values were Enable Flash Remoting support :  RUNTIME _resolve �
  isEnabledFlashRemoting 8, Enable Remote Adobe LiveCycle Data Management access:  isEnabledFlexDataServices  ,, Enable RMI over SSL for Data Management : " isEnabledRmiSSL$ ". Enable Flash Remoting support : & ENABLEFLASHREMOTING( FORM.ENABLEFLASHREMOTING* (Z)Ljava/lang/String; �,
 �- ENABLEFLEXASSEMBLER/ FORM.ENABLEFLEXASSEMBLER1 ENABLERMISSL3 FORM.ENABLERMISSL5 getDataServiceId7 '(Ljava/lang/Object;Ljava/lang/Object;)Dl9
 : setDataServiceId< setEnableFlexDataServices> coldfusion/runtime/CFBoolean@ f_false Lcoldfusion/runtime/CFBoolean;BC	AD t_trueFC	AG FORM.KEYSTOREPASSWORDI STATICPASSWORDK setKeystorePasswordM _factor0O�
 P FORM.KEYSTORER setKeystoreT getKeystoreV (Ljava/lang/Object;D)DlX
 Y getKeystorePassword[ setEnableRmiSSL] _List $(Ljava/lang/Object;)Ljava/util/List;_`
 �a ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Zcd
 e setEnableFlashRemotingg unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;ij coldfusion/runtime/NeoExceptionl
mk t36 [Ljava/lang/String; Anyqop	 s findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)Iuv
mw bind '(Ljava/lang/String;Ljava/lang/Object;)Vyz
�{ $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag~} �	 � coldfusion/tagext/io/OutputTag�
�) error_flexassembler� 7
					Error attempting to update settings:<br/>
					� MESSAGE� D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; ��
 � EncodeForHTML�
 � <br/>
					� DETAIL� 
				� _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V��
 �
� coldfusion/tagext/QueryLoop�
�
�
� unbind� 
�� _factor1��
 � #class$coldfusion$tagext$lang$LogTag coldfusion.tagext.lang.LogTag�� �	 � coldfusion/tagext/lang/LogTag� audit� setFile� �
�� setApplication�	
�� cflog� text� setText� �
��[ �
^� Java� coldfusion.util.IPAddressUtils� ipUtils� validateIPAdress� ip_error_invalid� #
				The IP you attempted to add (�) is not valid.
				IPs are four sets of numbers from 0 to 255 separated by periods (e.g., 127.0.0.1) in IPv4 addressing format
				or eight sets of hexadecimal numbers from 0 to FFFF seperated by colon (e.g., 0:0:0:0:0:0:0:1) in IPv6 addressing format.
			� ArrayLen��
 � (D)Ljava/lang/Object;��
 �� _arraySetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V��
 � [\+[:space:]\-]*� ALL� 	REReplace�
 � FLEXASSEMBLERIPLIST� ,� 
ListAppend J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;��
 � t37�p	 � ip_error_add� %
						The IP you attempted to add (�) is not valid.
						IPs are four sets of numbers from 0 to 255 separated by periods (e.g., 127.0.0.1) in IPv4 addressing format
						or eight sets of hexadecimal numbers from 0 to FFFF seperated by colon (e.g., 0:0:0:0:0:0:0:1) in IPv6 addressing format. <br/>
						�  <br />
						� 
					� _factor2��
 �  added ip address � + where LiveCycle Data Services are running'� _int��
 �� 	ListGetAt '(Ljava/lang/String;I)Ljava/lang/String;��
 � ListFindNoCase '(Ljava/lang/String;Ljava/lang/String;)I
  ListDeleteAt�
  _double (Ljava/lang/Object;)D	
 �
 ListLen (Ljava/lang/String;)I
  t38p	  fdsip_error_remove 
				An error occurred attempting to remove the requested IP(s).
				from the Flex Data Management configuration.<br />
				  <br />
				 
			 _factor3�
  t39p	  fdsip_error_get! �
				An error occurred attempting to retrieve a list of restricted IP addresses
				from the Flex Data Management configuration.<br />
				# <br />
				% _factor5'�
 ( cfusion*


 



/ flex_pagename1 pagename3 Flex integration5 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTag87 �	 : !coldfusion/tagext/lang/IncludeTag< ../header.cfm> setTemplate@ �
=A 	_factor10C�
 D )class$coldfusion$tagext$html$form$FormTag #coldfusion.tagext.html.form.FormTagGF �	 I #coldfusion/tagext/html/form/FormTagK FlexM
L cfformP actionR
Lz POSTU 	setMethodW �
LX
L) ../include/margintop.cfm[ ../include/errors.cfm] 

<h2 class="pageHeader">_ pageHeader_flexintegrationa Flex Integrationc 	</h2>

e x
<table>
	<tr><td height="15px"></td></tr>
	<tr>
	<td class="px500">
	<input type="hidden" name="csrftoken" value="g getCSRFTokeni �">	
	<table><tr><td width="15px">
		<input name="EnableFlashRemoting"  type="CHECKBOX" class="text" value="true" id="EnableFlashRemoting" k checkedm 6>
		</td><td>
		<b><label for="EnableFlashRemoting">o enableFlashRemq Enable Flash Remotings g</label></b>
		</td></tr><tr><td></td><td>
		<div class="description">
		<font class="sentance">
		u enableFlashRem_descw
			<span class="admin-tip">
			Lets a Flash client connect to this ColdFusion server and invoke ColdFusion Components (CFCs).
			</span>
			NOTE: <span class="admin-tip">Disabling this feature also disables ColdFusion server monitoring and multiserver monitoring.</span>
		y �
		</font>
		</div>
		</td></tr></table>
	</td>
	<td class="px500">
	<table><tr><td width="15px">
		<input name="EnableFlexAssembler" type="CHECKBOX" class="text" value="true" id="EnableFlexAssembler" { 6>
		</td><td>
		<b><label for="EnableFlexAssembler">} enableFlexDS 4Enable Remote Adobe LiveCycle Data Management access� enableFlexDS_desc�]
		<span class="admin-tip">
			Lets LiveCycle Data Services ES connect to this ColdFusion server through RMI
			and use CFCs to read and update data that supports a
			Flex application. If you are not using this feature, disable it.
			This does not affect LiveCycle Data Services ES integrated in to the ColdFusion installation.
		</span>
		� �
		</font>
		</div>
		</td></tr></table>
	</td>
	</tr>
</table>
	<p>
		<table>
		<tr>
			<td width="140px"><label for="identity" class="label-bold">� serverIdentityLabel� Server Identity� _factor6��
 � 5:</label></td>
			<td><input name="identity" title="� "  type="text" value="� EncodeForHTMLAttribute�
 � �" size="30" mansize="50" id="identity"></td>
		</tr>
		</table>
		<div class="spacer10"></div>
		<span class="admin-tip">
		� serverIdentity_info� �
			If you are running more than one instance of ColdFusion on this machine, you must
			configure each instance with a unique ID.
		� �
		</span>
		<div class="spacer20bottom"></div>
	</p>

	<p>
		<input name="EnableRmiSSL" type="CHECKBOX" class="text" value="true" id="EnableRmiSSL" � <>

		<label for="enable">
		<b><label for="EnableRmiSSL">� enablermissl� 'Enable RMI over SSL for Data Management� K</label></b>
		<div class="spacer10"></div>
		<font class="sentance">
		� enablermissl_desc��
		<span class="admin-tip">
			Lets you use Secure Socket Layer (SSL) encryption for the RMI communication between Flex and ColdFusion.
			This is not required unless you are transmitting authentication information or confidential
			data between Flex and ColdFusion over an unsecured network. You must provide a keystore file and keystore password.
			For instructions on how to create a keystore file, see the online Help.
		</span>
		� �
		</font>
		<div class="spacer10"></div>
		<table width="100%">
		<tr>
			<td class="px500"><label for="keystore" class="label-bold">� keystorePathLabel� Full path to keystore� 9:&nbsp;&nbsp;&nbsp;</label><input name="keystore" title="� " type="text" value="� _factor7��
 � 
ESAPIUTILS� encodeForHTMLAttributeFilePath� p" size="50" id="keystore" style=""></td>
			<td class="px500"><label for="keystorepassword" class="label-bold">� keystorePwdLabel� Keystore password� A:&nbsp;&nbsp;&nbsp;</label><input name="keystorepassword" title="� " type="password" value="� �" size="20" maxlength="50" id="keystorepassword" autocomplete="off"></td>
		</tr>
		</table>
	</p>
<hr class="line">

<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
	<td>
		<b class="subheading">� selectIP� =Select IP addresses where LiveCycle Data Services are running� C</b>
	</td>
</tr>
<tr><td height="10px"></td></tr>
<tr>
<td>
� fdsip_welcometext�Q
To secure the LiveCycle Data Services ES integration point,
the hosts that are allowed to perform Data Management operations are restricted.
If you are running LiveCycle Data Services ES on a different computer, specify its IP address here.
By default, only the local computer can perform Data Management operations in ColdFusion.
� �
</td>
</tr>
<tr><td height="10px"></td></tr>
<tr>
	<td>
		
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td>
				<label for="ipaddress" class="labelbold">� 
ip_address� 
IP Address� |</label>
				<input type="text" maxlength="50" name="IPToBeAdded" size="20" id="ipaddress" style="margin-left: 80px">
				� 
add_button� Add� _factor8��
 � "
				<input type="submit" title="� " name="Add" value="  � �  " class="buttn-grey buttn-green">
			</td>
		</tr>
		</table>
		
	</td>
</tr>
</table>
<hr class="line">

<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
	<td>
		<b><label for="removelist" class="subheading">� fdsviewdeleteIP� QView or Remove selected IP addresses where LiveCycle Data Services ES are running�</label></b>
	</td>
</tr>
<tr><td height="10px"></td></tr>
<tr>
	<td>
		
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td width="300px">
				<select name="RestrictedIPList"  id="removelist" size="4" multiple style="width:20em">
					� P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; �
 � java/util/StringTokenizer� '(Ljava/lang/String;Ljava/lang/String;)V �
�� 	nextToken� �
�� 
						<option value="� ">� </option>
					� CFLOOP� checkRequestTimeout  �
  hasMoreTokens ()Z
� J
				</select>
			</td>
			<td>
				<div class="spacer10"></div>
				 remove_button	 Remove Selected 1
				<input name="Remove"  type="submit" value=" u" class="buttn-grey" id="removelist">
			</td>
		</tr>
		</table>
		
	</td>
</tr>
</table>
<br />
<br />

 _factor9�
  


 ../include/marginbottom.cfm 
<table align="center">
 ../include/buttonbar.cfm 
</table>

<br><br>



L
L
L
L ../footer.cfm" metaData Ljava/lang/Object;$%	 & 	Functions( 
Properties* getMetadata ()Ljava/lang/Object; this "Lcfflexintegration2ecfm1313177034; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; __factorParent out Ljavax/servlet/jsp/JspWriter; cookie0 !Lcoldfusion/tagext/net/CookieTag; silent20  Lcoldfusion/tagext/io/SilentTag; mode20 t7 t8 t9 Ljava/lang/Throwable; t10 t11 t12 t13 t14 module21 $Lcoldfusion/tagext/lang/ImportedTag; mode21 t17 t18 t19 t20 t21 t22 	include22 #Lcoldfusion/tagext/lang/IncludeTag; LineNumberTable java/lang/ThrowableS module35 mode35 t6 module36 mode36 t15 t16 module37 mode37 t23 t24 t25 t26 t27 module38 mode38 t30 t31 t32 t33 t34 t35 module39 mode39 t40 t41 t42 t43 	include23 	include24 module25 mode25 output42  Lcoldfusion/tagext/io/OutputTag; mode42 module40 mode40 Ljava/lang/String; t28 t29 Ljava/util/StringTokenizer; module41 mode41 module26 mode26 module27 mode27 module28 mode28 module29 mode29 module30 mode30 module31 mode31 module32 mode32 module33 mode33 module34 mode34 t4 ,Lcoldfusion/runtime/TransientVariableHolder; module6 mode6 #Lcoldfusion/runtime/AbortException; Ljava/lang/Exception; __cfcatchThrowable0 output8 mode8 module7 mode7 !coldfusion/runtime/AbortException� java/lang/Exception� runPage form45 %Lcoldfusion/tagext/html/form/FormTag; mode45 	include43 	include44 	include46 object4 "Lcoldfusion/tagext/lang/ObjectTag; log9 Lcoldfusion/tagext/lang/LogTag; log15 __cfcatchThrowable3 output19 mode19 module18 mode18 object10 output12 mode12 module11 mode11 __cfcatchThrowable1 output14 mode14 module13 mode13 <clinit> t5 __cfcatchThrowable2 output17 mode17 module16 mode16 1     1                 "     &     *     .     2     6     :     >     B     F     J     N     R     V     Z     ^     b     f     j     n     r     v     z     ~     �     �     �     �     �     �     �     �     �     � �     �   p �   � �   op   } �   � �   �p   p   p   7 �   F �   $%    ,- 1   "     �'�   0       ./      1  �    �*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )**++,� � -**/+,� � 1**3+,� � 5**7+,� � 9**;+,� � =**?+,� � A**C+,� � E**G+,� � I**K+,� � M**O+,� � Q**S+,� � U**W+,� � Y**[+,� � ]**_+,� � a**c+,� � e**g+,� � i**k+,� � m**o+,� � q**s+,� � u**w+,� � y**{+,� � }**+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � ��   0       �./    �23   �45     1   #     *� 
�   0       ./   C� 1  = 	   �*� �**� �*� ��� �Y�S� и ֙ o*� �+� �� �:*� �� ���*�� �Y�S� �� ����*� �*� ƶ����� �*�$+� ��&:*� ���*Y6��*,�.M*,��� :�����*,�)� :�����*� �* � �**�� �YS�W� ʶ ж_*� S�_* � �* � �**�� �YS�\� ʶ и�����Z�� *� *�� �YLS� ��_*� y* � �**�� �YS�8� ʶ ж_* � �**� =�ce*� ʸik�o�� �**� y��Z�o�~���Y� ֚ 8W**� y��+�o�~���Y� ֙ W**� }��+�o�~��� ֙ F*� y**� }�ɶ_*� �* � �**�� �YS�=� �Y**� }��S� ж_�,��`� � :	� 	�:
*,�M�
�� :� #�� � #:�-� � :� �:�.�*,0��*��+� ���:* �� ��������Y� �Y�SY2SY�SY4S������Y6� 6*,�.M,6������� � :� �:*,�M��� :� #�� � #:�� � :� �:��*�;+� ��=:* �� �?�B��� �*�  � �hT � �hT �ehThmhT � ��T � ��T ���T���T � ��T � ��T ���T���T���T���T69T9>9TYeT_beTYtT_btTeqtTtytT 0   �   �./    �6 �   �78   � �%   �9:   �;<   �= &   �>%   �?%   �@A 	  �B% 
  �C%   �DA   �EA   �F%   �GH   �I &   �JA   �K%   �L%   �MA   �NA   �O%   �PQ R  � s                8  8  C  C  C  C  i  i  q  q  q  q  i  i  #    � � � � � � � � � � � � � � � � � �. �. �. �. �O �O �] �] �] �] �Y �Y �. �{ �{ �{ �{ �p �p �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � �� �� �� �� �� �� �� �� �� �� � � � � � � �K �K �1 �1 �1 �1 �& �& �� �� � � � �� �� �� �� �� �� �� � �� 1   	 ,  ],*N� �**�� �Y�S��� �Y**� ���S� и ��,���*��#+� ���:*O� ��������Y� �Y�SY�SY�SY�S������Y6� 6*,�.M,�������� � :� �:*,�M��� :� #�� � #:		�� � :
� 
�:��,**� �ɸ ��,ö�,**� �ɸ ��,Ŷ�,**� �ɸ ��,Ƕ�*��$+� ���:*X� ��������Y� �Y�SY�S������Y6� 6*,�.M,˶������ � :� �:*,�M��� :� #�� � #:�� � :� �:��,Ͷ�*��%+� ���:*^� ��������Y� �Y�SY�S������Y6� 6*,�.M,Ѷ������ � :� �:*,�M��� :� #�� � #:�� � :� �:��,Ӷ�*��&+� ���:*m� ��������Y� �Y�SY�S������Y6� 6*,�.M,׶������ � :� �:*,�M��� : � # �� � #:!!�� � :"� "�:#��#,ٶ�*��'+� ���:$*o� �$�����$��Y� �Y�SY�SY�SY�S���$�$��Y6%� 6*$%,�.M,ݶ�$����� � :&� &�:'*%,�M�'$�� :(� #(�� � #:)$)�� � :*� *�:+$��+*� ( � � �T � � �T � � �T � � �T � � �T � � �T � � �T � � �T���T���T���T���T���T���T���T���T\x{T{�{TQ��T���TQ��T���T���T���T <?T?D?T_kTehkT_zTehzTkwzTzzT�TT�/;T58;T�/JT58JT;GJTJOJT 0  � ,  ]./    ]6 �   ]78   ] �%   ]UH   ]V &   ]WA   ]>%   ]?%   ]@A 	  ]BA 
  ]C%   ]XH   ]Y &   ]FA   ]Z%   ][%   ]JA   ]KA   ]L%   ]\H   ]] &   ]OA   ]^%   ]_%   ]`A   ]aA   ]b%   ]cH   ]d &   ]eA   ]f%   ]g%    ]hA !  ]iA "  ]j% #  ]kH $  ]l & %  ]A &  ]% '  ]m% (  ]nA )  ]oA *  ]p% +R   � ) "N "N N N N N  N rO rO ~O ~O ;OOOOOOOOOOO1O1O1O1O0O}X}XFXA^A^
^mm�m�o�o�o�o�o � 1    ,  9*�;+� ��=:* �� �\�B��� �*�;+� ��=:* �� �^�B��� �,`��*��+� ���:* �� ��������Y� �Y�SYbS������Y6� 6*,�.M,d������� � :� �:	*,�M�	�� :
� #
�� � #:�� � :� �:��,f��*��*+� ���:* �� ����Y6��*,��� :���*,��� :���*,��� :���,��,**� ��ɸ ��,��,**� ��ɸ ��,��*��(� ���:*}� ��������Y� �Y�SY�S������Y6� 6*,�.M,������� � :� �:*,�M��� :� &���� � #:�� � :� �:��,��**� 5�ɸ :�:6*'��:��Y��:� N��N-�_,���,**� )�ɸ ��,���,**� )�ɸ ��,�����`6����,��*��)� ���: *�� � ����� ��Y� �Y�SY
SY�SY
S��� � ��Y6!� 6* !,�.M,�� ����� � :"� "�:#*!,�M�# �� :$� &� �$�� � #:% %�� � :&� &�:' ��',��,**� q�ɸ ��,������R��� :(� #(�� � #:))��� � :*� *�:+���+*� ( � � �T � � �T � � T � � T � �T � �T TT,/T/4/TR^TX[^TRmTX[mT^jmTmrmTl��T���Ta��T���Ta��T���T���T���TC\TbpTv�T�RTX�T�TTC\&Tbp&Tv�&T�R&TX�&T�&T&T#&T&+&T 0  � ,  9./    96 �   978   9 �%   9qQ   9rQ   9sH   9t &   9?A   9@% 	  9B% 
  9CA   9DA   9E%   9uv   9w &   9[%   9J%   9K%   9xH   9y &   9NA   9O%   9^%   9_A   9`A   9a%   9bz   9{z   9| &   9e    9f}   9~H    9 & !  9iA "  9j% #  9o% $  9�A %  9A &  9% '  9m% (  9nA )  9oA *  9p% +R   � 1  �  �   � F � F � . � � � � � c ��p�p�p�p�p�p�p�p�p�p�}�}�}�������������������������������E�E�Q�Q������������' � �� 1    ,  �,h��,*� �**� I�cj*� �Y*�� �Y�S� �S�i� ��,l��*� �**�� �YS�� ʶ и ֙ 
,n��,p��*��+� ���:*� ��������Y� �Y�SYrS������Y6� 6*,�.M,t������� � :� �:*,�M��� :� #�� � #:		�� � :
� 
�:��,v��*��+� ���:*
� ��������Y� �Y�SYxS������Y6� 6*,�.M,z������� � :� �:*,�M��� :� #�� � #:�� � :� �:��,|��*� �**�� �YS�!� ʶ и ֙ 
,n��,~��*��+� ���:*� ��������Y� �Y�SY�S������Y6� 6*,�.M,�������� � :� �:*,�M��� :� #�� � #:�� � :� �:��,v��*��+� ���:*� ��������Y� �Y�SY�S������Y6� 6*,�.M,�������� � :� �:*,�M��� : � # �� � #:!!�� � :"� "�:#��#,���*��+� ���:$*-� �$�����$��Y� �Y�SY�SY�SY�S���$�$��Y6%� 6*$%,�.M,���$����� � :&� &�:'*%,�M�'$�� :(� #(�� � #:)$)�� � :*� *�:+$��+*� ( � � �T � � �T �	TT �	$T$T!$T$)$T���T���T���T���T���T���T���T���T���T���T}��T���T}��T���T���T���TLhkTkpkTA��T���TA��T���T���T���T8;T;@;T[gTadgT[vTadvTgsvTv{vT 0  � ,  �./    �6 �   �78   � �%   ��H   �� &   �WA   �>%   �?%   �@A 	  �BA 
  �C%   ��H   �� &   �FA   �Z%   �[%   �JA   �KA   �L%   ��H   �� &   �OA   �^%   �_%   �`A   �aA   �b%   ��H   �� &   �eA   �f%   �g%    �hA !  �iA "  �j% #  ��H $  �� & %  �A &  �% '  �m% (  �nA )  �oA *  �p% +R   �     ! !      I I I � � xs
s
<
mm611��-�---�- �� 1    $  �,**� i�ɸ ��,���,**� i�ɸ ��,���,*.� �**� y�ɸ ����,���*��+� ���:*3� ��������Y� �Y�SY�S������Y6� 6*,�.M,�������� � :� �:*,�M��� :� #�� � #:		�� � :
� 
�:��,���*<� �**�� �YS�%� ʶ и ֙ 
,n��,���*�� +� ���:*?� ��������Y� �Y�SY�S������Y6� 6*,�.M,�������� � :� �:*,�M��� :� #�� � #:�� � :� �:��,���*��!+� ���:*B� ��������Y� �Y�SY�S������Y6� 6*,�.M,�������� � :� �:*,�M��� :� #�� � #:�� � :� �:��,���*��"+� ���:*N� ��������Y� �Y�SY�SY�SY�S������Y6� 6*,�.M,�������� � :� �:*,�M��� : � # �� � #:!!�� � :"� "�:#��#,**� 1�ɸ ��,���,**� 1�ɸ ��,���*�   � � �T � � �T � � �T � � �T � � �T � � �T � � �T � � �T���T���T���T���T���T���T���T���T\x{T{�{TQ��T���TQ��T���T���T���T,HKTKPKT!kwTqtwT!k�Tqt�Tw��T���T 0  j $  �./    �6 �   �78   � �%   ��H   �� &   �WA   �>%   �?%   �@A 	  �BA 
  �C%   ��H   �� &   �FA   �Z%   �[%   �JA   �KA   �L%   ��H   �� &   �OA   �^%   �_%   �`A   �aA   �b%   ��H   �� &   �eA   �f%   �g%    �hA !  �iA "  �j% #R   � . - - - -  - . . . . . 4. 4. 4. 4. 4. 4. 4. 4. ,. �3 �3 L3<<<}?}?F?ABAB
BNNNN�N�N�N�N�N�N�N�N�N�N�N O� 1  I    �*� e*7� �*� ƶ�*7� �**�� �YS�� ʶ и ��*7� �**�� �YS�!� ʶ и �#�*7� �**�� �YS�%� ʶ и �'�**� a)+���.��**� a02���.�#�**� a46���.��_*� e**� e�ɶ_*� U*9� �**�� �YS�8� ʶ ж_**� U��*_� �YwS� ��;�~� _*;� �**�� �YS�=� �Y*_� �YwS� �S� �W*=� �**�� �YS�?� �Y�ES� �W**� a02��� ]*C� �**�� �YS�!� ʶ и ��� +*D� �**�� �YS�?� �Y�HS� �W� R*G� �**�� �YS�!� ʶ и ֙ +*H� �**�� �YS�?� �Y�ES� �W**� aJ����Y� ֙ -W*_� �YS� �*�� �YLS� ��;�~��� ֙ 7*N� �**�� �YS�N� �Y*_� �YS� �S� �W*�   0   *   �./    �6 �   �78   � �% R  6 �  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7   7   7   7   7  7  7  7  7 A 7 A 7  7  7  7  7 M 7 M 7 M 7 M 7  7  7  7  7 n 7 n 7  7  7  7  7 z 7 z 7 z 7 z 7  7  7  7  7 � 7 � 7  7  7  7  7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7  7  7  7  7 � 7 � 7  7  7  7  7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7  7  7  7  7 � 7 � 7  7  7  7  7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7  7  7  7  7   7 � 7 � 7 � 7 � 7   7 9 9 9 9 � 9# :# :+ :+ :# :# :d ;d ;J ;J ;J ;� =� =~ =~ =~ =# :� A� A� A� A� A� A� A� A� A� A� C� C� C� C� C� C� D� D� D� D� D� C G GL HL H2 H2 H2 H G� AU MU MU MU MY MY M[ M[ MT MT MT MT Ml Ml M{ M{ Ml Ml Ml Ml MT MT M� N� N� N� N� NT M �� 1  	�  !  ���Y*� ���:*��+� ���:*2� ��������Y� �Y�SY�SY�SY�S������Y6� 6*,�.M,�������� � :� �:*,�M��� :	� &�	�� � #:

�� � :� �:��*+,�Q� :���**� a�S��� 7*Q� �**�� �YS�U� �Y*_� �Y�S� �S� �W**� a46��� �*T� �*T� �**�� �YS�W� ʶ и�����Z�t|��Y� ֙ ?W*T� �*T� �**�� �YS�\� ʶ и�����Z�t|��� ֙ .*U� �**�� �YS�^� �Y�HS� �W� 3*� ��H�_*� �*X� �**� m�ɸb**� ]�ɸf���_� +*[� �**�� �YS�^� �Y�ES� �W**� a)+��� 4*`� �**�� �YS�h� �Y�HS� �W� +*b� �**�� �YS�h� �Y�ES� �W��:�:�n:�t�x�   �           C�|*� ��H�_*��+� ���:*h� ����Y6�-*��� ���:*i� ��������Y� �Y�SY�SY�SY�S������Y6� �*,�.M,���,*k� �**� E� �Y�S��� ����,���,*l� �**� E� �Y�S��� ����*,�������� � :� �:*,�M��� :� )� i� ��� � #:�� � :� �:���������� :� &� f�� � #:��� � :� �:���*� �*o� �**� m�ɸb**� u�ɸf���_� �� � :� �: ��� *� % j � �T � � �T _ � �T � � �T _ � �T � � �T � � �T � � �Ts��T���ThTTh&T&T#&T&+&T
ZTNZTTWZT
iTNiTTWiTZfiTiniT  ��� � ��� ����  ��� � ��� ����  ��T � ��T ���T��TN�TT��T���T 0  L !  �./    �6 �   �78   � �%   ���   ��H   �� &   �>A   �?%   �@% 	  �BA 
  �CA   �D%   �E%   �F�   �Z�   ��A   ��v   �� &   ��H   �� &   �NA   �O%   �^%   �_A   �`A   �a%   �b%   �{A   �|A   �e%   �fA   �g%  R  J � C 2 C 2 O 2 O 2  2 � P � P � P � P � P � P � P � P � P � P Q Q Q Q Q � P0 S0 S0 S0 S4 S4 S7 S7 S/ S/ SL TL TL TL Tm Tm TL TL TL TL T� T� T� T� T� T� T� T� T� T� TL TL T� U� U� U� U� U� W� W� W� W� W X X X X X X X X X X� XL TB [B [( [( [( [/ SK _K _K _K _O _O _R _R _J _J _{ `{ `a `a `a `� b� b� b� b� bJ _ � 5� g� g� g� g� g� gL iL iX iX i� k� k� k� k� k� k� k� k� k� l� l� l� l� l� l� l� l� l i� h� o� o� o� o� o� o� o� o� o� oz oz o   1 �- 1  Q 	   �*� �� �L*� �N*� ��� �*-+�E� �*�J--� ��L:* �� �N�OQS*�� �Y�S� �� ��TV�Y��ZY6� �*+�.L*+�� :� �� ��*+��*�;+� ��=:*�� ��B��� :� f� ��+��*�;,� ��=:	*�� �	�B	�	�� :
� &� ^
�+�����\� � :� �:*+�L��� :� #�� � #:� � � :� �:�!�*�;.-� ��=:*�� �#�B��� ��  z �1T � �1T �1T.1T161T o �]T � �]T �]TQ]TWZ]T o �lT � �lT �lTQlTWZlT]ilTlqlT 0   �   �./    �78   � �%   � � �   ���   �� &   �W%   ��Q   �?%   ��Q 	  �B% 
  �CA   �D%   �E%   �FA   �ZA   �[%   ��Q R   N  : � : � H � H � H � H � c � c � �� �� �� �� �� �� " �����}�   �� 1  �    .**� �024�8*�� �Y:S�<Y>�@*�� �Y0S� �� �DF�D�I�M**� aOQS�8**� �U�X*� }Z�_*� �**� =�ce*� ʸik�o�� g*�t+� ��v:*� �x�{}����������� �*� }*� �***� !�c�� ʶ ж_**� aw���8*� m*� �*������**� a������Y� ֚ W**� a������Y� ֚ W**� a������Y� ֚ W**� �����Y� ֚ EW**� a������Y� ֙ ,W*#� �*#� �*_� �Y�S� �� ������� ֙ m*� MS�_**� a�Ķ�� *� M*_� �Y�S� ��_*+� �**� -�c�*� �Y**� M��SY*�� �Y�S� �S�iW*�   0   4   ../    .6 �   .78   . �%   .�� R  b �                              "  "  (  (  (  (  >  >              K  K  K  K  O  O  R  R  U  U  J  J  J  \  \  \  \  `  `  [  [  [  j  j  j  j  f  f  v  v  v  v  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  v  �  �  �  �  �  �  �  �    �  �  �          " " " "" "" "% "% " " " " "7 "7 "7 "7 "; "; "> "> "6 "6 "6 "6 " " " " "P "P "P "P "T "T "W "W "O "O "O "O " " " " "i "i "i "i "h "h "h "h " " " " "| #| #| #| #� #� #� #� #{ #{ #{ #{ #� #� #� #� #� #� #� #� #� #� #{ #{ #{ #{ # # #� &� &� &� &� &� '� '� '� '� '� '� '� '� '� '� )� )� )� )� )� '� +� + + + + +� +� +� + " ! '� 1   
   �**� ���� \*+,��� �*��	+� ���:*r� ��������**� e�ɸ ������ �**� a������Y� ֚ EW**� a������Y� ֙ ,W*v� �*v� �*_� �Y�S� �� ������� ֙ �*+,��� �*��+� ���:* �� ���������<Y�@* �� �*� ƶD��D*_� �Y�S� �� �D��D�I������ �**� a������Y� ֙ W**� a������� ֙ *+,�� ���Y*� ���:*� 5*�� �YSY�S� ��_��:�:�n:		� �x�   �           C	�|*� ��H�_*��+� ���:
* Ҷ �
�
��Y6�0*��
� ���:* Ӷ ��������Y� �Y�SY"SY�SY"S������Y6� �*,�.M,$��,* ֶ �**� E� �Y�S��� ����,&��,* ׶ �**� E� �Y�S��� ����*,������� � :� �:*,�M��� :� )� i� ��� � #:�� � :� �:��
�����
��� :� &� o�� � #:
��� � :� �:
���**� m� �Y* ۶ �**� m�ɸχc��S**� %�ɶ֧ �� � :� �:���*� }��T���Tr#T #Tr2T 2T#/2T272TfTZfT`cfTuTZuT`cuTfruTuzuT�����������T��TZ�T`��T���T 0     �./    �6 �   �78   � �%   ���   ���   �W�   �>�   �?�   ��A 	  ��v 
  �� &   ��H   �� &   �FA   �Z%   �[%   �JA   �KA   �L%   �M%   �NA   �OA   �^%   �_A   �`% R  r �  0  0  0  0   0   0 . r . r B r B r B r B r  r   0 e v e v e v e v i v i v l v l v d v d v d v d v ~ v ~ v ~ v ~ v � v � v � v � v } v } v } v } v � v � v � v � v � v � v � v � v � v � v } v } v } v } v d v d v � � � �  �  � � � � � � � � � � �0 �0 � � � � � � � d vQ �Q �Q �Q �U �U �X �X �P �P �P �P �j �j �j �j �n �n �q �q �i �i �i �i �P �P �P �� �� �� �� �� �� �� �� �� �� �� �� �V �V �b �b �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � �� 1  
�  '  .*� ���*� 9�E�_*�t
+� ��v:*z� ����x�{¶�Ķ���� �*{� �***� ��c�� �Y*{� �*_� �Y�S� �� ��S� и ��� *� 9�H�_**� 9�ɸ ֙�*� ��H�_*��+� ���:* �� ����Y6� *��� ���:* �� ��������Y� �Y�SY�SY�SY�S������Y6� ^*,�.M,ʶ�,* �� �*_� �Y�S� �� ����,̶����̨ � :	� 	�:
*,�M�
�� :� &� c�� � #:�� � :� �:��������� :� #�� � #:��� � :� �:���**� m� �Y* �� �**� m�ɸχc��S**� A�ɶ֧�*_� �Y�S* �� �*_� �Y�S� �� �SڸݶM��Y*� ���:*� 5*�� �YSY�S� ��_**� 5��� D*�� �YSY�S* �� �**� 5�ɸ *_� �Y�S� �� ��M�0�6:�:�n:��x�             C�|*��+� ���:* �� ����Y6�X*��� ���:* �� ��������Y� �Y�SY�SY�SY�S������Y6� �*,�.M,��,* �� �*_� �Y�S� �� ����,��,* �� �**� E� �Y�S��� ����,��,* �� �**� E� �Y�S��� ����*,�����w� � :� �:*,�M��� :� )� i� ��� � #:�� � :� �: �� �������� :!� &� o!�� � #:""��� � :#� #�:$���$**� m� �Y* �� �**� m�ɸχc��S**� Y�ɶ֧ �� � :%� %�:&���&*� '?��T���T4��T���T4��T���T���T���T ���T���T���T ��T��T��T�T	T�HKTKPKT�q}Twz}T�q�Twz�T}��T���TEq�Tw��T���TEq�Tw��T���T���T���T����������T�qTw�T�T T 0  � '  ../    .6 �   .78   . �%   .��   .�v   .� &   .�H   .� &   .@A 	  .B% 
  .C%   .DA   .EA   .F%   .Z%   .[A   .JA   .K%   .L�   .M�   .N�   .�A   .�v   .� &   .�H   .� &   .bA   .{%   .|%   .eA   .fA   .g%    .h% !  .iA "  .jA #  .o% $  .�A %  .% &R  � �   x   x  y  y  y  y  y  y ) z ) z 1 z 1 z 9 z 9 z A z A z  z ^ { ^ { u { u { u { u { u { u { ] { ] { ] { ] { ] { ] { � | � | � | � | � | � | ] { �  �  � � � � � � � � � � � � � �$ �$ �X �X �X �X �X �X �X �X �P � � � � �' �' �' �' �' �' �3 �3 �' �' �9 �9 �9 �9 �9 �9 � � �[ �[ �[ �[ �n �n �q �q �t �t �[ �[ �[ �[ �G �G �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � � � � � � � � �P �) �� �� �� �� �� �� �� �� �� �� � � � � � � �� �� �} �G � �  �  1   �     �ڸ � �"� �$r� �t׸ ��� �YrS�t� ���� ��� �YrS��� �YrS�� �YrS� 9� �;H� �J��Y� �Y)SY� �SY+SY� �S��'�   0       �./   � 1  � 	   ,��Y*� ���:*� )��� �*� �* �� �*�� �YSY�S� �� * �� �*_� �Y�S� �� **� )�ɸ�� ����_**� ��ɸ ֙ G*�� �YSY�S* �� �*�� �YSY�S� �� **� ��ɸ���M*� )**� )�ɸc�Ҷ_**� )��* �� �*_� �Y�S� �� ����;�t|�����:�:�n:��x�     �           C�|*� ��H�_*��+� ���:* �� ����Y6	�0*��� ���:
* �� �
�����
��Y� �Y�SYSY�SYS���
�
��Y6� �*
,�.M,��,* ¶ �**� E� �Y�S��� ����,��,* ö �**� E� �Y�S��� ����*,��
����� � :� �:*,�M�
�� :� )� i� ��� � #:
�� � :� �:
���������� :� &� o�� � #:��� � :� �:���**� m� �Y* Ƕ �**� m�ɸχc��S**� Q�ɶ֧ �� � :� �:���*� �FITINIT�o{Tux{T�o�Tux�T{��T���Tko�Tu��T���Tko�Tu��T���T���T���T � � ToTu�T�TT 0   �   ,./    ,6 �   ,78   , �%   ,��   ,��   ,W�   ,�A   ,�v   ,� & 	  ,�H 
  ,� &   ,DA   ,E%   ,F%   ,ZA   ,[A   ,J%   ,K%   ,LA   ,MA   ,N%   ,OA   ,^% R  � n  � # � # � # � # � C � C � C � C � V � V � V � V � C � C � C � C � # � # � # � # �  � m � m � � � � � � � � � � � � � � � � � � � � � � � � � { � m � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �  �I �I �I �I �E �E �� �� �� �� �� �� �� �� �� �� �� �� �� � � � � � � � � � �v �O �� �� �� �� �� �� �� �� �� �� � � � � � � �� �� �   �       �    �