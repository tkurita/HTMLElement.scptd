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
lnfd 0  2 3 2 l     ��������  ��  ��   3  4 5 4 l      �� 6 7��   6ga!@references
Home page || http://www.script-factory.net/XModules/HTMLElement/en/index.html
ChangeLog || http://www.script-factory.net/XModules/HTMLElement/changelog.html
Repository || https://github.com/tkurita/HTMLElement.scptd

@title HTMLElement Reference
* Version : 1.0
* Author : Kurita Tetsuro ((<scriptfactory@mac.com>))
* Requirements : OS X 10.9 or later
* ((<Home page>)) || ((<ChangeLog>)) || ((<Repository>)) 

HTMLElement is an AppleScript libraryt to build HTML with programming.

This library is useful when a kind of data is converted into HTML data.

The root object of HTMLElement can be made by the constructor method of ((<make_with>)). 
First argument of ((<make_with>)) is name of the tag. 
Attributes of the tag can be specified in second argument as a list of lists. 

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
    7 � 8 8� ! @ r e f e r e n c e s 
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
 H T M L E l e m e n t   i s   a n   A p p l e S c r i p t   l i b r a r y t   t o   b u i l d   H T M L   w i t h   p r o g r a m m i n g . 
 
 T h i s   l i b r a r y   i s   u s e f u l   w h e n   a   k i n d   o f   d a t a   i s   c o n v e r t e d   i n t o   H T M L   d a t a . 
 
 T h e   r o o t   o b j e c t   o f   H T M L E l e m e n t   c a n   b e   m a d e   b y   t h e   c o n s t r u c t o r   m e t h o d   o f   ( ( < m a k e _ w i t h > ) ) .   
 F i r s t   a r g u m e n t   o f   ( ( < m a k e _ w i t h > ) )   i s   n a m e   o f   t h e   t a g .   
 A t t r i b u t e s   o f   t h e   t a g   c a n   b e   s p e c i f i e d   i n   s e c o n d   a r g u m e n t   a s   a   l i s t   o f   l i s t s .   
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
0 a_name  S V�sV L   0 6WW o   0 5�r�r 0 _par_tags_info  �s  G L   9 ?XX o   9 >�q�q 0 _div_type_info  ? YZY l     �p�o�n�p  �o  �n  Z [\[ l      �m]^�m  ] _ Yprivate
@abstruct encode character to html entities
@param a_xtext (XText)
@result XText
   ^ �__ � p r i v a t e 
 @ a b s t r u c t   e n c o d e   c h a r a c t e r   t o   h t m l   e n t i t i e s 
 @ p a r a m   a _ x t e x t   ( X T e x t ) 
 @ r e s u l t   X T e x t 
