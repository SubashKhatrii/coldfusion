����  -� 
SourceFile H/CFIDE/administrator/archives/wizards/archivewizard_page_information.cfm /cfarchivewizard_page_information2ecfm1364433306  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   ARCHIVENAME Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   DESELECTALLGATEWAYS   	   SELECTALLWEBSERVICE   	    DESELECTALLVERITYCOLLECTIONS " " 	  $ SELECTALLSETTINGS & & 	  ( DESELECTALLTASKS * * 	  , 	URLENCHAR . . 	  0 GETADMINVARIANT 2 2 	  4 SELECTALLRESTSERVICE 6 6 	  8 DESELECTALLSETTINGS : : 	  < DESELECTALLRESTSERVICE > > 	  @ GETCSRFTOKEN B B 	  D DESELECTALLCFXS F F 	  H DESELECT_ALL J J 	  L SELECTALLDATASOURCES N N 	  P DESELECTALLDATASOURCES R R 	  T FORM V V 	  X SELECTALLSOLRCOLLECTIONS Z Z 	  \ DESELECTALLSOLRCOLLECTIONS ^ ^ 	  ` SELECTALLAPPLETS b b 	  d 	ISSAFEURL f f 	  h DESELECTALLAPPLETS j j 	  l DESELECTALLWEBSERVICE n n 	  p DESELECTALLPDFSERVICES r r 	  t SELECTALLPDFSERVICES v v 	  x DESELECTALLMAPPINGS z z 	  | SELECTALLCFXS ~ ~ 	  � SELECTALLVERITYCOLLECTIONS � � 	  � REQUEST � � 	  � SELECTALLTASKS � � 	  � 
SELECT_ALL � � 	  � ARCHIVEDESCRIPTION � � 	  � SELECTALLMAPPINGS � � 	  � SELECTALLGATEWAYS � � 	  � com.macromedia.SourceModTime  d7�0 pageContext #Lcoldfusion/runtime/NeoPageContext; � �	  � getOut ()Ljavax/servlet/jsp/JspWriter; � � javax/servlet/jsp/JspContext �
 � � parent Ljavax/servlet/jsp/tagext/Tag; � �	  � Cp1252 � setPageEncoding (Ljava/lang/String;)V � � !coldfusion/runtime/NeoPageContext �
 � � LOCALE � REQUEST.LOCALE � en � checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V � �
  � java/lang/String � 
LOCALEFILE � java/lang/StringBuilder � resources/archives_ �  �
 � � _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder; � �
 � � .cfm � toString ()Ljava/lang/String; � � java/lang/Object �
 � � _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � 'class$coldfusion$tagext$lang$IncludeTag Ljava/lang/Class; !coldfusion.tagext.lang.IncludeTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � !coldfusion/tagext/lang/IncludeTag � _setCurrentLineNo (I)V � �
  � controludfs.cfm � setTemplate � �
 � � 	hasEndTag (Z)V  coldfusion/tagext/GenericTag
 _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z
  WHERETO
 FORM.WHERETO  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z
  CAR ARCHIVES _LhsResolve �
  URL _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  _Map #(Ljava/lang/Object;)Ljava/util/Map; 
 �! DESCRIPTION# _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object;%&
 ' :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)V �)
 * SELECTEVERYTHING, FORM.SELECTEVERYTHING. _get0&
 1 selectAllCFXs3 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;56
 7 selectAllMappings9 selectAllDatasources; selectAllVerityCollections= selectAllSolrCollections? selectAllAppletsA selectAllTasksC selectAllSettingsE selectAllGatewaysG selectAllWebServiceI selectAllRestServiceK selectAllPDFServicesM DESELECTEVERYTHINGO FORM.DESELECTEVERYTHINGQ deSelectAllCFXsS deSelectAllMappingsU deSelectAllDatasourcesW deSelectAllVerityCollectionsY deSelectAllSolrCollections[ deSelectAllApplets] deSelectAllTasks_ deSelectAllSettingsa deSelectAllGatewaysc deSelectAllWebServicee deSelectAllRestServiceg deSelectAllPDFServicesi NEXTSTEPk FORM.NEXTSTEPm _Object (Z)Ljava/lang/Object;op
 �q _boolean (Ljava/lang/Object;)Zst
 �u 	isSafeURLw 'class$coldfusion$tagext$net$LocationTag !coldfusion.tagext.net.LocationTagzy �	 | !coldfusion/tagext/net/LocationTag~ setAddtoken�
� 
cflocation� url� _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;��
 � setUrl� �
� 2(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)V ��
 �  � (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag�� �	 � "coldfusion/tagext/lang/ImportedTag� l10n� ../../cftags/� admin� setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V��
�� &coldfusion/runtime/AttributeCollection� id� archive_information� var� title� ([Ljava/lang/Object;)V �
�� setAttributecollection (Ljava/util/Map;)V��  coldfusion/tagext/lang/ModuleTag�
�� 
doStartTag ()I��
�� 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;��
 � Archive Information� write� � java/io/Writer�
�� doAfterBody��
�� _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;��
 � doEndTag�� #javax/servlet/jsp/tagext/TagSupport�
�� doCatch (Ljava/lang/Throwable;)V��
�� 	doFinally� 
�� archivewizard_header.cfm� $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag�� �	 � coldfusion/tagext/io/OutputTag�
�� M

<table border="0" cellpadding="1" cellspacing="0" width="100%" bgcolor="#� 
GRAYMEDIUM��"><tr><td>
<table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="white">
<tr valign="top">
	<td height="350">
		<table border="0" cellpadding="0" cellspacing="0" width="20" bgcolor="#888885"><tr><td>
		<table border="0" cellpadding="0" cellspacing="1" width="20">
		<tr bgcolor="#888885"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		</table>
		</td></tr></table>
	</td>

	<td height="350" style="vertical-align: top">
� )class$coldfusion$tagext$html$form$FormTag #coldfusion.tagext.html.form.FormTag�� �	 � #coldfusion/tagext/html/form/FormTag� editForm�� �
�� POST� 	setMethod� �
�� cfform� action� CGI� SCRIPT_NAME� ?archivename= URLEncodedFormat 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  	setAction �
�
�� �
<Table border="0" cellpadding="0" cellspacing="0">
<tr><td width="20" nowrap>&nbsp;</td></tr>
<TR>
	<td>&nbsp;</td>
	<td width="100"> name Name B</TD>
	<td>&nbsp;&nbsp;</td>
	<TD vAlign=top align=left>
		
		 EncodeForHTML &(Ljava/lang/String;)Ljava/lang/String;
  7
		
		<input type="Hidden" name="archivename" value=" EncodeForHTMLAttribute
  a" class="label" size="20" size="width:20em;">
    	<input type="hidden" name="csrftoken" value=" getcsrfToken ARCHIVETABKEYNAME  �">
	</TD>
	<td height="20" width="20" nowrap>&nbsp;</td>
</tr>
<tr><td height="10px"></td></tr>
<tr valign="top">
	<td></td>
	<td><label for="description">" description$ Description& �</label></td>
	<td></td>
	<TD>
		
		<TEXTAREA id="description" name="archivedescription" rows="6" cols="40" onchange="setFormValue('archivewizard_page_information.cfm?archivename=( ')">* _resolve, �
 - 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; �/
 0 "</TEXTAREA>
	</TD>
</tr>
<TR>
2 
select_all4 
Select All6 
8 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V:;
 < deselect_all> Deselect All@ �
	<TD colspan="3">&nbsp;</td>
	<td>
		<table border="0" cellpadding="0" cellspacing="0">
		<tr><td><div class="spacer10"></div><input type=submit value="B �" name="selecteverything" class="buttn-grey" style="margin-left: 0px"></td>
		<td>&nbsp;&nbsp;</td>
		<td><div class="spacer10"></div><input type=submit value="D l" name="deselecteverything" class="buttn-grey"></td>
		</table>
		<div class="spacer10"></div>
		<P>
			F description_page_informationH �
			Click Select All to create an archive definition that backs up all objects on your ColdFusion Server. Click Deselect All to create an archive definition that does not archive any objects.
			J 
		</P>
		L getAdminVariantN 
standaloneP _compare '(Ljava/lang/Object;Ljava/lang/String;)DRS
 T jrunV  
			<font color="993300">
				X java_warning_globalZ �<b>WARNING:</b> The Java settings (under Server Settings) contain system-specific paths that are used to start ColdFusion. If you deploy these settings to another machine and the paths are invalid, ColdFusion will fail to start.\ 6
			</font>
			<p>
				<font color="993300">
					^ ignored_settings_warning` zPlease check the Archive Summary page to see the list of settings that will not be migrated under Settings Never Migrated.b 
				</font>			
			</p>
		d �
	</TD>
</TR>
<input type="Hidden" name="whereto" value="archivewizard_page_information.cfm">
<input type="Hidden" name="previousStep" value="archivewizard_page_information.cfm?archivename=f a">
<input type="Hidden" name="nextStep" value="archivewizard_page_filelocations.cfm?archivename=h ">
j
��
��
��
�� 4
</table>
</td></tr></table>
</td></tr></table>
p
�� coldfusion/tagext/QueryLoops
t�
t�
�� 

x archivewizard_footer.cfmz metaData Ljava/lang/Object;|}	 ~ 	Functions� 
Properties� getMetadata ()Ljava/lang/Object; this 1Lcfarchivewizard_page_information2ecfm1364433306; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage out Ljavax/servlet/jsp/JspWriter; value include1 #Lcoldfusion/tagext/lang/IncludeTag; 	location2 #Lcoldfusion/tagext/net/LocationTag; module5 $Lcoldfusion/tagext/lang/ImportedTag; mode5 I t8 Ljava/lang/Throwable; t9 t10 t11 t12 t13 include6 output15  Lcoldfusion/tagext/io/OutputTag; mode15 form14 %Lcoldfusion/tagext/html/form/FormTag; mode14 module7 mode7 t21 t22 t23 t24 t25 t26 module8 mode8 t29 t30 t31 t32 t33 t34 module9 mode9 t37 t38 t39 t40 t41 t42 module10 mode10 t45 t46 t47 t48 t49 t50 module11 mode11 t53 t54 t55 t56 t57 t58 module12 mode12 t61 t62 t63 t64 t65 t66 module13 mode13 t69 t70 t71 t72 t73 t74 t75 t76 t77 t78 t79 t80 t81 t82 t83 t84 	include16 LineNumberTable java/lang/Throwable� <clinit> 1     (                 "     &     *     .     2     6     :     >     B     F     J     N     R     V     Z     ^     b     f     j     n     r     v     z     ~     �     �     �     �     �     �     �     � �   y �   � �   � �   � �   |}    �� �   "     ��   �       ��      �  �    �*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )**++,� � -**/+,� � 1**3+,� � 5**7+,� � 9**;+,� � =**?+,� � A**C+,� � E**G+,� � I**K+,� � M**O+,� � Q**S+,� � U**W+,� � Y**[+,� � ]**_+,� � a**c+,� � e**g+,� � i**k+,� � m**o+,� � q**s+,� � u**w+,� � y**{+,� � }**+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � ��   �       ���    ���   ���  �� �  �  V  �*� �� �L*� �N*� ��� �**� ����� �*�� �Y�S� �Yȷ �*�� �Y�S� θ Զ �ڶ ض � �*� �-� �� �:*� ��� ���	� �**� Y��|**�� �YSYS�*� �YS� θ�"� �Y$S**� ��(�+**� Y-/���*� �**� ��24*� �Y**� �(S�8W*� �**� ��2:*� �Y**� �(S�8W*� �**� Q�2<*� �Y**� �(S�8W*� �**� ��2>*� �Y**� �(S�8W*� �**� ]�2@*� �Y**� �(S�8W*� �**� e�2B*� �Y**� �(S�8W*� �**� ��2D*� �Y**� �(S�8W*� �**� )�2F*� �Y**� �(S�8W*� �**� ��2H*� �Y**� �(S�8W* � �**� !�2J*� �Y**� �(S�8W*!� �**� 9�2L*� �Y**� �(S�8W*"� �**� y�2N*� �Y**� �(S�8W�j**� YPR���*&� �**� I�2T*� �Y**� �(S�8W*'� �**� }�2V*� �Y**� �(S�8W*(� �**� U�2X*� �Y**� �(S�8W*)� �**� %�2Z*� �Y**� �(S�8W**� �**� a�2\*� �Y**� �(S�8W*+� �**� m�2^*� �Y**� �(S�8W*,� �**� -�2`*� �Y**� �(S�8W*-� �**� =�2b*� �Y**� �(S�8W*.� �**� �2d*� �Y**� �(S�8W*/� �**� q�2f*� �Y**� �(S�8W*0� �**� A�2h*� �Y**� �(S�8W*1� �**� u�2j*� �Y**� �(S�8W� �**� Yln��rY�v� 0W*4� �**� i�2x*� �Y*W� �YlS� �S�8�v� O*�}-� ��:*5� �����*W� �YlS� θ �������	� �**� **� �(��**� ����*��-� ���:*G� ��������Y� �Y�SY�SY�SY�S�������Y6� 6*+��L+����Ț��� � :� �:	*+��L�	��� :
� #
�� � #:�ը � :� �:�ة*� �-� �� �:*H� �ڶ ���	� �*��-� ���:*K� ����Y6��+��+*�� �Y�S� θ Զ�+��*��� ���:*g� ��������� �Y*�� �Y S� θ Է �� �*g� �**� �(� �**� 1�(� Ը� ض ����	��
Y6��*+��L+��*��� ���:*l� ��������Y� �Y�SYS�������Y6� 6*+��L+���Ț��� � :� �:*+��L���� :� ,�F������ � #:�ը � :� �:�ة+��+*p� �**� �(� Ը��+��+*r� �**� �(� Ը��+��+*s� �**� E�2*� �Y*�� �Y!S� �S�8� Զ�+#��*��� ���:*z� ��������Y� �Y�SY%S�������Y6� 6*+��L+'���Ț��� � :� �:*+��L���� :� ,��<���� � #:  �ը � :!� !�:"�ة"+)��+*~� �*� �YS� θ �**� 1�(� Ը��++��+**�� �YSYS�.*� �YS� θ�"� �Y$S�1� Զ�+3��*��	� ���:#* �� �#�����#��Y� �Y�SY5SY�SY5S����#�#��Y6$� 6*#$+��L+7��#�Ț��� � :%� %�:&*$+��L�&#��� :'� ,����,'�� � #:(#(�ը � :)� )�:*#�ة**+9�=*��
� ���:+* �� �+�����+��Y� �Y�SY?SY�SY?S����+�+��Y6,� 6*+,+��L+A��+�Ț��� � :-� -�:.*,+��L�.+��� :/� ,�Ҩ�Q/�� � #:0+0�ը � :1� 1�:2+�ة2+C��+**� ��(� Զ�+E��+**� M�(� Զ�+G��*��� ���:3* �� �3�����3��Y� �Y�SYIS����3�3��Y64� 6*34+��L+K��3�Ț��� � :5� 5�:6*4+��L�63��� :7� ,�ب�W7�� � #:838�ը � :9� 9�::3�ة:+M��* �� �**� 5�2O*� ߸8Q�U�~��rY�v� -W* �� �**� 5�2O*� ߸8W�U�~��rY�v� W**� Y-/��r�v��+Y��*��� ���:;* �� �;�����;��Y� �Y�SY[S����;�;��Y6<� 6*;<+��L+]��;�Ț��� � :=� =�:>*<+��L�>;��� :?� ,���Ũ	?�� � #:@;@�ը � :A� A�:B;�ةB+_��*��� ���:C* �� �C�����C��Y� �Y�SYaS����C�C��Y6D� 6*CD+��L+c��C�Ț��� � :E� E�:F*D+��L�FC��� :G� ,� �� ��;G�� � #:HCH�ը � :I� I�:JC�ةJ+e��+g��+* �� �*� �YS� θ �**� 1�(� Ը��+i��+* �� �*� �YS� θ �**� 1�(� Ը��+k���l��0� � :K� K�:L*+��L�L�m� :M� &� jM�� � #:NN�n� � :O� O�:P�o�P+q���r���u� :Q� #Q�� � #:RR�v� � :S� S�:T�w�T*+y�=*� �-� �� �:U* �� �U{� �U�U�	� �� s��������z�������z���������������Wsv�v{v�L�������L��������������������������������������������	��	�

