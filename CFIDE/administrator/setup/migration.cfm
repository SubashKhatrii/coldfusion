����  -� 
SourceFile (/CFIDE/administrator/setup/migration.cfm cfmigration2ecfm1230652039  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   FORM Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   OUTPUT   	   THISSTEP   	    ADMINOBJ " " 	  $ 	DOC_TITLE & & 	  ( com.macromedia.SourceModTime  d7�� pageContext #Lcoldfusion/runtime/NeoPageContext; - .	  / getOut ()Ljavax/servlet/jsp/JspWriter; 1 2 javax/servlet/jsp/JspContext 4
 5 3 parent Ljavax/servlet/jsp/tagext/Tag; 7 8	  9 Cp1252 ; setPageEncoding (Ljava/lang/String;)V = > !coldfusion/runtime/NeoPageContext @
 A ? SKIP C 	FORM.SKIP E  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z G H
  I java/lang/String K MIGRATIONSTATUS M skipped O _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V Q R
  S 
ISCOMPLETE U 1 W ADVANCE Y NEXTSTEP [ migrationfinish ] PREV _ 	FORM.PREV a setupmessage c NEXT e 	FORM.NEXT g started i _setCurrentLineNo (I)V k l
  m 	component o CFIDE.adminapi.administrator q CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; s t
  u set (Ljava/lang/Object;)V w x coldfusion/runtime/Variable z
 { y (class$coldfusion$tagext$lang$ImportedTag Ljava/lang/Class; "coldfusion.tagext.lang.ImportedTag  forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � } ~	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � "coldfusion/tagext/lang/ImportedTag � l10n � 	../cftags � admin � setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V � �
 � � &coldfusion/runtime/AttributeCollection � java/lang/Object � id � doc_title_cfmigration � var � 	doc_title � ([Ljava/lang/Object;)V  �
 � � setAttributecollection (Ljava/util/Map;)V � �  coldfusion/tagext/lang/ModuleTag �
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � 
doStartTag ()I � �
 � � 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � ColdFusion Migration � write � > java/io/Writer �
 � � doAfterBody � �
 � � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � doEndTag � � #javax/servlet/jsp/tagext/TagSupport �
 � � doCatch (Ljava/lang/Throwable;)V � �
 � � 	doFinally � 
 � � exporting_applets � export_applets � Exporting Applets � mig_skip � Skip � mig_back � Back � mig_continue � Next � mig_skip_warn � (Are you sure you want to skip migration? � &class$coldfusion$tagext$lang$CustomTag  coldfusion.tagext.lang.CustomTag � � ~	  �  coldfusion/tagext/lang/CustomTag � wrapper � '(Ljava/lang/String;Ljava/lang/String;)V � �
 � � panel � 	migration � _arrayAssign &(Ljava/lang/Object;)Ljava/lang/Object; � �
  � title  _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object;
  text   $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag
 ~	  coldfusion/tagext/io/OutputTag
 � �
  		<table border="0" cellpadding="0" cellspacing="0">
  		<tr>
  			<td width="20">&nbsp;</td>
  			<td colspan="3">
			<font class="sentance">
  			 	mig_intro�
				ColdFusion will now migrate existing settings and resources, 
				including data sources and Custom tags. 
				NOTE: If you skip this step, applications that require 
				these resources will not run correctly until you have defined 
				them in the ColdFusion Administrator.
				<br /><br /> 
				If you require additional data before continuing, you can stop the 
				Migration Wizard at any time and make the changes. Once done copy 
				the config files (neo-*.xml) from &lt;oldColdFusionRoot&gt;/lib to 
				&lt;newColdFusionRoot&gt;/lib. When you are ready to continue, restart the 
				ColdFusion Administrator and the wizard will continue from where you stopped.				
				<br /><br /> 
			 X</font>
			</td>
  		</tr>
  		<tr><td>&nbsp;</td>
  		</tr>
  		</table>
  		
		 REQUEST PREVBTN coldfusion/runtime/CFBoolean t_true Lcoldfusion/runtime/CFBoolean; !	" :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V Q$
 % 
		' _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V)*
 + SKIPBTN- NEXTBTN/ 

	1
 � coldfusion/tagext/QueryLoop4
5 �
5 �
 � 
9 metaData Ljava/lang/Object;;<	 = 	Functions? 
PropertiesA getMetadata ()Ljava/lang/Object; this Lcfmigration2ecfm1230652039; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage out Ljavax/servlet/jsp/JspWriter; value module0 $Lcoldfusion/tagext/lang/ImportedTag; mode0 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 module1 mode1 t14 t15 t16 t17 t18 t19 module2 mode2 t22 t23 t24 t25 t26 t27 module3 mode3 t30 t31 t32 t33 t34 t35 module4 mode4 t38 t39 t40 t41 t42 t43 module5 mode5 t46 t47 t48 t49 t50 t51 module8 "Lcoldfusion/tagext/lang/CustomTag; mode8 output7  Lcoldfusion/tagext/io/OutputTag; mode7 module6 mode6 t58 t59 t60 t61 t62 t63 t64 t65 t66 t67 t68 t69 t70 t71 t72 t73 LineNumberTable java/lang/Throwable� <clinit> 1     	                 "     &     } ~    � ~   
 ~   ;<    CD H   "     �>�   G       EF      H   u     C*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )�   G        CEF     CIJ    CKL  MD H  $  J  *� 0� 6L*� :N*� 0<� B**� DF� J� R**� � LYNSP� T**� !� LYVSX� T**� !� LYZSX� T**� !� LY\S^� T� �**� `b� J� ?**� !� LYVSX� T**� !� LYZSX� T**� !� LY\Sd� T� K**� fh� J� <**� � LYNSj� T**� !� LYVSX� T**� !� LYZSX� T*� %*� n*pr� v� |*� �-� �� �:*� n���� �� �Y� �Y�SY�SY�SY�S� �� �� �� �Y6� 5*+� �L+�� �� Ś��� � :� �:*+� �L�� �� :� #�� � #:		� Ҩ � :
� 
�:� թ*� �-� �� �:*� n���� �� �Y� �Y�SY�SY�SY�S� �� �� �� �Y6� 5*+� �L+۶ �� Ś��� � :� �:*+� �L�� �� :� #�� � #:� Ҩ � :� �:� թ*� �-� �� �:*� n���� �� �Y� �Y�SY�SY�SY�S� �� �� �� �Y6� 5*+� �L+߶ �� Ś��� � :� �:*+� �L�� �� :� #�� � #:� Ҩ � :� �:� թ*� �-� �� �:*� n���� �� �Y� �Y�SY�SY�SY�S� �� �� �� �Y6� 5*+� �L+� �� Ś��� � :� �:*+� �L�� �� : � # �� � #:!!� Ҩ � :"� "�:#� թ#*� �-� �� �:$*� n$���� �$� �Y� �Y�SY�SY�SY�S� �� �$� �$� �Y6%� 5*$%+� �L+� �$� Ś��� � :&� &�:'*%+� �L�'$� �� :(� #(�� � #:)$)� Ҩ � :*� *�:+$� թ+*� �-� �� �:,*� n,���� �,� �Y� �Y�SY�SY�SY�S� �� �,� �,� �Y6-� 5*,-+� �L+� �,� Ś��� � :.� .�:/*-+� �L�/,� �� :0� #0�� � #:1,1� Ҩ � :2� 2�:3,� թ3*� �-� �� �:4*� n4�� �4� �Y� �Y�SY�� �SYSY**� )�� �SYSY	� �S� �� �4� �4� �Y65��*45+� �L*�4� ��:6*� n6� �6�Y67�/+� �*� �6� �� �:8*$� n8���� �8� �Y� �Y�SYS� �� �8� �8� �Y69� 6*89+� �L+� �8� Ś��� � ::� :�:;*9+� �L�;8� �� :<� ,� ʨ �&<�� � #:=8=� Ҩ � :>� >�:?8� թ?+� �*� LYS�#�&*+(�,*� LY.S�#�&*+(�,*� LY0S�#�&*+2�,6�3���6�6� :@� )� M� �@�� � #:A6A�7� � :B� B�:C6�8�C*+:�,4� Ś�b� � :D� D�:E*5+� �L�E4� �� :F� #F�� � #:G4G� Ҩ � :H� H�:I4� թI� Nq�������f�������f���������������0KN�NSN�%nz�twz�%n��tw��z��������
���-9�369��-H�36H�9EH�HMH��������������������������m�������b�������b���������������,GJ�JOJ�!jv�psv�!j��ps��v���������������������������������������+����t��z}��+����t��z}��������������t��z������������t��z������������t��z��������������� G  � J  EF    NO   P<    7 8   QR   ST   UV   W<   X<   YV 	  ZV 
  [<   \R   ]T   ^V   _<   `<   aV   bV   c<   dR   eT   fV   g<   h<   iV   jV   k<   lR   mT   nV   o<   p<    qV !  rV "  s< #  tR $  uT %  vV &  w< '  x< (  yV )  zV *  {< +  |R ,  }T -  ~V .  < /  �< 0  �V 1  �V 2  �< 3  �� 4  �T 5  �� 6  �T 7  �R 8  �T 9  �V :  �< ;  �< <  �V =  �V >  �< ?  �< @  �V A  �V B  �< C  �V D  �< E  �< F  �V G  �V H  �< I�  � �                       3  3  3  3  %  %  F  F  F  F  8  8  Y  Y  Y  Y  K  K  l  l  l  l  ^  ^  u 	 u 	 u 	 u 	 y 	 y 	 { 	 { 	 t 	 t 	 � 
 � 
 � 
 � 
 � 
 � 
 �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �      �  �  �  t 	            M M W W      � � � � � � � � � � Y I I S S      � � � � � � � � � � � � � � � p $p $= $ A A A A A A0 B0 B0 B0 B" B" BL CL CL CL C> C> C �       H   #     *� 
�   G       EF   �  H   `     B�� �� �� �� �� ��� �Y� �Y@SY� �SYBSY� �S� ��>�   G       BEF         *    +