\ `a` i  PSbcb I      �ld�k�l 0 encode_to_entities  d e�je o      �i�i 0 a_xtext  �j  �k  c k     *ff ghg r     	iji n    klk I    �hm�g�h 0 replace  m non m    pp �qq  &o r�fr m    ss �tt 
 & a m p ;�f  �g  l o     �e�e 0 a_xtext  j o      �d�d 0 a_xtext  h uvu r   
 wxw n  
 yzy I    �c{�b�c 0 replace  { |}| m    ~~ �  >} ��a� m    �� ���  & g t ;�a  �b  z o   
 �`�` 0 a_xtext  x o      �_�_ 0 a_xtext  v ��� r    ��� n   ��� I    �^��]�^ 0 replace  � ��� m    �� ���  <� ��\� m    �� ���  & l t ;�\  �]  � o    �[�[ 0 a_xtext  � o      �Z�Z 0 a_xtext  � ��� r    '��� n   %��� I    %�Y��X�Y 0 replace  � ��� 1     �W
�W 
quot� ��V� m     !�� ���  & q u o t ;�V  �X  � o    �U�U 0 a_xtext  � o      �T�T 0 a_xtext  � ��S� L   ( *�� o   ( )�R�R 0 a_xtext  �S  a ��� l     �Q�P�O�Q  �P  �O  � ��� l      �N���N  � " !@group Constructor Methods    � ��� 8 ! @ g r o u p   C o n s t r u c t o r   M e t h o d s  � ��� l     �M�L�K�M  �L  �K  � ��� l      �J���J  ���!@abstruct
Make a new HTMLElement instance
@param elem_name (text)
@param att_list (list) : {{"att1", "value1"}, {"att2", "value2"}}. When threre is no options,  pass an empty list �g{}�h.
@result script : an HTMLElement instance
@example
use HTMLElement : script "HTMLElement"tell HTMLElement's make_with("p", {{"id", "hello"}, {"align", "center"}})	push("great contents")	log as_html()end tell(*<p id="hello" align="center">great contents</p>*)
   � ���� ! @ a b s t r u c t 
 M a k e   a   n e w   H T M L E l e m e n t   i n s t a n c e 
 @ p a r a m   e l e m _ n a m e   ( t e x t ) 
 @ p a r a m   a t t _ l i s t   ( l i s t )   :   { { " a t t 1 " ,   " v a l u e 1 " } ,   { " a t t 2 " ,   " v a l u e 2 " } } .   W h e n   t h r e r e   i s   n o   o p t i o n s ,     p a s s   a n   e m p t y   l i s t    { }  . 
 @ r e s u l t   s c r i p t   :   a n   H T M L E l e m e n t   i n s t a n c e 
 @ e x a m p l e 
 u s e   H T M L E l e m e n t   :   s c r i p t   " H T M L E l e m e n t "  t e l l   H T M L E l e m e n t ' s   m a k e _ w i t h ( " p " ,   { { " i d " ,   " h e l l o " } ,   { " a l i g n " ,   " c e n t e r " } } )  	 p u s h ( " g r e a t   c o n t e n t s " )  	 l o g   a s _ h t m l ( )  e n d   t e l l  ( * < p   i d = " h e l l o "   a l i g n = " c e n t e r " > g r e a t   c o n t e n t s < / p > * )  
� ��� i  TW��� I      �I��H�I 0 	make_with  � ��� o      �G�G 0 	elem_name  � ��F� o      �E�E 0 att_list  �F  �H  � k     �� ��� l     �D���D  � * $log "start make_with in HTMLElement"   � ��� H l o g   " s t a r t   m a k e _ w i t h   i n   H T M L E l e m e n t "� ��� r     ���  f     � o      �C�C 0 a_class  � ��B� h    �A��A *0 htmlelementinstance HTMLElementInstance� k      �� ��� j     �@�
�@ 
pare� o     �?�? 0 a_class  � ��� l     ���� j   	 �>�
�> 
pnam� m   	 
�� ��� & H T M L E l e m e n t I n s t a n c e� < 6 required when loaded by ModuleLoadder due to unknown.   � ��� l   r e q u i r e d   w h e n   l o a d e d   b y   M o d u l e L o a d d e r   d u e   t o   u n k n o w n .� ��� j    �=��= 0 
_elem_name  � o    �<�< 0 	elem_name  � ��� j    "�;��; 0 _attributes  � n   !��� I    !�:��9�: 0 make_with_pairs  � ��8� o    �7�7 0 att_list  �8  �9  � o    �6�6 0 xdict XDict� ��� j   # -�5��5 0 	_contents  � I  # ,�4��3
�4 .corecrel****      � null� o   # (�2�2 0 xlist XList�3  � ��1� j   . 9�0��0 	0 _info  � I   . 8�/��.�/ 0 tag_info_for  � ��-� o   / 4�,�, 0 	elem_name  �-  �.  �1  �B  � ��� l     �+�*�)�+  �*  �)  � ��� i  X[��� I     �(�'�&
�( .corecrel****      � null�'  �&  � L     	�� I     �%��$�% 0 	make_with  � ��� m    �� ���  � ��#� J    �"�"  �#  �$  � ��� l     �!� ��!  �   �  � ��� h  \i��� 0 htmlcomment HTMLComment� k      �� ��� j     ��� 	0 _info  � o     �� 0 _oneline_empty_tag_info  � ��� l     ����  �  �  � ��� i    
��� I      ���� 0 as_html  �  �  � k     O�� ��� r     � � n     I    ��� 0 	make_with   � J     � m     �  < ! - -�  �  �   o     �� 0 xlist XList  o      �� 0 out_list  � 	
	 l   ����  �  �  
  Z    '�� H     E    J      m     �   �
 m    �	
�	 
msng�
   n    o    �� 0 	_contents    f     n   # I    #��� 0 push   � n    o    �� 0 	_contents    f    �  �   o    �� 0 out_list  �  �    !  l  ( (��� �  �  �   ! "#" r   ( /$%$ I   ( -�������� 0 	attr_text  ��  ��  % o      ���� 	0 attrs  # &'& Z   0 @()����( >  0 3*+* o   0 1���� 	0 attrs  + m   1 2,, �--  ) n  6 <./. I   7 <��0���� 0 push  0 1��1 o   7 8���� 	0 attrs  ��  ��  / o   6 7���� 0 out_list  ��  ��  ' 232 n  A G454 I   B G��6���� 0 push  6 7��7 m   B C88 �99  - - >��  ��  5 o   A B���� 0 out_list  3 :��: L   H O;; n  H N<=< I   I N��>���� 0 as_text_with  > ?��? 1   I J��
�� 
spac��  ��  = o   H I���� 0 out_list  ��  � @A@ l     ��������  ��  ��  A B��B i    CDC I      ��E���� 0 	make_with  E FGF o      ���� 
0 a_text  G H��H o      ���� 0 att_list  ��  ��  D k     II JKJ r     LML  f     M o      ���� 0 a_class  K N��N h    ��O�� (0 commenttaginstance CommentTagInstanceO k      PP QRQ j     ��S
�� 
pareS o     ���� 0 a_class  R TUT j   	 ��V
�� 
pnamV m   	 
WW �XX 4 H T M L E l e m e n t C o m m e n t I n s t a n c eU YZY j    ��[�� 0 	_contents  [ o    ���� 
0 a_text  Z \��\ j    "��]�� 0 _attributes  ] n   !^_^ I    !��`���� 0 make_with_pairs  ` a��a o    ���� 0 att_list  ��  ��  _ o    ���� 0 xdict XDict��  ��  ��  � bcb l     ��������  ��  ��  c ded l      ��fg��  f � �!@abstruct
Make a new HTMLElement instance for a comment tag
@param a_conents (text) : contents of comment
@param att_list (list) : 
@result script : an HTMLElement instance for a comment tag
   g �hh� ! @ a b s t r u c t 
 M a k e   a   n e w   H T M L E l e m e n t   i n s t a n c e   f o r   a   c o m m e n t   t a g 
 @ p a r a m   a _ c o n e n t s   ( t e x t )   :   c o n t e n t s   o f   c o m m e n t 
 @ p a r a m   a t t _ l i s t   ( l i s t )   :   
 @ r e s u l t   s c r i p t   :   a n   H T M L E l e m e n t   i n s t a n c e   f o r   a   c o m m e n t   t a g 
e iji i  jmklk I      ��m���� 0 comment_with  m non o      ���� 0 
a_contents  o p��p o      ���� 0 att_list  ��  ��  l L     qq n    rsr I    ��t���� 0 	make_with  t uvu o    ���� 0 
a_contents  v w��w o    ���� 0 att_list  ��  ��  s o     ���� 0 htmlcomment HTMLCommentj xyx l     ��������  ��  ��  y z{z l      ��|}��  | 2 ,!@group Appending Child Element and Contents   } �~~ X ! @ g r o u p   A p p e n d i n g   C h i l d   E l e m e n t   a n d   C o n t e n t s{ � l     ��������  ��  ��  � ��� l      ������  � | v!@abstruct
Append text into the contents of the tag.
@param a_value (HTMLElement, text or XText) 
@result script : me
   � ��� � ! @ a b s t r u c t 
 A p p e n d   t e x t   i n t o   t h e   c o n t e n t s   o f   t h e   t a g . 
 @ p a r a m   a _ v a l u e   ( H T M L E l e m e n t ,   t e x t   o r   X T e x t )   
 @ r e s u l t   s c r i p t   :   m e 
� ��� i  nq��� I      ������� 0 push  � ���� o      ���� 0 a_value  ��  ��  � k     �� ��� Z     ������ =    ��� n     ��� m    ��
�� 
pcls� o     ���� 0 a_value  � m    ��
�� 
list� n   ��� n  	 ��� I    ������� 0 add_from_list  � ���� o    ���� 0 a_value  ��  ��  � o   	 ���� 0 	_contents  �  f    	��  � n   ��� n   ��� I    ������� 0 push  � ���� o    ���� 0 a_value  ��  ��  � o    ���� 0 	_contents  �  f    � ���� L    ��  f    ��  � ��� l     ��������  ��  ��  � ��� i  ru��� I      ������� 0 push_content  � ���� o      ���� 0 a_value  ��  ��  � L     �� I     ������� 0 push  � ���� o    ���� 0 a_value  ��  ��  � ��� l     ��������  ��  ��  � ��� i  vy��� I      ������� 0 unshift  � ���� o      ���� 0 a_value  ��  ��  � k     �� ��� n    ��� n   ��� I    ������� 0 unshift  � ���� o    ���� 0 a_value  ��  ��  � o    ���� 0 	_contents  �  f     � ���� L   	 ��  f   	 
��  � ��� l     ��������  ��  ��  � ��� l      ������  �!@abstruct
Append a new HTMLElement instance as a child node.
@param elem_name (text) 
@param att_list (list) : {{"att1", "value1"}, {"att2", "value2"}}. When threre is no options,  pass an empty list �g{}�h.
@result script : Appended HTMLElement instance
   � ���� ! @ a b s t r u c t 
 A p p e n d   a   n e w   H T M L E l e m e n t   i n s t a n c e   a s   a   c h i l d   n o d e . 
 @ p a r a m   e l e m _ n a m e   ( t e x t )   
 @ p a r a m   a t t _ l i s t   ( l i s t )   :   { { " a t t 1 " ,   " v a l u e 1 " } ,   { " a t t 2 " ,   " v a l u e 2 " } } .   W h e n   t h r e r e   i s   n o   o p t i o n s ,     p a s s   a n   e m p t y   l i s t    { }  . 
 @ r e s u l t   s c r i p t   :   A p p e n d e d   H T M L E l e m e n t   i n s t a n c e  
� ��� i  z}��� I      ������� 0 push_element_with  � ��� o      ���� 0 	elem_name  � ���� o      ���� 0 att_list  ��  ��  � k     �� ��� r     	��� I     ������� 0 	make_with  � ��� o    ���� 0 	elem_name  � ���� o    ���� 0 att_list  ��  ��  � o      ���� 0 an_elem  � ��� I   
 ������ 0 push  � ��~� o    �}�} 0 an_elem  �~  �  � ��|� L    �� o    �{�{ 0 an_elem  �|  � ��� l     �z�y�x�z  �y  �x  � ��� l      �w���w  � � �!@abstruct
Append a new comment instance as a child node.
@param elem_name (text) 
@param att_list (list) : {{"att1", "value1"}, {"att2", "value2"}}. When threre is no options,  pass an empty list �g{}�h.
@result script : Appended comment instance
   � ���� ! @ a b s t r u c t 
 A p p e n d   a   n e w   c o m m e n t   i n s t a n c e   a s   a   c h i l d   n o d e . 
 @ p a r a m   e l e m _ n a m e   ( t e x t )   
 @ p a r a m   a t t _ l i s t   ( l i s t )   :   { { " a t t 1 " ,   " v a l u e 1 " } ,   { " a t t 2 " ,   " v a l u e 2 " } } .   W h e n   t h r e r e   i s   n o   o p t i o n s ,     p a s s   a n   e m p t y   l i s t    { }  . 
 @ r e s u l t   s c r i p t   :   A p p e n d e d   c o m m e n t   i n s t a n c e  
� ��� i  ~���� I      �v��u�v 0 push_comment_with  � ��� o      �t�t 0 	elem_name  � ��s� o      �r�r 0 att_list  �s  �u  � k     �� ��� r     	��� I     �q��p�q 0 comment_with  � ��� o    �o�o 0 	elem_name  � ��n� o    �m�m 0 att_list  �n  �p  � o      �l�l 0 an_elem  � ��� I   
 �k��j�k 0 push  � ��i� o    �h�h 0 an_elem  �i  �j  � ��g� L    �� o    �f�f 0 an_elem  �g  � ��� l     �e�d�c�e  �d  �c  �    i  �� I      �b�a�b 0 push_anchor_with   �` o      �_�_ 0 anchor_text  �`  �a   k       r     	
	 I     �^�]�^ 0 	make_with    m     �  a �\ J      J      m     �  i d �[ o    �Z�Z 0 anchor_text  �[   �Y J    
  m     �  n a m e  �X  o    �W�W 0 anchor_text  �X  �Y  �\  �]  
 o      �V�V 0 an_elem   !"! I    �U#�T�U 0 push  # $�S$ o    �R�R 0 an_elem  �S  �T  " %�Q% L    && o    �P�P 0 an_elem  �Q   '(' l     �O�N�M�O  �N  �M  ( )*) l      �L+,�L  +  !@group Output    , �--  ! @ g r o u p   O u t p u t  * ./. l     �K�J�I�K  �J  �I  / 010 l      �H23�H  2 5 /!@abstruct
Return HTML text data.
@result text
   3 �44 ^ ! @ a b s t r u c t 
 R e t u r n   H T M L   t e x t   d a t a . 
 @ r e s u l t   t e x t 
1 565 i  ��787 I      �G�F�E�G 0 as_html  �F  �E  8 k     �99 :;: l     �D<=�D  < ( "log "start as_html in HTMLElement"   = �>> D l o g   " s t a r t   a s _ h t m l   i n   H T M L E l e m e n t "; ?@? Z     AB�C�BA n    CDC n   EFE o    �A�A 0 is_empty  F o    �@�@ 	0 _info  D  f     B L   	 GG b   	 HIH I   	 �?�>�=�? 0 	empty_tag  �>  �=  I l   J�<�;J n   KLK n   MNM o    �:�: 0 after_start  N o    �9�9 	0 _info  L  f    �<  �;  �C  �B  @ OPO r    %QRQ I   #�8S�7
�8 .corecrel****      � nullS o    �6�6 0 xlist XList�7  R o      �5�5 0 out_list  P TUT r   & -VWV I   & +�4�3�2�4 0 	start_tag  �3  �2  W o      �1�1 0 a_start_tag  U XYX Z   . IZ[�0�/Z >  . 1\]\ o   . /�.�. 0 a_start_tag  ] m   / 0^^ �__  [ k   4 E`` aba n  4 :cdc I   5 :�-e�,�- 0 push  e f�+f o   5 6�*�* 0 a_start_tag  �+  �,  d o   4 5�)�) 0 out_list  b g�(g n  ; Ehih I   < E�'j�&�' 0 push  j k�%k n  < Alml n  = Anon o   ? A�$�$ 0 after_start  o o   = ?�#�# 	0 _info  m  f   < =�%  �&  i o   ; <�"�" 0 out_list  �(  �0  �/  Y pqp r   J Qrsr n  J Otut n  K Ovwv o   M O�!�! 0 after_start  w o   K M� �  	0 _info  u  f   J Ks o      �� 0 pre_end  q xyx l  R R����  �  �  y z{z h   R Y�|� (0 tagcontentsbuilder TagContentsBuilder| i     }~} I      ��� 0 do   ��� o      �� 0 	a_content  �  �  ~ k     ��� ��� r     ��� n     ��� m    �
� 
pcls� o     �� 0 	a_content  � o      �� 0 a_class  � ��� Z    ������ =   	��� o    �� 0 a_class  � m    �
� 
scpt� k    s�� ��� r    ��� n    ��� 1    �
� 
pnam� o    �� 0 	a_content  � o      �� 
0 a_name  � ��� Z    s����� C    ��� o    �
�
 
0 a_name  � m    �� ���  H T M L E l e m e n t� k    b�� ��� Z    8���	�� >   #��� o    �� 0 pre_end  � n   "��� o     "�� 0 before_start  � n    ��� o     �� 	0 _info  � o    �� 0 	a_content  � n  & 4��� I   + 4���� 0 push  � ��� n  + 0��� o   . 0� �  0 before_start  � n  + .��� o   , .���� 	0 _info  � o   + ,���� 0 	a_content  �  �  � o   & +���� 0 out_list  �	  �  � ��� n  9 G��� I   > G������� 0 push  � ���� n  > C��� I   ? C�������� 0 as_text  ��  ��  � o   > ?���� 0 	a_content  ��  ��  � o   9 >���� 0 out_list  � ��� n  H V��� I   M V������� 0 push  � ���� n  M R��� o   P R���� 0 	after_end  � n  M P��� o   N P���� 	0 _info  � o   M N���� 0 	a_content  ��  ��  � o   H M���� 0 out_list  � ���� r   W b��� n  W \��� o   Z \���� 0 	after_end  � n  W Z��� o   X Z���� 	0 _info  � o   W X���� 0 	a_content  � o      ���� 0 pre_end  ��  �  � n  e s��� I   j s������� 0 push  � ���� n  j o��� I   k o�������� 0 as_text  ��  ��  � o   j k���� 0 	a_content  ��  ��  � o   e j���� 0 out_list  �  �  � k   v ��� ��� n  v ���� I   { �������� 0 push  � ���� c   { ~��� o   { |���� 0 	a_content  � m   | }��
�� 
ctxt��  ��  � o   v {���� 0 out_list  � ���� r   � ���� m   � ��� ���  � o      ���� 0 pre_end  ��  �  { ��� n  Z b��� n  [ b��� I   ] b������� 0 	each_rush  � ���� o   ] ^���� (0 tagcontentsbuilder TagContentsBuilder��  ��  � o   [ ]���� 0 	_contents  �  f   Z [� ��� Z   c �������� l  c ~������ G   c ~��� A   c j��� n  c h��� I   d h�������� 0 item_counts  ��  ��  � o   c d���� 0 out_list  � m   h i���� � H   m z�� D   m y��� n  m s��� I   n s������� 0 item_at  � ���� m   n o��������  ��  � o   m n���� 0 out_list  � n  s x��� n  t x��� o   v x���� 0 
before_end  � o   t v���� 	0 _info  �  f   s t��  ��  � n  � ���� I   � �������� 0 push  � ���� n  � �� � n  � � o   � ����� 0 
before_end   o   � ����� 	0 _info     f   � ���  ��  � o   � ����� 0 out_list  ��  ��  �  Z   � ��� =  � �	 o   � ����� 0 a_start_tag  	 m   � �

 �   Z   � ����� =  � � n  � � I   � ������� 0 item_at   �� m   � ���������  ��   o   � ����� 0 out_list   o   � ����� 0 	_line_end   I  � ����� 0 set_item   o   � ����� 0 out_list   ��
�� 
for  m   � � �   ����
�� 
at   m   � ���������  ��  ��  ��   n  � � I   � ������� 0 push   �� I   � ��������� 0 end_tag  ��  ��  ��  ��   o   � ����� 0 out_list     l  � ���!"��  ! V Plog "end as_html in HTMLElement with outout : " & out_list's as_unicode_with("")   " �## � l o g   " e n d   a s _ h t m l   i n   H T M L E l e m e n t   w i t h   o u t o u t   :   "   &   o u t _ l i s t ' s   a s _ u n i c o d e _ w i t h ( " " )  $��$ L   � �%% n  � �&'& I   � ���(���� 0 as_text_with  ( )��) m   � �** �++  ��  ��  ' o   � ����� 0 out_list  ��  6 ,-, l     ��������  ��  ��  - ./. i  ��010 I      �������� 0 plain_contents  ��  ��  1 k     ,22 343 l     ��56��  5 6 0log "start plain_contents for " & element_name()   6 �77 ` l o g   " s t a r t   p l a i n _ c o n t e n t s   f o r   "   &   e l e m e n t _ n a m e ( )4 898 Z     :;����: n    <=< n   >?> o    ���� 0 is_empty  ? o    ���� 	0 _info  =  f     ; L   	 @@ m   	 
AA �BB  ��  ��  9 CDC l   ��������  ��  ��  D EFE h    ��G�� ,0 plaincontentsbuilder PlainContentsBuilderG i     HIH I      ��J���� 0 do  J K��K o      ���� 0 	a_content  ��  ��  I k     0LL MNM r     OPO n     QRQ m    ��
�� 
pclsR o     ���� 0 	a_content  P o      ���� 0 a_class  N STS Z    -UV��WU =   	XYX o    ���� 0 a_class  Y m    ��
�� 
scptV Z    %Z[��\Z C    ]^] l   _����_ n    `a` 1    ��
�� 
pnama o    ���� 0 	a_content  ��  ��  ^ m    bb �cc  H T M L E l e m e n t[ r    ded n   fgf I    �������� 0 plain_contents  ��  ��  g o    �� 0 	a_content  e o      �~�~ 0 x  ��  \ r    %hih n   #jkj I    #�}�|�{�} 0 
as_unicode  �|  �{  k o    �z�z 0 	a_content  i o      �y�y 0 x  ��  W r   ( -lml c   ( +non o   ( )�x�x 0 	a_content  o m   ) *�w
�w 
utxtm o      �v�v 0 x  T p�up L   . 0qq o   . /�t�t 0 x  �u  F rsr l   �s�r�q�s  �r  �q  s tut r    "vwv n    xyx n    z{z I     �p|�o�p 0 map  | }�n} o    �m�m ,0 plaincontentsbuilder PlainContentsBuilder�n  �o  { o    �l�l 0 	_contents  y  f    w o      �k�k 0 out_list  u ~�j~ L   # , n  # +��� I   $ +�i��h�i 0 as_unicode_with  � ��g� n  $ '��� o   % '�f�f 0 	_line_end  �  f   $ %�g  �h  � o   # $�e�e 0 out_list  �j  / ��� l     �d�c�b�d  �c  �b  � ��� i  ����� I      �a�`�_�a 0 as_text  �`  �_  � L     �� I     �^�]�\�^ 0 as_html  �]  �\  � ��� l     �[�Z�Y�[  �Z  �Y  � ��� i  ����� I      �X�W�V�X 0 
as_unicode  �W  �V  � L     �� I     �U�T�S�U 0 as_html  �T  �S  � ��� l     �R�Q�P�R  �Q  �P  � ��� i  ����� I      �O�N�M�O 0 as_xhtml  �N  �M  � L     �� I     �L�K�J�L 0 as_html  �K  �J  � ��� l     �I�H�G�I  �H  �G  � ��� l     �F�E�D�F  �E  �D  � ��� l      �C���C  �  !@group Accessor Methods    � ��� 2 ! @ g r o u p   A c c e s s o r   M e t h o d s  � ��� l     �B�A�@�B  �A  �@  � ��� l      �?���?  � 2 ,!@abstruct Retun element name.@result text   � ��� X ! @ a b s t r u c t   R e t u n   e l e m e n t   n a m e .  @ r e s u l t   t e x t � ��� i  ����� I      �>�=�<�> 0 element_name  �=  �<  � L     �� n    ��� o    �;�; 0 
_elem_name  �  f     � ��� l     �:�9�8�:  �9  �8  � ��� l      �7���7  � i c!@abstruct Set element name.
@param a_name (text)@result script : The target HTMLElement insntace   � ��� � ! @ a b s t r u c t   S e t   e l e m e n t   n a m e . 
 @ p a r a m   a _ n a m e   ( t e x t )  @ r e s u l t   s c r i p t   :   T h e   t a r g e t   H T M L E l e m e n t   i n s n t a c e � ��� i  ����� I      �6��5�6 0 set_element_name  � ��4� o      �3�3 
0 a_name  �4  �5  � k     �� ��� r     ��� o     �2�2 
0 a_name  � n     ��� o    �1�1 0 
_elem_name  �  f    � ��0� L    ��  f    �0  � ��� l     �/�.�-�/  �.  �-  � ��� l      �,���,  � ] W!@abstruct Return atttibute value of specified name.
@param a_name (text)@result text   � ��� � ! @ a b s t r u c t   R e t u r n   a t t t i b u t e   v a l u e   o f   s p e c i f i e d   n a m e . 
 @ p a r a m   a _ n a m e   ( t e x t )  @ r e s u l t   t e x t � ��� i  ����� I      �+��*�+ 0 attribute_value  � ��)� o      �(�( 
0 a_name  �)  �*  � L     	�� n    ��� n   ��� I    �'��&�' 0 value_for_key  � ��%� o    �$�$ 
0 a_name  �%  �&  � o    �#�# 0 _attributes  �  f     � ��� l     �"�!� �"  �!  �   � ��� l      ����  � � �!@abstruct Set attibute of the tag.
@param a_name (text) : The name of the attribute
@param a_value (text) :  The value of the attribute@result script : The target HTMLElement insntace   � ���t ! @ a b s t r u c t   S e t   a t t i b u t e   o f   t h e   t a g . 
 @ p a r a m   a _ n a m e   ( t e x t )   :   T h e   n a m e   o f   t h e   a t t r i b u t e 
 @ p a r a m   a _ v a l u e   ( t e x t )   :     T h e   v a l u e   o f   t h e   a t t r i b u t e  @ r e s u l t   s c r i p t   :   T h e   t a r g e t   H T M L E l e m e n t   i n s n t a c e � ��� i  ����� I      ���� 0 set_attribute  � ��� o      �� 
0 a_name  � ��� o      �� 0 a_value  �  �  � k     �� ��� n    	��� n   	��� I    	���� 0 	set_value  � ��� o    �� 
0 a_name  � ��� o    �� 0 a_value  �  �  � o    �� 0 _attributes  �  f     � ��� L   
 ��  f   
 �  � ��� l     ����  �  �  � ��� i  ����� I      ���� 0 contents_ref  �  �  � L     �� n    � � o    �� 0 	_contents     f     �  l     ��
�	�  �
  �	    l     ����  �  �    l      ��     others     �		    o t h e r s   

 i  �� I      ���� 0 dump  �  �   k     "  r      b      b      n     o    �� 0 
_elem_name    f      o    � 
�  
ret  l   ���� n    n    I    �������� 0 dump  ��  ��   o    ���� 0 _attributes    f    ��  ��   o      ���� 0 a_result    r     !  b    "#" b    $%$ b    &'& o    ���� 0 a_result  ' m    (( �))  c o n t e n t s   :  % o    ��
�� 
ret # n   *+* n   ,-, I    �������� 0 dump  ��  ��  - o    ���� 0 	_contents  +  f    ! o      ���� 0 a_result   .��. L     "// o     !���� 0 a_result  ��   010 l     ��������  ��  ��  1 232 l      ��45��  4  	 private    5 �66    p r i v a t e  3 787 i  ��9:9 I      �������� 0 	attr_text  ��  ��  : k     t;; <=< r     	>?> n    @A@ n   BCB I    �������� 0 iterator  ��  ��  C o    ���� 0 _attributes  A  f     ? o      ���� 0 an_iterator  = DED r   
 FGF I  
 ��H��
�� .corecrel****      � nullH o   
 ���� 0 xlist XList��  G o      ���� 0 	attr_list  E IJI V    lKLK k     gMM NON r     'PQP n    %RSR I   ! %�������� 0 next  ��  ��  S o     !���� 0 an_iterator  Q o      ���� 0 att_pair  O TUT X   ( RV��WV Z   8 MXY����X =  8 =Z[Z n   8 ;\]\ m   9 ;��
�� 
pcls] o   8 9���� 	0 a_val  [ m   ; <��
�� 
scptY r   @ I^_^ n  @ E`a` I   A E�������� 0 
as_unicode  ��  ��  a o   @ A���� 	0 a_val  _ n      bcb 1   F H��
�� 
pcntc o   E F���� 	0 a_val  ��  ��  �� 	0 a_val  W o   + ,���� 0 att_pair  U d��d n  S gefe I   T g��g���� 0 push  g h��h b   T ciji b   T aklk b   T \mnm b   T Zopo n   T Xqrq 4   U X��s
�� 
cobjs m   V W���� r o   T U���� 0 att_pair  p m   X Ytt �uu  =n 1   Z [��
�� 
quotl n   \ `vwv 4   ] `��x
�� 
cobjx m   ^ _���� w o   \ ]���� 0 att_pair  j 1   a b��
�� 
quot��  ��  f o   S T���� 0 	attr_list  ��  L n   yzy I    �������� 0 has_next  ��  ��  z o    ���� 0 an_iterator  J {��{ L   m t|| n  m s}~} I   n s������ 0 as_unicode_with   ���� 1   n o��
�� 
spac��  ��  ~ o   m n���� 0 	attr_list  ��  8 ��� l     ��������  ��  ��  � ��� i  ����� I      �������� 0 	empty_tag  ��  ��  � k     "�� ��� l     ������  �  log "start empty_tag"   � ��� * l o g   " s t a r t   e m p t y _ t a g "� ��� r     ��� I     �������� 0 	attr_text  ��  ��  � o      ���� 	0 attrs  � ��� Z    ������� >   ��� o    	���� 	0 attrs  � m   	 
�� ���  � r    ��� b    ��� 1    ��
�� 
spac� o    ���� 	0 attrs  � o      ���� 	0 attrs  ��  ��  � ���� L    "�� b    !��� b    ��� b    ��� m    �� ���  <� n   ��� o    ���� 0 
_elem_name  �  f    � o    ���� 	0 attrs  � m     �� ���    / >��  � ��� l     ��������  ��  ��  � ��� i  ����� I      �������� 0 	start_tag  ��  ��  � k     1�� ��� Z     ������� =    ��� n    ��� o    ���� 0 
_elem_name  �  f     � m    �� ���  � L    
�� m    	�� ���  ��  ��  � ��� r    ��� I    �������� 0 	attr_text  ��  ��  � o      ���� 	0 attrs  � ��� Z    &������� >   ��� o    ���� 	0 attrs  � m    �� ���  � r    "��� b     ��� 1    ��
�� 
spac� o    ���� 	0 attrs  � o      ���� 	0 attrs  ��  ��  � ���� L   ' 1�� b   ' 0��� b   ' .��� b   ' ,��� m   ' (�� ���  <� n  ( +��� o   ) +���� 0 
_elem_name  �  f   ( )� o   , -���� 	0 attrs  � m   . /�� ���  >��  � ��� l     ��������  ��  ��  � ��� i  ����� I      �������� 0 end_tag  ��  ��  � k     �� ��� Z     ������� =    ��� n    ��� o    ���� 0 
_elem_name  �  f     � m    �� ���  � L    
�� m    	�� ���  ��  ��  � ��� l   ��������  ��  ��  � ���� L    �� b    ��� b    ��� m    �� ���  < /� n   ��� o    �� 0 
_elem_name  �  f    � m    �� ���  >��  � � � l     �~�}�|�~  �}  �|     i  �� I      �{�z�{ 0 walk   �y o      �x�x 
0 walker  �y  �z   k     � 	 Z     
�w�v
 H      n     I    �u�t�u 0 do   �s  f    �s  �t   o     �r�r 
0 walker   L   
  m   
 �q
�q boovfals�w  �v  	  r     n    n    I    �p�o�n�p 0 iterator  �o  �n   o    �m�m 0 	_contents    f     o      �l�l 0 an_iterator    V    � k   % ~   r   % ,!"! n  % *#$# I   & *�k�j�i�k 0 next  �j  �i  $ o   % &�h�h 0 an_iterator  " o      �g�g 0 x    %�f% Z   - ~&'�e�d& =  - 2()( n   - 0*+* m   . 0�c
�c 
pcls+ o   - .�b�b 0 x  ) m   0 1�a
�a 
scpt' Q   5 z,-., k   8 M// 010 n  8 <232 o   9 ;�`�` 0 walk  3 o   8 9�_�_ 0 x  1 4�^4 Z   = M56�]�\5 H   = D77 n  = C898 I   > C�[:�Z�[ 0 walk  : ;�Y; o   > ?�X�X 
0 walker  �Y  �Z  9 o   = >�W�W 0 x  6 L   G I<< m   G H�V
�V boovfals�]  �\  �^  - R      �U=>
�U .ascrerr ****      � ****= o      �T�T 0 msg  > �S?�R
�S 
errn? o      �Q�Q 	0 errno  �R  . k   U z@@ ABA Z   U iCD�P�OC H   U \EE E  U [FGF J   U YHH IJI m   U V�N�N�\J K�MK m   V W�L�L�@�M  G o   Y Z�K�K 	0 errno  D R   _ e�JLM
�J .ascrerr ****      � ****L o   c d�I�I 0 msg  M �HN�G
�H 
errnN o   a b�F�F 	0 errno  �G  �P  �O  B O�EO Z   j zPQ�D�CP H   j qRR n  j pSTS I   k p�BU�A�B 0 do  U V�@V o   k l�?�? 0 x  �@  �A  T o   j k�>�> 
0 walker  Q L   t vWW m   t u�=
�= boovfals�D  �C  �E  �e  �d  �f   n   $XYX I     $�<�;�:�< 0 has_next  �;  �:  Y o     �9�9 0 an_iterator   Z�8Z L   � �[[ m   � ��7
�7 boovtrue�8   \]\ l     �6�5�4�6  �5  �4  ] ^_^ i  ��`a` I      �3�2�1�3 	0 debug  �2  �1  a k     bb cdc l      �0ef�0  e c ]
	set a_tag to make_with("a", {{"href", "hello"}})
	a_tag's push("yo")
	log a_tag's as_html
	   f �gg � 
 	 s e t   a _ t a g   t o   m a k e _ w i t h ( " a " ,   { { " h r e f " ,   " h e l l o " } } ) 
 	 a _ t a g ' s   p u s h ( " y o " ) 
 	 l o g   a _ t a g ' s   a s _ h t m l 
 	d hih r     jkj I    �/�.�-
�/ .corecrel****      � null�.  �-  k o      �,�, 0 par_container  i l�+l I   �*m�)
�* .ascrcmnt****      � ****m n   non I   	 �(�'�&�( 0 as_html  �'  �&  o o    	�%�% 0 par_container  �)  �+  _ pqp l     �$�#�"�$  �#  �"  q rsr i  ��tut I      �!� ��! 0 open_helpbook  �   �  u Q     ,vwxv O   yzy I   
 �{�� 0 do  { |�| I   �}�
� .earsffdralis        afdr}  f    �  �  �  z 4    �~
� 
scpt~ m     ���  O p e n H e l p B o o kw R      ���
� .ascrerr ****      � ****� o      �� 0 msg  � ���
� 
errn� o      �� 	0 errno  �  x k    ,�� ��� I   "���
� .miscactvnull��� ��� null�  �  � ��� I  # ,���
� .sysodisAaleR        TEXT� l  # (���� b   # (��� b   # &��� o   # $�� 0 msg  � o   $ %�

�
 
ret � o   & '�	�	 	0 errno  �  �  �  �  s ��� l     ����  �  �  � ��� i  ����� I     ���
� .aevtoappnull  �   � ****�  �  � k     �� ��� l     ����  �  return debug()   � ���  r e t u r n   d e b u g ( )� ��� I     � �����  0 open_helpbook  ��  ��  �  � ���� l     ��������  ��  ��  ��       1������ +���������������������������������������������  � /����������������������������������������������������������������������������������������������
�� 
pimr�� 0 xlist XList�� 0 xdict XDict
�� 
pnam�� 0 	_line_end  �� 0 line_end  �� 0 set_line_end  �� 0 _inline_tags  �� 0 _inline_tag_info  �� 0 _br_tags  �� 0 _br_tag_info  �� 0 _oneline_empty_tags  �� 0 _oneline_empty_tag_info  �� 0 	_par_tags  �� 0 _par_tags_info  �� 0 _div_type_info  �� 0 tag_info_for  �� 0 encode_to_entities  �� 0 	make_with  
�� .corecrel****      � null�� 0 htmlcomment HTMLComment�� 0 comment_with  �� 0 push  �� 0 push_content  �� 0 unshift  �� 0 push_element_with  �� 0 push_comment_with  �� 0 push_anchor_with  �� 0 as_html  �� 0 plain_contents  �� 0 as_text  �� 0 
as_unicode  �� 0 as_xhtml  �� 0 element_name  �� 0 set_element_name  �� 0 attribute_value  �� 0 set_attribute  �� 0 contents_ref  �� 0 dump  �� 0 	attr_text  �� 0 	empty_tag  �� 0 	start_tag  �� 0 end_tag  �� 0 walk  �� 	0 debug  �� 0 open_helpbook  
�� .aevtoappnull  �   � ****� ����� �  ����� �� ��
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
osax��  � ��   �� 
�� 
scpt� ��   �� !
�� 
scpt� ���  
� �� J���������� 0 line_end  ��  ��  �  � ���� 0 	_line_end  �� )�,E� �� X���������� 0 set_line_end  �� ����� �  ���� 
0 a_char  ��  � ���� 
0 a_char  � ���� 0 	_line_end  �� �)�,F� ����� �   g k o s w {  � � � � � � �� ������� 0 is_empty  
�� boovfals� �� ���� 0 before_start  � �� ���� 0 after_start  � �� ���� 0 
before_end  � �� ����� 0 	after_end  ��  � ����� �   �� ������� 0 is_empty  
�� boovtrue� �� ���� 0 before_start  � ������ 0 after_start  � �� ���� 0 
before_end  � �� ����� 0 	after_end  ��  � ����� �   � � � �� ������� 0 is_empty  
�� boovtrue� ������ 0 before_start  � ������ 0 after_start  � �� ���� 0 
before_end  � �� ����� 0 	after_end  ��  � ����� 	� 	  � �� ������� 0 is_empty  
�� boovfals� ������ 0 before_start  � ��&��� 0 after_start  � ��*��� 0 
before_end  � ������� 0 	after_end  ��  � ������� 0 is_empty  
�� boovfals� ������ 0 before_start  � ������ 0 after_start  � ������ 0 
before_end  � ������� 0 	after_end  ��  � ��A���������� 0 tag_info_for  �� ����� �  ���� 
0 a_name  ��  � ���� 
0 a_name  �  �� @b  � b  Y .b  	� b  Y b  � b  Y b  � ��c��~���}�� 0 encode_to_entities  � �|��| �  �{�{ 0 a_xtext  �~  � �z�z 0 a_xtext  � 	ps�y~����x��y 0 replace  
�x 
quot�} +���l+ E�O���l+ E�O���l+ E�O���l+ E�O�� �w��v�u���t�w 0 	make_with  �v �s��s �  �r�q�r 0 	elem_name  �q 0 att_list  �u  � �p�o�n�m�p 0 	elem_name  �o 0 att_list  �n 0 a_class  �m *0 htmlelementinstance HTMLElementInstance� �l���l *0 htmlelementinstance HTMLElementInstance� �k �j�i�h
�k .ascrinit****      � ****  k     9 � � � � � ��g�g  �j  �i   �f�e�d�c�b�a
�f 
pare
�e 
pnam�d 0 
_elem_name  �c 0 _attributes  �b 0 	_contents  �a 	0 _info   
�`��_�^�]�\�[�Z�Y�X
�` 
pare
�_ 
pnam�^ 0 
_elem_name  �] 0 make_with_pairs  �\ 0 _attributes  
�[ .corecrel****      � null�Z 0 	_contents  �Y 0 tag_info_for  �X 	0 _info  �h :b  N  O�Ob   �Ob  b  k+ �Ob  j �O*b   k+ ��t )E�O��K S�� �W��V�U	
�T
�W .corecrel****      � null�V  �U  	  
 ��S�S 0 	make_with  �T 
*�jvl+ � �R�  �R 0 htmlcomment HTMLComment  � �Q�P�O�Q 	0 _info  �P 0 as_html  �O 0 	make_with   �N��M�L�K�N 0 as_html  �M  �L   �J�I�J 0 out_list  �I 	0 attrs   �H�G�F�E�D,8�C�B�H 0 	make_with  
�G 
msng�F 0 	_contents  �E 0 push  �D 0 	attr_text  
�C 
spac�B 0 as_text_with  �K Pb  �kvk+ E�O��lv)�, �)�,k+ Y hO*j+ E�O�� ��k+ Y hO��k+ O��k+ 
 �AD�@�?�>�A 0 	make_with  �@ �=�=   �<�;�< 
0 a_text  �; 0 att_list  �?   �:�9�8�7�: 
0 a_text  �9 0 att_list  �8 0 a_class  �7 (0 commenttaginstance CommentTagInstance �6O�6 (0 commenttaginstance CommentTagInstance �5�4�3�2
�5 .ascrinit****      � **** k     " Q T Y \�1�1  �4  �3   �0�/�.�-
�0 
pare
�/ 
pnam�. 0 	_contents  �- 0 _attributes   �,W�+�*�)�(
�, 
pare
�+ 
pnam�* 0 	_contents  �) 0 make_with_pairs  �( 0 _attributes  �2 #b  N  O�Ob   �Ob  b  k+ ��> )E�O��K S�� �'l�&�%�$�' 0 comment_with  �& �#�#   �"�!�" 0 
a_contents  �! 0 att_list  �%   � ��  0 
a_contents  � 0 att_list   �� 0 	make_with  �$ b  ��l+  � ���� �� 0 push  � �!� !  �� 0 a_value  �   �� 0 a_value    �����
� 
pcls
� 
list� 0 	_contents  � 0 add_from_list  � 0 push  � ��,�  )�,�k+ Y 
)�,�k+ O)� ����"#�� 0 push_content  � �$� $  �� 0 a_value  �  " �� 0 a_value  # �
�
 0 push  � *�k+  � �	���%&��	 0 unshift  � �'� '  �� 0 a_value  �  % �� 0 a_value  & ��� 0 	_contents  � 0 unshift  � )�,�k+ O)� � �����()���  0 push_element_with  �� ��*�� *  ������ 0 	elem_name  �� 0 att_list  ��  ( �������� 0 	elem_name  �� 0 att_list  �� 0 an_elem  ) ������ 0 	make_with  �� 0 push  �� *��l+  E�O*�k+ O�� �������+,���� 0 push_comment_with  �� ��-�� -  ������ 0 	elem_name  �� 0 att_list  ��  + �������� 0 	elem_name  �� 0 att_list  �� 0 an_elem  , ������ 0 comment_with  �� 0 push  �� *��l+  E�O*�k+ O�� ������./���� 0 push_anchor_with  �� ��0�� 0  ���� 0 anchor_text  ��  . ������ 0 anchor_text  �� 0 an_elem  / ������ 0 	make_with  �� 0 push  �� *��lv�lvlvl+ E�O*�k+ O�� ��8����12���� 0 as_html  ��  ��  1 ���������� 0 out_list  �� 0 a_start_tag  �� 0 pre_end  �� (0 tagcontentsbuilder TagContentsBuilder2 ������������^����|3������������
����������*���� 	0 _info  �� 0 is_empty  �� 0 	empty_tag  �� 0 after_start  
�� .corecrel****      � null�� 0 	start_tag  �� 0 push  �� (0 tagcontentsbuilder TagContentsBuilder3 ��4����56��
�� .ascrinit****      � ****4 k     77 |����  ��  ��  5 ���� 0 do  6 88 ��~����9:���� 0 do  �� ��;�� ;  ���� 0 	a_content  ��  9 �������� 0 	a_content  �� 0 a_class  �� 
0 a_name  : ��������������������
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
at  �� �� 0 set_item  �� 0 end_tag  �� 0 as_text_with  �� �)�,�,E *j+ )�,�,%Y hOb  j E�O*j+ E�O�� ��k+ O�)�,�,k+ Y hO)�,�,E�O��K 
S�O)�,�k+ O�j+ k
 �ik+ )�,�,a & �)�,�,k+ Y hO�a   )�ik+ b    �a a a ia  Y hY �*j+ k+ O�a k+ � ��1����<=���� 0 plain_contents  ��  ��  < ������ ,0 plaincontentsbuilder PlainContentsBuilder�� 0 out_list  = 