�


�	�
8
D�
>
A
D�	�
8
S�
>
A
S�
D
P
S�
S
X
S�
�
�
��
�
�
��
���
�.�.�+.�.3.�������������(�(�%(�(-(�/2�272�[g�adg�[v�adv�gsv�v{v��� �  ��)5�/25��)D�/2D�5AD�DID����������
8��
>����[��a)��/��������������
8�
>��[�a)�/�� ��������
8�
>��[�a)�/�� ���8�M���M��
8M�
>M�M�[M�a)M�/�M� AM�GJM�8�\���\��
8\�
>\�\�[\�a)\�/�\� A\�GJ\�MY\�\a\� �  ^ V  ���    ���   ��}   � � �   ���   ���   ���   ���   ���   ��} 	  ��} 
  ���   ���   ��}   ���   ���   ���   ���   ���   ���   ���   ���   ��}   ��}   ���   ���   ��}   ���   ���   ���   ��}   ��}   ���    ��� !  ��} "  ��� #  ��� $  ��� %  ��} &  ��} '  ��� (  ��� )  ��} *  ��� +  ��� ,  ��� -  ��} .  ��} /  ��� 0  ��� 1  ��} 2  ��� 3  ��� 4  ��� 5  ��} 6  ��} 7  ��� 8  ��� 9  ��} :  ��� ;  ��� <  ��� =  ��} >  ��} ?  ��� @  ��� A  ��} B  ��� C  ��� D  ��� E  ��} F  ��} G  ��� H  ��� I  ��} J  ��� K  ��} L  ��} M  ��� N  ��� O  ��} P  ��} Q  ��� R  ��� S  ��} T  ��� U�  2�       4  4  9  9  9  9  N  N  0  0  0  0  $  $  o  o  Y  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �      �  �  �   % %    8 8 J J 8 8 8 ] ] o o ] ] ] � � � � � � � � � � � � � � � � � � � � � � �   � � �   ( (    ;  ;  M  M  ;  ;  ;  ` !` !r !r !` !` !` !� "� "� "� "� "� "� " � � $� $� $� $� $� $� $� $� $� $� &� &� &� &� &� &� &� '� '� '� '� '� '� ' ( ( ( ( ( ( (- )- )? )? )- )- )- )R *R *d *d *R *R *R *w +w +� +� +w +w +w +� ,� ,� ,� ,� ,� ,� ,� -� -� -� -� -� -� -� .� .� .� .� .� .� . / / / / / / /0 00 0B 0B 00 00 00 0U 1U 1g 1g 1U 1U 1U 1� %x 4x 4x 4x 4| 4| 4 4 4w 4w 4w 4w 4� 4� 4� 4� 4� 4� 4� 4� 4w 4w 4� 5� 5� 5� 5� 5w 4w 3� $ �  �  @ @ @ @# A# A^ G^ Gj Gj G) G H H� HK MK MK MK MJ M� g� g� g� g� g� g� g� g� g� g� g� g� g� g� g� g� g� g� g� g� g� g� g� g< l< l l� p� p� p� p� p� p� p� p� p� r� r� r� r� r� r� r� r� r s s) s) s s s s s s� z� zJ z	 ~	 ~	 ~	 ~	1 ~	1 ~	1 ~	1 ~	 ~	 ~	 ~	 ~	 ~	K ~	K ~	a ~	a ~	J ~	J ~	J ~	J ~	I ~	� �	� �	� �	� �	� �
� �
� �
� �
� �
l �G �G �G �G �F �] �] �] �] �\ �� �� �r �G �G �G �G �Z �Z �G �G �G �G �x �x �x �x �� �� �x �x �x �x �G �G �G �G �� �� �� �� �� �� �� �� �� �� �� �� �G �G �� �� �� �� �� �� �G �k �k �k �k �~ �~ �~ �~ �k �k �k �k �c �� �� �� �� �� �� �� �� �� �� �� �� �� �h g K� �� �u �      �   #     *� 
�   �       ��   �  �   s     U� � �{� �}�� ��ݸ ��� ����Y� �Y�SY� �SY�SY� �S����   �       U��         �    