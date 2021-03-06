FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �{ Copyright (C) 2020 Kurita Tetsuro

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Foobar is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Foobar.  If not, see <http://www.gnu.org/licenses/>      � 	 	�   C o p y r i g h t   ( C )   2 0 2 0   K u r i t a   T e t s u r o 
 
 T h i s   p r o g r a m   i s   f r e e   s o f t w a r e :   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y 
 i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y 
 t h e   F r e e   S o f t w a r e   F o u n d a t i o n ,   e i t h e r   v e r s i o n   3   o f   t h e   L i c e n s e ,   o r 
 ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n . 
 
 F o o b a r   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l , 
 b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f 
 M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e 
 G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s . 
 
 Y o u   s h o u l d   h a v e   r e c e i v e d   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e 
 a l o n g   w i t h   F o o b a r .     I f   n o t ,   s e e   < h t t p : / / w w w . g n u . o r g / l i c e n s e s / >     
  
 l     ��������  ��  ��        l          x     ��  ��    1      ��
�� 
ascr  �� ��
�� 
minv  m         �    2 . 3��      OS X 10.9 Yosemite     �   &   O S   X   1 0 . 9   Y o s e m i t e      x    �� ���� 0 xlist XList  4    �� 
�� 
scpt  m       �   
 X L i s t��        x    .�� ���� 0 xdict XDict  4   ( ,��  
�� 
scpt   m   * + ! ! � " " 
 X D i c t��     # $ # x   / ;�� %����   % 2  1 4��
�� 
osax��   $  & ' & l     ��������  ��  ��   '  ( ) ( j   ; =�� *
�� 
pnam * m   ; < + + � , ,  H T M L E l e m e n t )  - . - l     ��������  ��  ��   .  / 0 / j   > A�� 1�� 0 	_line_end   1 1   > @��
�� 
lnfd 0  2 3 2 l     ��������  ��  ��   3  4 5 4 l      �� 6 7��   6c]!@references
Home page || http://www.script-factory.net/XModules/HTMLElement/en/index.html
ChangeLog || http://www.script-factory.net/XModules/HTMLElement/changelog.html
Repository || https://github.com/tkurita/HTMLElement.scptd

@title HTMLElement Reference
* Version : 1.0
* Author : Kurita Tetsuro ((<scriptfactory@mac.com>))
* Requirements : OS X 10.9 or later
* ((<Home page>)) || ((<ChangeLog>)) || ((<Repository>)) 

HTMLElement is an AppleScript libraryt that represets HTML document structure with programming.

You can built a structre of a HTML document by script object through well arranged object orientied interface. And the object structre can output well fomatted HTML data.

This library is useful when a kind of data is converted into HTML data.

The root object of HTMLElement can be made by the constructor method of ((<make_with>)). 
First argument of ((<make_with>)) is name of the tag. 
Attributes of the tag can be specified in second argument as a list of lists e.g. {{attribute1, value1}, {attribute2, value2}, ...}.

Child objects can be appended by methods of ((<push_element_with>)), ((<push_comment_with>)). 

The contents of HTML tags can be appended by ((<push>)).

To obtain text data of HTML, ((<as_html>)) can be used.

@example
use HTMLElement : script "HTMLElement"tell HTMLElement's make_with("html", {})	tell push_element_with("head", {})		tell push_element_with("title", {})			push("Welcome to HTMLElement")		end tell	end tell	tell push_element_with("body", {})		tell push_element_with("p", {})			push("hello")		end tell		set body_tag to it	end tell	set html_tag to itend tellset comment_tag to HTMLElement's comment_with("this is comment", {})body_tag's push(comment_tag)log html_tag's as_html()(*<html>
<head>
<title>Welcome to HTMLElement</title>
</head>
<body>
<p>hello</p>
<!-- this is comment -->
</body>
</html>*)
    7 � 8 8� ! @ r e f e r e n c e s 
 H o m e   p a g e   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / H T M L E l e m e n t / e n / i n d e x . h t m l 
 C h a n g e L o g   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / H T M L E l e m e n t / c h a n g e l o g . h t m l 
 R e p o s i t o r y   | |   h t t p s : / / g i t h u b . c o m / t k u r i t a / H T M L E l e m e n t . s c p t d 
 
 @ t i t l e   H T M L E l e m e n t   R e f e r e n c e 
 *   V e r s i o n   :   1 . 0 
 *   A u t h o r   :   K u r i t a   T e t s u r o   ( ( < s c r i p t f a c t o r y @ m a c . c o m > ) ) 
 *   R e q u i r e m e n t s   :   O S   X   1 0 . 9   o r   l a t e r 
 *   ( ( < H o m e   p a g e > ) )   | |   ( ( < C h a n g e L o g > ) )   | |   ( ( < R e p o s i t o r y > ) )   
 
 H T M L E l e m e n t   i s   a n   A p p l e S c r i p t   l i b r a r y t   t h a t   r e p r e s e t s   H T M L   d o c u m e n t   s t r u c t u r e   w i t h   p r o g r a m m i n g . 
 
 Y o u   c a n   b u i l t   a   s t r u c t r e   o f   a   H T M L   d o c u m e n t   b y   s c r i p t   o b j e c t   t h r o u g h   w e l l   a r r a n g e d   o b j e c t   o r i e n t i e d   i n t e r f a c e .   A n d   t h e   o b j e c t   s t r u c t r e   c a n   o u t p u t   w e l l   f o m a t t e d   H T M L   d a t a .  
 
 T h i s   l i b r a r y   i s   u s e f u l   w h e n   a   k i n d   o f   d a t a   i s   c o n v e r t e d   i n t o   H T M L   d a t a . 
 
 T h e   r o o t   o b j e c t   o f   H T M L E l e m e n t   c a n   b e   m a d e   b y   t h e   c o n s t r u c t o r   m e t h o d   o f   ( ( < m a k e _ w i t h > ) ) .   
 F i r s t   a r g u m e n t   o f   ( ( < m a k e _ w i t h > ) )   i s   n a m e   o f   t h e   t a g .   
 A t t r i b u t e s   o f   t h e   t a g   c a n   b e   s p e c i f i e d   i n   s e c o n d   a r g u m e n t   a s   a   l i s t   o f   l i s t s   e . g .   { { a t t r i b u t e 1 ,   v a l u e 1 } ,   { a t t r i b u t e 2 ,   v a l u e 2 } ,   . . . } . 
 
 C h i l d   o b j e c t s   c a n   b e   a p p e n d e d   b y   m e t h o d s   o f   ( ( < p u s h _ e l e m e n t _ w i t h > ) ) ,   ( ( < p u s h _ c o m m e n t _ w i t h > ) ) .   
 
 T h e   c o n t e n t s   o f   H T M L   t a g s   c a n   b e   a p p e n d e d   b y   ( ( < p u s h > ) ) . 
 
 T o   o b t a i n   t e x t   d a t a   o f   H T M L ,   ( ( < a s _ h t m l > ) )   c a n   b e   u s e d . 
 
 @ e x a m p l e 
 u s e   H T M L E l e m e n t   :   s c r i p t   " H T M L E l e m e n t "   t e l l   H T M L E l e m e n t ' s   m a k e _ w i t h ( " h t m l " ,   { } )  	 t e l l   p u s h _ e l e m e n t _ w i t h ( " h e a d " ,   { } )  	 	 t e l l   p u s h _ e l e m e n t _ w i t h ( " t i t l e " ,   { } )  	 	 	 p u s h ( " W e l c o m e   t o   H T M L E l e m e n t " )  	 	 e n d   t e l l  	 e n d   t e l l  	 t e l l   p u s h _ e l e m e n t _ w i t h ( " b o d y " ,   { } )  	 	 t e l l   p u s h _ e l e m e n t _ w i t h ( " p " ,   { } )  	 	 	 p u s h ( " h e l l o " )  	 	 e n d   t e l l  	 	 s e t   b o d y _ t a g   t o   i t  	 e n d   t e l l  	 s e t   h t m l _ t a g   t o   i t  e n d   t e l l   s e t   c o m m e n t _ t a g   t o   H T M L E l e m e n t ' s   c o m m e n t _ w i t h ( " t h i s   i s   c o m m e n t " ,   { } )  b o d y _ t a g ' s   p u s h ( c o m m e n t _ t a g )   l o g   h t m l _ t a g ' s   a s _ h t m l ( )  ( * < h t m l > 
 < h e a d > 
 < t i t l e > W e l c o m e   t o   H T M L E l e m e n t < / t i t l e > 
 < / h e a d > 
 < b o d y > 
 < p > h e l l o < / p > 
 < ! - -   t h i s   i s   c o m m e n t   - - > 
 < / b o d y > 
 < / h t m l > * )  
 5  9 : 9 l     ��������  ��  ��   :  ; < ; l      �� = >��   = " private
@group Class Methods    > � ? ? 8 p r i v a t e 
 @ g r o u p   C l a s s   M e t h o d s <  @ A @ l     ��������  ��  ��   A  B C B l      �� D E��   D h bprivate
@abstruct Get a character for line breaking
@result text : The default value is line feed
    E � F F � p r i v a t e 
 @ a b s t r u c t   G e t   a   c h a r a c t e r   f o r   l i n e   b r e a k i n g 
 @ r e s u l t   t e x t   :   T h e   d e f a u l t   v a l u e   i s   l i n e   f e e d 
 C  G H G i   B E I J I I      �������� 0 line_end  ��  ��   J L      K K n     L M L o    ���� 0 	_line_end   M  f      H  N O N l     ��������  ��  ��   O  P Q P l      �� R S��   R D >private
@abstruct set a character for line break
@result text
    S � T T | p r i v a t e 
 @ a b s t r u c t   s e t   a   c h a r a c t e r   f o r   l i n e   b r e a k 
 @ r e s u l t   t e x t 
 Q  U V U i   F I W X W I      �� Y���� 0 set_line_end   Y  Z�� Z o      ���� 
0 a_char  ��  ��   X r      [ \ [ o     ���� 
0 a_char   \ n      ] ^ ] o    ���� 0 	_line_end   ^  f     V  _ ` _ l     ��������  ��  ��   `  a b a j   J y�� c�� 0 _inline_tags   c J   J x d d  e f e m   J M g g � h h  s p a n f  i j i m   M P k k � l l  a j  m n m m   P S o o � p p  b n  q r q m   S V s s � t t 
 i n p u t r  u v u m   V Y w w � x x  i v  y z y m   Y \ { { � | |  s t r o n g z  } ~ } m   \ _   � � �  e m ~  � � � m   _ b � � � � �  s �  � � � m   b e � � � � �  s t r i k e �  � � � m   e h � � � � �  d e l �  � � � m   h k � � � � �  s u b �  � � � m   k n � � � � �  s u p �  � � � m   n q � � � � �  t t �  ��� � m   q t � � � � �  u��   b  � � � j   z ��� ��� 0 _inline_tag_info   � K   z � � � �� � ��� 0 is_empty   � m   } ~��
�� boovfals � �� � ��� 0 before_start   � m   � � � � � � �   � �� � ��� 0 after_start   � m   � � � � � � �   � �� � ��� 0 
before_end   � m   � � � � � � �   � �� ����� 0 	after_end   � m   � � � � � � �  ��   �  � � � l     ��������  ��  ��   �  � � � j   � ��� ��� 0 _br_tags   � J   � � � �  ��� � m   � � � � � � �  b r��   �  � � � j   � ��� ��� 0 _br_tag_info   � K   � � � � �� � ��� 0 is_empty   � m   � ���
�� boovtrue � �� � ��� 0 before_start   � m   � � � � � � �   � �� � ��� 0 after_start   � o   � ����� 0 	_line_end   � �� � ��� 0 
before_end   � m   � � � � � � �   � �� ����� 0 	after_end   � m   � � � � � � �  ��   �  � � � l     ��������  ��  ��   �  � � � j   � ��� ��� 0 _oneline_empty_tags   � J   � � � �  � � � m   � � � � � � �  i m g �  � � � m   � � � � � � �  m e t a �  � � � m   � � � � � � �  h r �  ��� � m   � � � � � � �  l i n k��   �  � � � j   � ��� ��� 0 _oneline_empty_tag_info   � K   � � � � �� � ��� 0 is_empty   � m   � ���
�� boovtrue � �� � ��� 0 before_start   � o   � ����� 0 	_line_end   � �� � ��� 0 after_start   � o   � ����� 0 	_line_end   � �� � ��� 0 
before_end   � m   � � � � � � �   � �� ����� 0 	after_end   � m   � � � � � � �  ��   �  � � � l     ��������  ��  ��   �  � � � j   ��� ��� 0 	_par_tags   � J   � � �  � � � m   � � � � � � �  p �  � � � m   � � � � �    h 1 �  m   � � �  h 2  m   � � �  h 3 	
	 m   � �  h 4
  m   �  h 5  m   �  h 6  m   �  l i �� m   � 
 t i t l e��   �  j  1���� 0 _par_tags_info   K  0 �� !�� 0 is_empty    m  ��
�� boovfals! ��"#�� 0 before_start  " o  ���� 0 	_line_end  # ��$%�� 0 after_start  $ m  "&& �''  % ��()�� 0 
before_end  ( m  %(** �++  ) ��,���� 0 	after_end  , o  +,���� 0 	_line_end  ��   -.- l     ��������  ��  ��  . /0/ j  2K��1�� 0 _div_type_info  1 K  2J22 ��34�� 0 is_empty  3 m  56��
�� boovfals4 ��56�� 0 before_start  5 o  9:���� 0 	_line_end  6 ��78�� 0 after_start  7 o  =>���� 0 	_line_end  8 ��9:�� 0 
before_end  9 o  AB���� 0 	_line_end  : ��;���� 0 	after_end  ; o  EF���� 0 	_line_end  ��  0 <=< l     ��������  ��  ��  = >?> i  LO@A@ I      �B�~� 0 tag_info_for  B C�}C o      �|�| 
0 a_name  �}  �~  A Z     ?DEFGD E    HIH o     �{�{ 0 _inline_tags  I o    �z�z 
0 a_name  E L   
 JJ o   
 �y�y 0 _inline_tag_info  F KLK E   MNM o    �x�x 0 _br_tags  N o    �w�w 
0 a_name  L OPO L    #QQ o    "�v�v 0 _oneline_empty_tag_info  P RSR E  & -TUT o   & +�u�u 0 	_par_tags  U o   + ,�t�t 
0 a_name  S V�sV L   0 6WW o   0 5�r�r 0 _par_tags_info  �s  G L   9 ?XX o   9 >�q�q 0 _div_type_info  ? YZY l     �p�o�n�p  �o  �n  Z [\[ l      �m]^�m  ] " !@group Constructor Methods    ^ �__ 8 ! @ g r o u p   C o n s t r u c t o r   M e t h o d s  \ `a` l     �l�k�j�l  �k  �j  a bcb l      �ide�i  d��!@abstruct
Make a new HTMLElement instance
@param elem_name (text)
@param att_list (list) : {{"att1", "value1"}, {"att2", "value2"}}. When threre is no options,  pass an empty list �g{}�h.
@result script : an HTMLElement instance
@example
use HTMLElement : script "HTMLElement"tell HTMLElement's make_with("p", {{"id", "hello"}, {"align", "center"}})	push("great contents")	log as_html()end tell(*<p id="hello" align="center">great contents</p>*)
   e �ff� ! @ a b s t r u c t 
 M a k e   a   n e w   H T M L E l e m e n t   i n s t a n c e 
 @ p a r a m   e l e m _ n a m e   ( t e x t ) 
 @ p a r a m   a t t _ l i s t   ( l i s t )   :   { { " a t t 1 " ,   " v a l u e 1 " } ,   { " a t t 2 " ,   " v a l u e 2 " } } .   W h e n   t h r e r e   i s   n o   o p t i o n s ,     p a s s   a n   e m p t y   l i s t    { }  . 
 @ r e s u l t   s c r i p t   :   a n   H T M L E l e m e n t   i n s t a n c e 
 @ e x a m p l e 
 u s e   H T M L E l e m e n t   :   s c r i p t   " H T M L E l e m e n t "  t e l l   H T M L E l e m e n t ' s   m a k e _ w i t h ( " p " ,   { { " i d " ,   " h e l l o " } ,   { " a l i g n " ,   " c e n t e r " } } )  	 p u s h ( " g r e a t   c o n t e n t s " )  	 l o g   a s _ h t m l ( )  e n d   t e l l  ( * < p   i d = " h e l l o "   a l i g n = " c e n t e r " > g r e a t   c o n t e n t s < / p > * )  
c ghg i  PSiji I      �hk�g�h 0 	make_with  k lml o      �f�f 0 	elem_name  m n�en o      �d�d 0 att_list  �e  �g  j k     oo pqp l     �crs�c  r * $log "start make_with in HTMLElement"   s �tt H l o g   " s t a r t   m a k e _ w i t h   i n   H T M L E l e m e n t "q uvu r     wxw  f     x o      �b�b 0 a_class  v y�ay h    �`z�` *0 htmlelementinstance HTMLElementInstancez k      {{ |}| j     �_~
�_ 
pare~ o     �^�^ 0 a_class  } � l     ���� j   	 �]�
�] 
pnam� m   	 
�� ��� & H T M L E l e m e n t I n s t a n c e� < 6 required when loaded by ModuleLoadder due to unknown.   � ��� l   r e q u i r e d   w h e n   l o a d e d   b y   M o d u l e L o a d d e r   d u e   t o   u n k n o w n .� ��� j    �\��\ 0 
_elem_name  � o    �[�[ 0 	elem_name  � ��� j    "�Z��Z 0 _attributes  � n   !��� I    !�Y��X�Y 0 make_with_pairs  � ��W� o    �V�V 0 att_list  �W  �X  � o    �U�U 0 xdict XDict� ��� j   # -�T��T 0 	_contents  � I  # ,�S��R
�S .corecrel****      � null� o   # (�Q�Q 0 xlist XList�R  � ��P� j   . 9�O��O 	0 _info  � I   . 8�N��M�N 0 tag_info_for  � ��L� o   / 4�K�K 0 	elem_name  �L  �M  �P  �a  h ��� l     �J�I�H�J  �I  �H  � ��� i  TW��� I     �G�F�E
�G .corecrel****      � null�F  �E  � L     	�� I     �D��C�D 0 	make_with  � ��� m    �� ���  � ��B� J    �A�A  �B  �C  � ��� l     �@�?�>�@  �?  �>  � ��� h  Xe�=��= 0 htmlcomment HTMLComment� k      �� ��� j     �<��< 	0 _info  � o     �;�; 0 _oneline_empty_tag_info  � ��� l     �:�9�8�:  �9  �8  � ��� i    
��� I      �7�6�5�7 0 as_html  �6  �5  � k     O�� ��� r     ��� n    ��� I    �4��3�4 0 	make_with  � ��2� J    �� ��1� m    �� ���  < ! - -�1  �2  �3  � o     �0�0 0 xlist XList� o      �/�/ 0 out_list  � ��� l   �.�-�,�.  �-  �,  � ��� Z    '���+�*� H    �� E   ��� J    �� ��� m    �� ���  � ��)� m    �(
�( 
msng�)  � n   ��� o    �'�' 0 	_contents  �  f    � n   #��� I    #�&��%�& 0 push  � ��$� n   ��� o    �#�# 0 	_contents  �  f    �$  �%  � o    �"�" 0 out_list  �+  �*  � ��� l  ( (�!� ��!  �   �  � ��� r   ( /��� I   ( -���� 0 	attr_text  �  �  � o      �� 	0 attrs  � ��� Z   0 @����� >  0 3��� o   0 1�� 	0 attrs  � m   1 2�� ���  � n  6 <��� I   7 <���� 0 push  � ��� o   7 8�� 	0 attrs  �  �  � o   6 7�� 0 out_list  �  �  � ��� n  A G��� I   B G���� 0 push  � ��� m   B C�� ���  - - >�  �  � o   A B�� 0 out_list  � ��� L   H O�� n  H N��� I   I N���� 0 as_text_with  � ��� 1   I J�

�
 
spac�  �  � o   H I�	�	 0 out_list  �  � ��� l     ����  �  �  � ��� i    ��� I      ���� 0 	make_with  �    o      �� 
0 a_text   � o      � �  0 att_list  �  �  � k       r       f      o      ���� 0 a_class   �� h    ��	�� (0 commenttaginstance CommentTagInstance	 k      

  j     ��
�� 
pare o     ���� 0 a_class    j   	 ��
�� 
pnam m   	 
 � 4 H T M L E l e m e n t C o m m e n t I n s t a n c e  j    ���� 0 	_contents   o    ���� 
0 a_text   �� j    "���� 0 _attributes   n   ! I    !������ 0 make_with_pairs   �� o    ���� 0 att_list  ��  ��   o    ���� 0 xdict XDict��  ��  �  �  l     ��������  ��  ��    l      �� !��    � �!@abstruct
Make a new HTMLElement instance for a comment tag
@param a_conents (text) : contents of comment
@param att_list (list) : 
@result script : an HTMLElement instance for a comment tag
   ! �""� ! @ a b s t r u c t 
 M a k e   a   n e w   H T M L E l e m e n t   i n s t a n c e   f o r   a   c o m m e n t   t a g 
 @ p a r a m   a _ c o n e n t s   ( t e x t )   :   c o n t e n t s   o f   c o m m e n t 
 @ p a r a m   a t t _ l i s t   ( l i s t )   :   
 @ r e s u l t   s c r i p t   :   a n   H T M L E l e m e n t   i n s t a n c e   f o r   a   c o m m e n t   t a g 
 #$# i  fi%&% I      ��'���� 0 comment_with  ' ()( o      ���� 0 
a_contents  ) *��* o      ���� 0 att_list  ��  ��  & L     ++ n    ,-, I    ��.���� 0 	make_with  . /0/ o    ���� 0 
a_contents  0 1��1 o    ���� 0 att_list  ��  ��  - o     ���� 0 htmlcomment HTMLComment$ 232 l     ��������  ��  ��  3 454 l      ��67��  6 2 ,!@group Appending Child Element and Contents   7 �88 X ! @ g r o u p   A p p e n d i n g   C h i l d   E l e m e n t   a n d   C o n t e n t s5 9:9 l     ��������  ��  ��  : ;<; l      ��=>��  = | v!@abstruct
Append text into the contents of the tag.
@param a_value (HTMLElement, text or XText) 
@result script : me
   > �?? � ! @ a b s t r u c t 
 A p p e n d   t e x t   i n t o   t h e   c o n t e n t s   o f   t h e   t a g . 
 @ p a r a m   a _ v a l u e   ( H T M L E l e m e n t ,   t e x t   o r   X T e x t )   
 @ r e s u l t   s c r i p t   :   m e 
< @A@ i  jmBCB I      ��D���� 0 push  D E��E o      ���� 0 a_value  ��  ��  C k     FF GHG Z     IJ��KI =    LML n     NON m    ��
�� 
pclsO o     ���� 0 a_value  M m    ��
�� 
listJ n   PQP n  	 RSR I    ��T���� 0 add_from_list  T U��U o    ���� 0 a_value  ��  ��  S o   	 ���� 0 	_contents  Q  f    	��  K n   VWV n   XYX I    ��Z���� 0 push  Z [��[ o    ���� 0 a_value  ��  ��  Y o    ���� 0 	_contents  W  f    H \��\ L    ]]  f    ��  A ^_^ l     ��������  ��  ��  _ `a` i  nqbcb I      ��d���� 0 push_content  d e��e o      ���� 0 a_value  ��  ��  c L     ff I     ��g���� 0 push  g h��h o    ���� 0 a_value  ��  ��  a iji l     ��������  ��  ��  j klk i  rumnm I      ��o���� 0 unshift  o p��p o      ���� 0 a_value  ��  ��  n k     qq rsr n    tut n   vwv I    ��x���� 0 unshift  x y��y o    ���� 0 a_value  ��  ��  w o    ���� 0 	_contents  u  f     s z��z L   	 {{  f   	 
��  l |}| l     ��������  ��  ��  } ~~ l      ������  �!@abstruct
Append a new HTMLElement instance as a child node.
@param elem_name (text) 
@param att_list (list) : {{"att1", "value1"}, {"att2", "value2"}}. When threre is no options,  pass an empty list �g{}�h.
@result script : Appended HTMLElement instance
   � ���� ! @ a b s t r u c t 
 A p p e n d   a   n e w   H T M L E l e m e n t   i n s t a n c e   a s   a   c h i l d   n o d e . 
 @ p a r a m   e l e m _ n a m e   ( t e x t )   
 @ p a r a m   a t t _ l i s t   ( l i s t )   :   { { " a t t 1 " ,   " v a l u e 1 " } ,   { " a t t 2 " ,   " v a l u e 2 " } } .   W h e n   t h r e r e   i s   n o   o p t i o n s ,     p a s s   a n   e m p t y   l i s t    { }  . 
 @ r e s u l t   s c r i p t   :   A p p e n d e d   H T M L E l e m e n t   i n s t a n c e  
 ��� i  vy��� I      ������� 0 push_element_with  � ��� o      ���� 0 	elem_name  � ���� o      ���� 0 att_list  ��  ��  � k     �� ��� r     	��� I     ������� 0 	make_with  � ��� o    ���� 0 	elem_name  � ���� o    ���� 0 att_list  ��  ��  � o      ���� 0 an_elem  � ��� I   
 ������� 0 push  � ���� o    ���� 0 an_elem  ��  ��  � ���� L    �� o    ���� 0 an_elem  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstruct
Append a new comment instance as a child node.
@param elem_name (text) 
@param att_list (list) : {{"att1", "value1"}, {"att2", "value2"}}. When threre is no options,  pass an empty list �g{}�h.
@result script : Appended comment instance
   � ���� ! @ a b s t r u c t 
 A p p e n d   a   n e w   c o m m e n t   i n s t a n c e   a s   a   c h i l d   n o d e . 
 @ p a r a m   e l e m _ n a m e   ( t e x t )   
 @ p a r a m   a t t _ l i s t   ( l i s t )   :   { { " a t t 1 " ,   " v a l u e 1 " } ,   { " a t t 2 " ,   " v a l u e 2 " } } .   W h e n   t h r e r e   i s   n o   o p t i o n s ,     p a s s   a n   e m p t y   l i s t    { }  . 
 @ r e s u l t   s c r i p t   :   A p p e n d e d   c o m m e n t   i n s t a n c e  
� ��� i  z}��� I      ������� 0 push_comment_with  � ��� o      ���� 0 	elem_name  � ���� o      ���� 0 att_list  ��  ��  � k     �� ��� r     	��� I     ������� 0 comment_with  � ��� o    ���� 0 	elem_name  � ���� o    ���� 0 att_list  ��  ��  � o      ���� 0 an_elem  � ��� I   
 ������� 0 push  � ���� o    ���� 0 an_elem  ��  ��  � ���� L    �� o    ���� 0 an_elem  ��  � ��� l     ��������  ��  ��  � ��� i  ~���� I      ������� 0 push_anchor_with  � ��� o      �~�~ 0 anchor_text  �  ��  � k     �� ��� r     ��� I     �}��|�} 0 	make_with  � ��� m    �� ���  a� ��{� J    �� ��� J    �� ��� m    �� ���  i d� ��z� o    �y�y 0 anchor_text  �z  � ��x� J    
�� ��� m    �� ���  n a m e� ��w� o    �v�v 0 anchor_text  �w  �x  �{  �|  � o      �u�u 0 an_elem  � ��� I    �t��s�t 0 push  � ��r� o    �q�q 0 an_elem  �r  �s  � ��p� L    �� o    �o�o 0 an_elem  �p  � ��� l     �n�m�l�n  �m  �l  � ��� l      �k���k  �  !@group Output    � ���  ! @ g r o u p   O u t p u t  � ��� l     �j�i�h�j  �i  �h  � ��� l      �g���g  � 5 /!@abstruct
Return HTML text data.
@result text
   � ��� ^ ! @ a b s t r u c t 
 R e t u r n   H T M L   t e x t   d a t a . 
 @ r e s u l t   t e x t 
� ��� i  ����� I      �f�e�d�f 0 as_html  �e  �d  � k     ��� ��� l     �c���c  � ( "log "start as_html in HTMLElement"   � ��� D l o g   " s t a r t   a s _ h t m l   i n   H T M L E l e m e n t "� ��� Z     ���b�a� n    ��� n   � � o    �`�` 0 is_empty    o    �_�_ 	0 _info  �  f     � L   	  b   	  I   	 �^�]�\�^ 0 	empty_tag  �]  �\   l   �[�Z n    n    o    �Y�Y 0 after_start   o    �X�X 	0 _info    f    �[  �Z  �b  �a  � 	
	 r    % I   #�W�V
�W .corecrel****      � null o    �U�U 0 xlist XList�V   o      �T�T 0 out_list  
  r   & - I   & +�S�R�Q�S 0 	start_tag  �R  �Q   o      �P�P 0 a_start_tag    Z   . I�O�N >  . 1 o   . /�M�M 0 a_start_tag   m   / 0 �   k   4 E  n  4 : I   5 :�L�K�L 0 push    �J  o   5 6�I�I 0 a_start_tag  �J  �K   o   4 5�H�H 0 out_list   !�G! n  ; E"#" I   < E�F$�E�F 0 push  $ %�D% n  < A&'& n  = A()( o   ? A�C�C 0 after_start  ) o   = ?�B�B 	0 _info  '  f   < =�D  �E  # o   ; <�A�A 0 out_list  �G  �O  �N   *+* r   J Q,-, n  J O./. n  K O010 o   M O�@�@ 0 after_start  1 o   K M�?�? 	0 _info  /  f   J K- o      �>�> 0 pre_end  + 232 l  R R�=�<�;�=  �<  �;  3 454 h   R Y�:6�: (0 tagcontentsbuilder TagContentsBuilder6 i     787 I      �99�8�9 0 do  9 :�7: o      �6�6 0 	a_content  �7  �8  8 k     �;; <=< r     >?> n     @A@ m    �5
�5 
pclsA o     �4�4 0 	a_content  ? o      �3�3 0 a_class  = B�2B Z    �CD�1EC =   	FGF o    �0�0 0 a_class  G m    �/
�/ 
scptD k    sHH IJI r    KLK n    MNM 1    �.
�. 
pnamN o    �-�- 0 	a_content  L o      �,�, 
0 a_name  J O�+O Z    sPQ�*RP C    STS o    �)�) 
0 a_name  T m    UU �VV  H T M L E l e m e n tQ k    bWW XYX Z    8Z[�(�'Z >   #\]\ o    �&�& 0 pre_end  ] n   "^_^ o     "�%�% 0 before_start  _ n    `a` o     �$�$ 	0 _info  a o    �#�# 0 	a_content  [ n  & 4bcb I   + 4�"d�!�" 0 push  d e� e n  + 0fgf o   . 0�� 0 before_start  g n  + .hih o   , .�� 	0 _info  i o   + ,�� 0 	a_content  �   �!  c o   & +�� 0 out_list  �(  �'  Y jkj n  9 Glml I   > G�n�� 0 push  n o�o n  > Cpqp I   ? C���� 0 as_text  �  �  q o   > ?�� 0 	a_content  �  �  m o   9 >�� 0 out_list  k rsr n  H Vtut I   M V�v�� 0 push  v w�w n  M Rxyx o   P R�� 0 	after_end  y n  M Pz{z o   N P�� 	0 _info  { o   M N�� 0 	a_content  �  �  u o   H M�� 0 out_list  s |�| r   W b}~} n  W \� o   Z \�� 0 	after_end  � n  W Z��� o   X Z�
�
 	0 _info  � o   W X�	�	 0 	a_content  ~ o      �� 0 pre_end  �  �*  R n  e s��� I   j s���� 0 push  � ��� n  j o��� I   k o���� 0 as_text  �  �  � o   j k�� 0 	a_content  �  �  � o   e j� �  0 out_list  �+  �1  E k   v ��� ��� n  v ���� I   { �������� 0 push  � ���� c   { ~��� o   { |���� 0 	a_content  � m   | }��
�� 
ctxt��  ��  � o   v {���� 0 out_list  � ���� r   � ���� m   � ��� ���  � o      ���� 0 pre_end  ��  �2  5 ��� n  Z b��� n  [ b��� I   ] b������� 0 	each_rush  � ���� o   ] ^���� (0 tagcontentsbuilder TagContentsBuilder��  ��  � o   [ ]���� 0 	_contents  �  f   Z [� ��� Z   c �������� l  c ~������ G   c ~��� A   c j��� n  c h��� I   d h�������� 0 item_counts  ��  ��  � o   c d���� 0 out_list  � m   h i���� � H   m z�� D   m y��� n  m s��� I   n s������� 0 item_at  � ���� m   n o��������  ��  � o   m n���� 0 out_list  � n  s x��� n  t x��� o   v x���� 0 
before_end  � o   t v���� 	0 _info  �  f   s t��  ��  � n  � ���� I   � �������� 0 push  � ���� n  � ���� n  � ���� o   � ����� 0 
before_end  � o   � ����� 	0 _info  �  f   � ���  ��  � o   � ����� 0 out_list  ��  ��  � ��� Z   � ������� =  � ���� o   � ����� 0 a_start_tag  � m   � ��� ���  � Z   � �������� =  � ���� n  � ���� I   � �������� 0 item_at  � ���� m   � ���������  ��  � o   � ����� 0 out_list  � o   � ����� 0 	_line_end  � I  � ������� 0 set_item  � o   � ����� 0 out_list  � ����
�� 
for � m   � ��� ���  � �����
�� 
at  � m   � ���������  ��  ��  ��  � n  � ���� I   � �������� 0 push  � ���� I   � ��������� 0 end_tag  ��  ��  ��  ��  � o   � ����� 0 out_list  � ��� l  � �������  � V Plog "end as_html in HTMLElement with outout : " & out_list's as_unicode_with("")   � ��� � l o g   " e n d   a s _ h t m l   i n   H T M L E l e m e n t   w i t h   o u t o u t   :   "   &   o u t _ l i s t ' s   a s _ u n i c o d e _ w i t h ( " " )� ���� L   � ��� n  � ���� I   � �������� 0 as_text_with  � ���� m   � ��� ���  ��  ��  � o   � ����� 0 out_list  ��  � ��� l     ��������  ��  ��  � ��� i  ����� I      �������� 0 plain_contents  ��  ��  � k     ,�� ��� l     ������  � 6 0log "start plain_contents for " & element_name()   � ��� ` l o g   " s t a r t   p l a i n _ c o n t e n t s   f o r   "   &   e l e m e n t _ n a m e ( )� ��� Z     ������� n    ��� n   ��� o    ���� 0 is_empty  � o    ���� 	0 _info  �  f     � L   	 �� m   	 
�� ���  ��  ��  � ��� l   ��������  ��  ��  � � � h    ���� ,0 plaincontentsbuilder PlainContentsBuilder i      I      ������ 0 do   �� o      ���� 0 	a_content  ��  ��   k     0  r     	
	 n      m    ��
�� 
pcls o     ���� 0 	a_content  
 o      ���� 0 a_class    Z    -�� =   	 o    ���� 0 a_class   m    ��
�� 
scpt Z    %�� C     l   ���� n     1    ��
�� 
pnam o    ���� 0 	a_content  ��  ��   m     �  H T M L E l e m e n t r     n    !  I    �������� 0 plain_contents  ��  ��  ! o    ���� 0 	a_content   o      ���� 0 x  ��   r    %"#" n   #$%$ I    #�������� 0 
as_unicode  ��  ��  % o    ���� 0 	a_content  # o      ���� 0 x  ��   r   ( -&'& c   ( +()( o   ( )���� 0 	a_content  ) m   ) *��
�� 
utxt' o      ���� 0 x   *��* L   . 0++ o   . /���� 0 x  ��    ,-, l   ��������  ��  ��  - ./. r    "010 n    232 n    454 I     ��6���� 0 map  6 7��7 o    ���� ,0 plaincontentsbuilder PlainContentsBuilder��  ��  5 o    ���� 0 	_contents  3  f    1 o      ���� 0 out_list  / 8��8 L   # ,99 n  # +:;: I   $ +��<���� 0 as_unicode_with  < =��= n  $ '>?> o   % '���� 0 	_line_end  ?  f   $ %��  ��  ; o   # $���� 0 out_list  ��  � @A@ l     ��������  ��  ��  A BCB i  ��DED I      ����~�� 0 as_text  �  �~  E L     FF I     �}�|�{�} 0 as_html  �|  �{  C GHG l     �z�y�x�z  �y  �x  H IJI i  ��KLK I      �w�v�u�w 0 
as_unicode  �v  �u  L L     MM I     �t�s�r�t 0 as_html  �s  �r  J NON l     �q�p�o�q  �p  �o  O PQP i  ��RSR I      �n�m�l�n 0 as_xhtml  �m  �l  S L     TT I     �k�j�i�k 0 as_html  �j  �i  Q UVU l     �h�g�f�h  �g  �f  V WXW l     �e�d�c�e  �d  �c  X YZY l      �b[\�b  [  !@group Accessor Methods    \ �]] 2 ! @ g r o u p   A c c e s s o r   M e t h o d s  Z ^_^ l     �a�`�_�a  �`  �_  _ `a` l      �^bc�^  b 2 ,!@abstruct Retun element name.@result text   c �dd X ! @ a b s t r u c t   R e t u n   e l e m e n t   n a m e .  @ r e s u l t   t e x t a efe i  ��ghg I      �]�\�[�] 0 element_name  �\  �[  h L     ii n    jkj o    �Z�Z 0 
_elem_name  k  f     f lml l     �Y�X�W�Y  �X  �W  m non l      �Vpq�V  p i c!@abstruct Set element name.
@param a_name (text)@result script : The target HTMLElement insntace   q �rr � ! @ a b s t r u c t   S e t   e l e m e n t   n a m e . 
 @ p a r a m   a _ n a m e   ( t e x t )  @ r e s u l t   s c r i p t   :   T h e   t a r g e t   H T M L E l e m e n t   i n s n t a c e o sts i  ��uvu I      �Uw�T�U 0 set_element_name  w x�Sx o      �R�R 
0 a_name  �S  �T  v k     yy z{z r     |}| o     �Q�Q 
0 a_name  } n     ~~ o    �P�P 0 
_elem_name    f    { ��O� L    ��  f    �O  t ��� l     �N�M�L�N  �M  �L  � ��� l      �K���K  � ] W!@abstruct Return atttibute value of specified name.
@param a_name (text)@result text   � ��� � ! @ a b s t r u c t   R e t u r n   a t t t i b u t e   v a l u e   o f   s p e c i f i e d   n a m e . 
 @ p a r a m   a _ n a m e   ( t e x t )  @ r e s u l t   t e x t � ��� i  ����� I      �J��I�J 0 attribute_value  � ��H� o      �G�G 
0 a_name  �H  �I  � L     	�� n    ��� n   ��� I    �F��E�F 0 value_for_key  � ��D� o    �C�C 
0 a_name  �D  �E  � o    �B�B 0 _attributes  �  f     � ��� l     �A�@�?�A  �@  �?  � ��� l      �>���>  � � �!@abstruct Set attibute of the tag.
@param a_name (text) : The name of the attribute
@param a_value (text) :  The value of the attribute@result script : The target HTMLElement insntace   � ���t ! @ a b s t r u c t   S e t   a t t i b u t e   o f   t h e   t a g . 
 @ p a r a m   a _ n a m e   ( t e x t )   :   T h e   n a m e   o f   t h e   a t t r i b u t e 
 @ p a r a m   a _ v a l u e   ( t e x t )   :     T h e   v a l u e   o f   t h e   a t t r i b u t e  @ r e s u l t   s c r i p t   :   T h e   t a r g e t   H T M L E l e m e n t   i n s n t a c e � ��� i  ����� I      �=��<�= 0 set_attribute  � ��� o      �;�; 
0 a_name  � ��:� o      �9�9 0 a_value  �:  �<  � k     �� ��� n    	��� n   	��� I    	�8��7�8 0 	set_value  � ��� o    �6�6 
0 a_name  � ��5� o    �4�4 0 a_value  �5  �7  � o    �3�3 0 _attributes  �  f     � ��2� L   
 ��  f   
 �2  � ��� l     �1�0�/�1  �0  �/  � ��� i  ����� I      �.�-�,�. 0 contents_ref  �-  �,  � L     �� n    ��� o    �+�+ 0 	_contents  �  f     � ��� l     �*�)�(�*  �)  �(  � ��� l     �'�&�%�'  �&  �%  � ��� l      �$���$  �   others    � ���    o t h e r s  � ��� i  ����� I      �#�"�!�# 0 dump  �"  �!  � k     "�� ��� r     ��� b     ��� b     ��� n    ��� o    � �  0 
_elem_name  �  f     � o    �
� 
ret � l   ���� n   ��� n   ��� I    ���� 0 dump  �  �  � o    �� 0 _attributes  �  f    �  �  � o      �� 0 a_result  � ��� r    ��� b    ��� b    ��� b    ��� o    �� 0 a_result  � m    �� ���  c o n t e n t s   :  � o    �
� 
ret � n   ��� n   ��� I    ���� 0 dump  �  �  � o    �� 0 	_contents  �  f    � o      �� 0 a_result  � ��� L     "�� o     !�� 0 a_result  �  � ��� l     ����  �  �  � ��� l      ����  �  	 private    � ���    p r i v a t e  � ��� i  ����� I      �
�	��
 0 	attr_text  �	  �  � k     t�� ��� r     	��� n    ��� n   ��� I    ���� 0 iterator  �  �  � o    �� 0 _attributes  �  f     � o      �� 0 an_iterator  � ��� r   
    I  
 ��
� .corecrel****      � null o   
 � �  0 xlist XList�   o      ���� 0 	attr_list  �  V    l k     g 	 r     '

 n    % I   ! %�������� 0 next  ��  ��   o     !���� 0 an_iterator   o      ���� 0 att_pair  	  X   ( R�� Z   8 M���� =  8 = n   8 ; m   9 ;��
�� 
pcls o   8 9���� 	0 a_val   m   ; <��
�� 
scpt r   @ I n  @ E I   A E�������� 0 
as_unicode  ��  ��   o   @ A���� 	0 a_val   n       1   F H��
�� 
pcnt o   E F���� 	0 a_val  ��  ��  �� 	0 a_val   o   + ,���� 0 att_pair   �� n  S g  I   T g��!���� 0 push  ! "��" b   T c#$# b   T a%&% b   T \'(' b   T Z)*) n   T X+,+ 4   U X��-
�� 
cobj- m   V W���� , o   T U���� 0 att_pair  * m   X Y.. �//  =( 1   Z [��
�� 
quot& n   \ `010 4   ] `��2
�� 
cobj2 m   ^ _���� 1 o   \ ]���� 0 att_pair  $ 1   a b��
�� 
quot��  ��    o   S T���� 0 	attr_list  ��   n   343 I    �������� 0 has_next  ��  ��  4 o    ���� 0 an_iterator   5��5 L   m t66 n  m s787 I   n s��9���� 0 as_unicode_with  9 :��: 1   n o��
�� 
spac��  ��  8 o   m n���� 0 	attr_list  ��  � ;<; l     ��������  ��  ��  < =>= i  ��?@? I      �������� 0 	empty_tag  ��  ��  @ k     "AA BCB l     ��DE��  D  log "start empty_tag"   E �FF * l o g   " s t a r t   e m p t y _ t a g "C GHG r     IJI I     �������� 0 	attr_text  ��  ��  J o      ���� 	0 attrs  H KLK Z    MN����M >   OPO o    	���� 	0 attrs  P m   	 
QQ �RR  N r    STS b    UVU 1    ��
�� 
spacV o    ���� 	0 attrs  T o      ���� 	0 attrs  ��  ��  L W��W L    "XX b    !YZY b    [\[ b    ]^] m    __ �``  <^ n   aba o    ���� 0 
_elem_name  b  f    \ o    ���� 	0 attrs  Z m     cc �dd    / >��  > efe l     ��������  ��  ��  f ghg i  ��iji I      �������� 0 	start_tag  ��  ��  j k     1kk lml Z     no����n =    pqp n    rsr o    ���� 0 
_elem_name  s  f     q m    tt �uu  o L    
vv m    	ww �xx  ��  ��  m yzy r    {|{ I    �������� 0 	attr_text  ��  ��  | o      ���� 	0 attrs  z }~} Z    &����� >   ��� o    ���� 	0 attrs  � m    �� ���  � r    "��� b     ��� 1    ��
�� 
spac� o    ���� 	0 attrs  � o      ���� 	0 attrs  ��  ��  ~ ���� L   ' 1�� b   ' 0��� b   ' .��� b   ' ,��� m   ' (�� ���  <� n  ( +��� o   ) +���� 0 
_elem_name  �  f   ( )� o   , -���� 	0 attrs  � m   . /�� ���  >��  h ��� l     ��������  ��  ��  � ��� i  ����� I      �������� 0 end_tag  ��  ��  � k     �� ��� Z     ������� =    ��� n    ��� o    ���� 0 
_elem_name  �  f     � m    �� ���  � L    
�� m    	�� ���  ��  ��  � ��� l   ��������  ��  ��  � ���� L    �� b    ��� b    ��� m    �� ���  < /� n   ��� o    ���� 0 
_elem_name  �  f    � m    �� ���  >��  � ��� l     ��������  ��  ��  � ��� i  ����� I      ������� 0 walk  � ���� o      ���� 
0 walker  ��  ��  � k     ��� ��� Z     ������� H     �� n    ��� I    ������� 0 do  � ����  f    ��  ��  � o     ���� 
0 walker  � L   
 �� m   
 ��
�� boovfals��  ��  � ��� r    ��� n   ��� n   ��� I    �������� 0 iterator  ��  ��  � o    ���� 0 	_contents  �  f    � o      ���� 0 an_iterator  � ��� V    ���� k   % ~�� ��� r   % ,��� n  % *��� I   & *�������� 0 next  ��  ��  � o   % &���� 0 an_iterator  � o      ���� 0 x  � ���� Z   - ~������� =  - 2��� n   - 0��� m   . 0��
�� 
pcls� o   - .���� 0 x  � m   0 1��
�� 
scpt� Q   5 z���� k   8 M�� ��� n  8 <��� o   9 ;�� 0 walk  � o   8 9�~�~ 0 x  � ��}� Z   = M���|�{� H   = D�� n  = C��� I   > C�z��y�z 0 walk  � ��x� o   > ?�w�w 
0 walker  �x  �y  � o   = >�v�v 0 x  � L   G I�� m   G H�u
�u boovfals�|  �{  �}  � R      �t��
�t .ascrerr ****      � ****� o      �s�s 0 msg  � �r��q
�r 
errn� o      �p�p 	0 errno  �q  � k   U z�� ��� Z   U i���o�n� H   U \�� E  U [   J   U Y  m   U V�m�m�\ �l m   V W�k�k�@�l   o   Y Z�j�j 	0 errno  � R   _ e�i
�i .ascrerr ****      � **** o   c d�h�h 0 msg   �g�f
�g 
errn o   a b�e�e 	0 errno  �f  �o  �n  � 	�d	 Z   j z
�c�b
 H   j q n  j p I   k p�a�`�a 0 do   �_ o   k l�^�^ 0 x  �_  �`   o   j k�]�] 
0 walker   L   t v m   t u�\
�\ boovfals�c  �b  �d  ��  ��  ��  � n   $ I     $�[�Z�Y�[ 0 has_next  �Z  �Y   o     �X�X 0 an_iterator  � �W L   � � m   � ��V
�V boovtrue�W  �  l     �U�T�S�U  �T  �S    i  �� I      �R�Q�P�R 	0 debug  �Q  �P   k       l      �O �O   c ]
	set a_tag to make_with("a", {{"href", "hello"}})
	a_tag's push("yo")
	log a_tag's as_html
	     �!! � 
 	 s e t   a _ t a g   t o   m a k e _ w i t h ( " a " ,   { { " h r e f " ,   " h e l l o " } } ) 
 	 a _ t a g ' s   p u s h ( " y o " ) 
 	 l o g   a _ t a g ' s   a s _ h t m l 
 	 "#" r     $%$ I    �N�M�L
�N .corecrel****      � null�M  �L  % o      �K�K 0 par_container  # &�J& I   �I'�H
�I .ascrcmnt****      � ****' n   ()( I   	 �G�F�E�G 0 as_html  �F  �E  ) o    	�D�D 0 par_container  �H  �J   *+* l     �C�B�A�C  �B  �A  + ,-, i  ��./. I      �@�?�>�@ 0 open_helpbook  �?  �>  / Q     ,0120 O   343 I   
 �=5�<�= 0 do  5 6�;6 I   �:7�9
�: .earsffdralis        afdr7  f    �9  �;  �<  4 4    �88
�8 
scpt8 m    99 �::  O p e n H e l p B o o k1 R      �7;<
�7 .ascrerr ****      � ****; o      �6�6 0 msg  < �5=�4
�5 
errn= o      �3�3 	0 errno  �4  2 k    ,>> ?@? I   "�2�1�0
�2 .miscactvnull��� ��� null�1  �0  @ A�/A I  # ,�.B�-
�. .sysodisAaleR        TEXTB l  # (C�,�+C b   # (DED b   # &FGF o   # $�*�* 0 msg  G o   $ %�)
�) 
ret E o   & '�(�( 	0 errno  �,  �+  �-  �/  - HIH l     �'�&�%�'  �&  �%  I JKJ i  ��LML I     �$�#�"
�$ .aevtoappnull  �   � ****�#  �"  M k     NN OPO l     �!QR�!  Q  return debug()   R �SS  r e t u r n   d e b u g ( )P T� T I     ���� 0 open_helpbook  �  �  �   K U�U l     ����  �  �  �       0�VWXY +Z[\]^_`abcdefghijklmnopqrstuvwxyz{|}~�����  V .��������������
�	��������� ��������������������������������������������
� 
pimr� 0 xlist XList� 0 xdict XDict
� 
pnam� 0 	_line_end  � 0 line_end  � 0 set_line_end  � 0 _inline_tags  � 0 _inline_tag_info  � 0 _br_tags  � 0 _br_tag_info  � 0 _oneline_empty_tags  � 0 _oneline_empty_tag_info  �
 0 	_par_tags  �	 0 _par_tags_info  � 0 _div_type_info  � 0 tag_info_for  � 0 	make_with  
� .corecrel****      � null� 0 htmlcomment HTMLComment� 0 comment_with  � 0 push  � 0 push_content  �  0 unshift  �� 0 push_element_with  �� 0 push_comment_with  �� 0 push_anchor_with  �� 0 as_html  �� 0 plain_contents  �� 0 as_text  �� 0 
as_unicode  �� 0 as_xhtml  �� 0 element_name  �� 0 set_element_name  �� 0 attribute_value  �� 0 set_attribute  �� 0 contents_ref  �� 0 dump  �� 0 	attr_text  �� 0 	empty_tag  �� 0 	start_tag  �� 0 end_tag  �� 0 walk  �� 	0 debug  �� 0 open_helpbook  
�� .aevtoappnull  �   � ****W ����� �  ����� �� ��
�� 
vers��  � �����
�� 
cobj� ��   �� 
�� 
scpt��  � �����
�� 
cobj� ��   �� !
�� 
scpt��  � �����
�� 
cobj� ��   ��
�� 
osax��  X ��   �� 
�� 
scptY ��   �� !
�� 
scptZ ���  
[ �� J���������� 0 line_end  ��  ��  �  � ���� 0 	_line_end  �� )�,E\ �� X���������� 0 set_line_end  �� ����� �  ���� 
0 a_char  ��  � ���� 
0 a_char  � ���� 0 	_line_end  �� �)�,F] ����� �   g k o s w {  � � � � � � �^ ������� 0 is_empty  
�� boovfals� �� ���� 0 before_start  � �� ���� 0 after_start  � �� ���� 0 
before_end  � �� ����� 0 	after_end  ��  _ ����� �   �` ������� 0 is_empty  
�� boovtrue� �� ���� 0 before_start  � ��Z��� 0 after_start  � �� ���� 0 
before_end  � �� ����� 0 	after_end  ��  a ����� �   � � � �b ������� 0 is_empty  
�� boovtrue� ��Z��� 0 before_start  � ��Z��� 0 after_start  � �� ���� 0 
before_end  � �� ����� 0 	after_end  ��  c ����� 	� 	  � �d ������� 0 is_empty  
�� boovfals� ��Z��� 0 before_start  � ��&��� 0 after_start  � ��*��� 0 
before_end  � ��Z���� 0 	after_end  ��  e ������� 0 is_empty  
�� boovfals� ��Z��� 0 before_start  � ��Z��� 0 after_start  � ��Z��� 0 
before_end  � ��Z���� 0 	after_end  ��  f ��A���������� 0 tag_info_for  �� ����� �  ���� 
0 a_name  ��  � ���� 
0 a_name  �  �� @b  � b  Y .b  	� b  Y b  � b  Y b  g ��j���������� 0 	make_with  �� ����� �  ������ 0 	elem_name  �� 0 att_list  ��  � ���������� 0 	elem_name  �� 0 att_list  �� 0 a_class  �� *0 htmlelementinstance HTMLElementInstance� ��z��� *0 htmlelementinstance HTMLElementInstance� �����������
�� .ascrinit****      � ****� k     9�� |�� ��� ��� ��� ��� �����  ��  ��  � ������������
�� 
pare
�� 
pnam�� 0 
_elem_name  �� 0 _attributes  �� 0 	_contents  �� 	0 _info  � 
�������������������
�� 
pare
�� 
pnam�� 0 
_elem_name  �� 0 make_with_pairs  �� 0 _attributes  
�� .corecrel****      � null�� 0 	_contents  �� 0 tag_info_for  �� 	0 _info  �� :b  N  O�Ob   �Ob  b  k+ �Ob  j �O*b   k+ ��� )E�O��K S�h �����~���}
�� .corecrel****      � null�  �~  �  � ��|�| 0 	make_with  �} 
*�jvl+ i �{�  ��{ 0 htmlcomment HTMLComment�  �b��� �z�y�x�z 	0 _info  �y 0 as_html  �x 0 	make_with  � �w��v�u���t�w 0 as_html  �v  �u  � �s�r�s 0 out_list  �r 	0 attrs  � ��q��p�o�n�m���l�k�q 0 	make_with  
�p 
msng�o 0 	_contents  �n 0 push  �m 0 	attr_text  
�l 
spac�k 0 as_text_with  �t Pb  �kvk+ E�O��lv)�, �)�,k+ Y hO*j+ E�O�� ��k+ Y hO��k+ O��k+ 
� �j��i�h���g�j 0 	make_with  �i �f��f �  �e�d�e 
0 a_text  �d 0 att_list  �h  � �c�b�a�`�c 
0 a_text  �b 0 att_list  �a 0 a_class  �` (0 commenttaginstance CommentTagInstance� �_	��_ (0 commenttaginstance CommentTagInstance� �^��]�\���[
�^ .ascrinit****      � ****� k     "�� �� �� �� �Z�Z  �]  �\  � �Y�X�W�V
�Y 
pare
�X 
pnam�W 0 	_contents  �V 0 _attributes  � �U�T�S�R�Q
�U 
pare
�T 
pnam�S 0 	_contents  �R 0 make_with_pairs  �Q 0 _attributes  �[ #b  N  O�Ob   �Ob  b  k+ ��g )E�O��K S�j �P&�O�N���M�P 0 comment_with  �O �L��L �  �K�J�K 0 
a_contents  �J 0 att_list  �N  � �I�H�I 0 
a_contents  �H 0 att_list  � �G�G 0 	make_with  �M b  ��l+  k �FC�E�D���C�F 0 push  �E �B��B �  �A�A 0 a_value  �D  � �@�@ 0 a_value  � �?�>�=�<�;
�? 
pcls
�> 
list�= 0 	_contents  �< 0 add_from_list  �; 0 push  �C ��,�  )�,�k+ Y 
)�,�k+ O)l �:c�9�8���7�: 0 push_content  �9 �6��6 �  �5�5 0 a_value  �8  � �4�4 0 a_value  � �3�3 0 push  �7 *�k+  m �2n�1�0���/�2 0 unshift  �1 �.��. �  �-�- 0 a_value  �0  � �,�, 0 a_value  � �+�*�+ 0 	_contents  �* 0 unshift  �/ )�,�k+ O)n �)��(�'���&�) 0 push_element_with  �( �%��% �  �$�#�$ 0 	elem_name  �# 0 att_list  �'  � �"�!� �" 0 	elem_name  �! 0 att_list  �  0 an_elem  � ��� 0 	make_with  � 0 push  �& *��l+  E�O*�k+ O�o �������� 0 push_comment_with  � ��� �  ��� 0 	elem_name  � 0 att_list  �  � ���� 0 	elem_name  � 0 att_list  � 0 an_elem  � ��� 0 comment_with  � 0 push  � *��l+  E�O*�k+ O�p �������� 0 push_anchor_with  � ��� �  �� 0 anchor_text  �  � ��
� 0 anchor_text  �
 0 an_elem  � ����	��	 0 	make_with  � 0 push  � *��lv�lvlvl+ E�O*�k+ O�q �������� 0 as_html  �  �  � ���� � 0 out_list  � 0 a_start_tag  � 0 pre_end  �  (0 tagcontentsbuilder TagContentsBuilder� ����������������6������������������������������ 	0 _info  �� 0 is_empty  �� 0 	empty_tag  �� 0 after_start  
�� .corecrel****      � null�� 0 	start_tag  �� 0 push  �� (0 tagcontentsbuilder TagContentsBuilder� �����������
�� .ascrinit****      � ****� k     �� 6����  ��  ��  � ���� 0 do  � �� ��8���������� 0 do  �� ����� �  ���� 0 	a_content  ��  � �������� 0 	a_content  �� 0 a_class  �� 
0 a_name  � ������U�������������
�� 
pcls
�� 
scpt
�� 
pnam�� 	0 _info  �� 0 before_start  �� 0 push  �� 0 as_text  �� 0 	after_end  
�� 
ctxt�� ���,E�O��  l��,E�O�� Ob  ��,�, b   ��,�,k+ Y hOb   �j+ k+ Ob   ��,�,k+ O��,�,Ec  Y b   �j+ k+ Y b   ��&k+ O�Ec  �� L  �� 0 	_contents  �� 0 	each_rush  �� 0 item_counts  �� 0 item_at  �� 0 
before_end  
�� 
bool
�� 
for 
�� 
at  �� �� 0 set_item  �� 0 end_tag  �� 0 as_text_with  � �)�,�,E *j+ )�,�,%Y hOb  j E�O*j+ E�O�� ��k+ O�)�,�,k+ Y hO)�,�,E�O��K 
S�O)�,�k+ O�j+ k
 �ik+ )�,�,a & �)�,�,k+ Y hO�a   )�ik+ b    �a a a ia  Y hY �*j+ k+ O�a k+ r ������������� 0 plain_contents  ��  ��  � ������ ,0 plaincontentsbuilder PlainContentsBuilder�� 0 out_list  � 
������������������ 	0 _info  �� 0 is_empty  �� ,0 plaincontentsbuilder PlainContentsBuilder� �����������
�� .ascrinit****      � ****� k     �� ����  ��  ��  � ���� 0 do  � �� ������������ 0 do  �� ����� �  ���� 0 	a_content  ��  � �������� 0 	a_content  �� 0 a_class  �� 0 x  � ������������
�� 
pcls
�� 
scpt
�� 
pnam�� 0 plain_contents  �� 0 
as_unicode  
�� 
utxt�� 1��,E�O��  ��,� �j+ E�Y 	�j+ E�Y ��&E�O��� L  �� 0 	_contents  �� 0 map  �� 0 	_line_end  �� 0 as_unicode_with  �� -)�,�,E �Y hO��K S�O)�,�k+ E�O�)�,k+ 	s ��E���������� 0 as_text  ��  ��  �  � ���� 0 as_html  �� *j+  t ��L����� ���� 0 
as_unicode  ��  ��  �    ���� 0 as_html  �� *j+  u ��S�������� 0 as_xhtml  ��  ��     ���� 0 as_html  �� *j+  v ��h�������� 0 element_name  ��  ��     ���� 0 
_elem_name  �� )�,Ew ��v�������� 0 set_element_name  �� ����   ���� 
0 a_name  ��   ���� 
0 a_name   ���� 0 
_elem_name  �� 	�)�,FO)x �������	���� 0 attribute_value  �� ��
�� 
  ���� 
0 a_name  ��   ���� 
0 a_name  	 ������ 0 _attributes  �� 0 value_for_key  �� 
)�,�k+ y ����������� 0 set_attribute  �� ����   ������ 
0 a_name  �� 0 a_value  ��   ������ 
0 a_name  �� 0 a_value   ������ 0 _attributes  �� 0 	set_value  �� )�,��l+ O)z �������~�� 0 contents_ref  ��  �     �}�} 0 	_contents  �~ )�,E{ �|��{�z�y�| 0 dump  �{  �z   �x�x 0 a_result   �w�v�u�t��s�w 0 
_elem_name  
�v 
ret �u 0 _attributes  �t 0 dump  �s 0 	_contents  �y #)�,�%)�,j+ %E�O��%�%)�,j+ %E�O�| �r��q�p�o�r 0 	attr_text  �q  �p   �n�m�l�k�n 0 an_iterator  �m 0 	attr_list  �l 0 att_pair  �k 	0 a_val   �j�i�h�g�f�e�d�c�b�a�`�_.�^�]�\�[�j 0 _attributes  �i 0 iterator  
�h .corecrel****      � null�g 0 has_next  �f 0 next  
�e 
kocl
�d 
cobj
�c .corecnte****       ****
�b 
pcls
�a 
scpt�` 0 
as_unicode  
�_ 
pcnt
�^ 
quot�] 0 push  
�\ 
spac�[ 0 as_unicode_with  �o u)�,j+ E�Ob  j E�O Uh�j+ �j+ E�O )�[��l kh ��,�  �j+ 
��,FY h[OY��O���k/�%�%��l/%�%k+ [OY��O��k+ } �Z@�Y�X�W�Z 0 	empty_tag  �Y  �X   �V�V 	0 attrs   �UQ�T_�Sc�U 0 	attr_text  
�T 
spac�S 0 
_elem_name  �W #*j+  E�O�� 
 %E�Y hO�)�,%�%�%~ �Rj�Q�P�O�R 0 	start_tag  �Q  �P   �N�N 	0 attrs   �Mtw�L��K���M 0 
_elem_name  �L 0 	attr_text  
�K 
spac�O 2)�,�  �Y hO*j+ E�O�� 
Š%E�Y hO�)�,%�%�% �J��I�H�G�J 0 end_tag  �I  �H     �F�����F 0 
_elem_name  �G )�,�  �Y hO�)�,%�%� �E��D�C�B�E 0 walk  �D �A�A   �@�@ 
0 walker  �C   �?�>�=�<�;�? 
0 walker  �> 0 an_iterator  �= 0 x  �< 0 msg  �; 	0 errno   �:�9�8�7�6�5�4�3�2�1�0�/�: 0 do  �9 0 	_contents  �8 0 iterator  �7 0 has_next  �6 0 next  
�5 
pcls
�4 
scpt�3 0 walk  �2 0 msg   �.�-�,
�. 
errn�- 	0 errno  �,  �1�\�0�@
�/ 
errn�B ��)k+   fY hO)�,j+ E�O gh�j+ �j+ E�O��,�  J ��,EO��k+  fY hW ,X  	��lv� )�l�Y hO��k+   fY hY h[OY��Oe� �+�*�)�(�+ 	0 debug  �*  �)   �'�' 0 par_container   �&�%�$
�& .corecrel****      � null�% 0 as_html  
�$ .ascrcmnt****      � ****�( *j  E�O�j+ j � �#/�"�! !� �# 0 open_helpbook  �"  �!    ��� 0 msg  � 	0 errno  ! 	�9���"���
� 
scpt
� .earsffdralis        afdr� 0 do  � 0 msg  " ���
� 
errn� 	0 errno  �  
� .miscactvnull��� ��� null
� 
ret 
� .sysodisAaleR        TEXT�  - )��/ *)j k+ UW X  *j O��%�%j � �M��#$�
� .aevtoappnull  �   � ****�  �  #  $ �� 0 open_helpbook  � *j+  ascr  ��ޭ