����A��G>���������� 	0 _info  �� 0 is_empty  �� ,0 plaincontentsbuilder PlainContentsBuilder> ��?����@A��
�� .ascrinit****      � ****? k     BB G����  ��  ��  @ ���� 0 do  A CC ��I����DE���� 0 do  �� ��F�� F  ���� 0 	a_content  ��  D �������� 0 	a_content  �� 0 a_class  �� 0 x  E ������b������
�� 
pcls
�� 
scpt
�� 
pnam�� 0 plain_contents  �� 0 
as_unicode  
�� 
utxt�� 1��,E�O��  ��,� �j+ E�Y 	�j+ E�Y ��&E�O��� L  �� 0 	_contents  �� 0 map  �� 0 	_line_end  �� 0 as_unicode_with  �� -)�,�,E �Y hO��K S�O)�,�k+ E�O�)�,k+ 	� �������GH���� 0 as_text  ��  ��  G  H ���� 0 as_html  �� *j+  � �������IJ���� 0 
as_unicode  ��  ��  I  J �� 0 as_html  �� *j+  � �~��}�|KL�{�~ 0 as_xhtml  �}  �|  K  L �z�z 0 as_html  �{ *j+  � �y��x�wMN�v�y 0 element_name  �x  �w  M  N �u�u 0 
_elem_name  �v )�,E� �t��s�rOP�q�t 0 set_element_name  �s �pQ�p Q  �o�o 
0 a_name  �r  O �n�n 
0 a_name  P �m�m 0 
_elem_name  �q 	�)�,FO)� �l��k�jRS�i�l 0 attribute_value  �k �hT�h T  �g�g 
0 a_name  �j  R �f�f 
0 a_name  S �e�d�e 0 _attributes  �d 0 value_for_key  �i 
)�,�k+ � �c��b�aUV�`�c 0 set_attribute  �b �_W�_ W  �^�]�^ 
0 a_name  �] 0 a_value  �a  U �\�[�\ 
0 a_name  �[ 0 a_value  V �Z�Y�Z 0 _attributes  �Y 0 	set_value  �` )�,��l+ O)� �X��W�VXY�U�X 0 contents_ref  �W  �V  X  Y �T�T 0 	_contents  �U )�,E� �S�R�QZ[�P�S 0 dump  �R  �Q  Z �O�O 0 a_result  [ �N�M�L�K(�J�N 0 
_elem_name  
�M 
ret �L 0 _attributes  �K 0 dump  �J 0 	_contents  �P #)�,�%)�,j+ %E�O��%�%)�,j+ %E�O�� �I:�H�G\]�F�I 0 	attr_text  �H  �G  \ �E�D�C�B�E 0 an_iterator  �D 0 	attr_list  �C 0 att_pair  �B 	0 a_val  ] �A�@�?�>�=�<�;�:�9�8�7�6t�5�4�3�2�A 0 _attributes  �@ 0 iterator  
�? .corecrel****      � null�> 0 has_next  �= 0 next  
�< 
kocl
�; 
cobj
�: .corecnte****       ****
�9 
pcls
�8 
scpt�7 0 
as_unicode  
�6 
pcnt
�5 
quot�4 0 push  
�3 
spac�2 0 as_unicode_with  �F u)�,j+ E�Ob  j E�O Uh�j+ �j+ E�O )�[��l kh ��,�  �j+ 
��,FY h[OY��O���k/�%�%��l/%�%k+ [OY��O��k+ � �1��0�/^_�.�1 0 	empty_tag  �0  �/  ^ �-�- 	0 attrs  _ �,��+��*��, 0 	attr_text  
�+ 
spac�* 0 
_elem_name  �. #*j+  E�O�� 
 %E�Y hO�)�,%�%�%� �)��(�'`a�&�) 0 	start_tag  �(  �'  ` �%�% 	0 attrs  a �$���#��"���$ 0 
_elem_name  �# 0 	attr_text  
�" 
spac�& 2)�,�  �Y hO*j+ E�O�� 
Š%E�Y hO�)�,%�%�%� �!�� �bc��! 0 end_tag  �   �  b  c ������ 0 
_elem_name  � )�,�  �Y hO�)�,%�%� ���de�� 0 walk  � �f� f  �� 
0 walker  �  d ������ 
0 walker  � 0 an_iterator  � 0 x  � 0 msg  � 	0 errno  e ��������
�	g���� 0 do  � 0 	_contents  � 0 iterator  � 0 has_next  � 0 next  
� 
pcls
� 
scpt�
 0 walk  �	 0 msg  g ���
� 
errn� 	0 errno  �  ��\��@
� 
errn� ��)k+   fY hO)�,j+ E�O gh�j+ �j+ E�O��,�  J ��,EO��k+  fY hW ,X  	��lv� )�l�Y hO��k+   fY hY h[OY��Oe� �a�� hi��� 	0 debug  �  �   h ���� 0 par_container  i ������
�� .corecrel****      � null�� 0 as_html  
�� .ascrcmnt****      � ****�� *j  E�O�j+ j � ��u����jk���� 0 open_helpbook  ��  ��  j ������ 0 msg  �� 	0 errno  k 	��������l������
�� 
scpt
�� .earsffdralis        afdr�� 0 do  �� 0 msg  l ������
�� 
errn�� 	0 errno  ��  
�� .miscactvnull��� ��� null
�� 
ret 
�� .sysodisAaleR        TEXT�� - )��/ *)j k+ UW X  *j O��%�%j � �������mn��
�� .aevtoappnull  �   � ****��  ��  m  n ���� 0 open_helpbook  �� *j+   ascr  ��ޭ