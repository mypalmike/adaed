�UV�̓����V�# V�MEMORY$ �����?
File not found
$
Parameter format error
$
Invalid switch
$
File format error
$��Error: $lines: No errors detected
$
Checking: ��     0&L DASC is an Ada Syntax Checker. It checks one or more files for compliance with the official Ada syntax, as described in Appendix E of the Reference Manual for the Ada Programming Language, ANSI/MIL-STD 1815-A. The command is:      DASC  file [/E]  where file is the name of the file. Wild card characters can be used to check a set of files. The default extension is ADA. The files can be in standard DOS text format, or DCOP/DAVE [c] compressed format.   There is no attempt at error recovery. If an error is encountered, a message is given with the offending line and position, and processing continues with the next matching file. DASC sets a return code of zero if all checked files are correct. If any of them contains a syntax error, the return code is 1. Fatal errors (e.g. file not found) set a return code of 2.  The /E switch, if present, extends the Appendix E grammer to permit the token ... (three dots) to be used as an ellipsis for a declaration, statement or expression. This allows the use of DASC on files under development, with ... indicating text to be subsequently supplied.  Press any key to continue ...   DASC is part of the DEWAR utilities package. It is also included as part of the NYU Ada/Ed system. DASC is fully protected by copyright, and may not be copied other than by legitimate owners of one of these two packages for backup or operational use.  The entire DEWAR utilities package, with DASC and other useful tools, including an Ada knowledgable editor incorporating DASC and a file comparison utility among many others, can be obtained by sending a check for $40 to:      Robert B. K. Dewar     UTILITIES ORDERS     73 5th Ave.     New York, NY 10003  NYU Ada/Ed is an interpretor for the complete Ada language. To order Ada/Ed, send a check for $95 to:      NYU Ada/Ed Project     251 Mercer St.     NYC, NY 10012|Type file name, or ENTER to return to DOS: �� expected$ 111+1111111111111111111111111111111111111111111111111%11111111111111491>111111111CI11NT1111�1bbppbmbbbbbbbbbbbbbbbbbbbbbdbb�b�bbbbb�	b�	b��bbbbbbbb��bbTpbbb�bbb�bbbbb#bb�bbbbb"bbbbbbbb�bb"bpppppp�pppppppppppppppppppppppppppp�ppppppp==ppppppppppppppppp�ppppppppppp�Gpppppppppppppppppp�	������������������������������'�)(��
)��'�%�'��'��%��'>&>&>&>&>&>&>&>&>&>&��'�%,���8 l � $!�!�!B&"BBL"�"�"�"&#B�#p$�$F%B\%�%BB�������8 l � $!�!�!B&"BBL"�"�"�"&#B�#p$�$F%B\%�%BB��)����������������������������������������������������������������������������������������������������������������������������������������������������������������'�)(��
)��'�%�'��'��%��'>&>&>&>&>&>&>&>&>&>&��'�%,���8 l � $!�!�!B&"BBL"�"�"�"&#B�#p$�$F%B\%�%BB�������8 l � $!�!�!B&"BBL"�"�"�"&#B�#p$�$F%B\%�%BB��)��������������������'�)(��
)��'�%�'��'��%��'>&>&>&>&>&>&>&>&>&>&��'�%,���8 l � $!�!�!B&"BBL"�"�"�"&#B�#p$�$F%B\%�%BB�������8 l � $!�!�!B&"BBL"�"�"�"&#B�#p$�$F%B\%�%BB��)���    N�    N�DJ  ��(h pQ* 4
























h 
























p'�eDASC 7.01�.<u����������#� �<t����<t��*��O�>,��ρ鲐O�<\t<:tO��G�>*���W���!+ɺ���N�!s� ��	�!�L�!�>*��u�� 󤾲��1������ �=�!�.�� ��  �.��?�!��Ƈ  �  �2���u<ct	�A��	�!몸  ������������0�>2�ct��  �60��4�������Wr��6����� �<�9�=�.��!�-�60����  �D�<�v,�*�������;6��u����<��  ����<	u�� ������$u�>2�ct<tU<tQ�д�!����<�r�u���д�!����<�r,<�s,�*�� ������� ����T��ꀴ�!����y����!�
��!�x �u � �o �l �����c ���^��!���!�
��!�L �I ����	�!�4��	�!���!�
��!���) �& �* �  ����	�!�.��>�!�W��O�!r�7�����!� ��!�VPR����< t�< t�д�!��ZX^�VPR����< t�< t�����ZX^�����>��9w����0���0����>��9w����0���0����>��9w����0���0����>��9w����0���0����>��9wÀ��0�������� �r.WVQSP�  � �� � �.�� ��?�!��Ƈ X[Y^_�� ��<
uF�60�ú��	�!�L�!�< t�N�P���</u&F�< v�F<ar, <Eu&�����.��	�!�L�!���X�PQW�>*��,�+ϰ.�t�>,��.A��DA�*��_YX�VWUPSR����
�t�д�!����!�
��!Z[X]_^ø�؎�����< t<u�K����!�
��!�P ��N���< v�t�MG��;�t	�����!��< u�F�t� ��!Mt믽P 몁� �t��!���!�
��!뒿� ��@��� �
�!���!�
��!�� ���<tø L�!�^�0�!
�u+�P���	�!˿���< u������ �J ����@�!���� ��DEWAR UTILITIES        Version     
(C)Copyright Robert B.K. Dewar 1987
DOS 2.0 required$PVW���<Ar<Zw �
�u�_^X�PVW���<ar<zw, �
�u�_^X�PQW��� ���OO;�r
�<:t<\u�u_YX�PSQW����
�tF<.u�< _Y[X�PSQW�߹O �< v<,t</t������\\�� ��*��NV���e�^_Y[X�PVW��t����u���.���_^X�PSQRWV� ��D<:t��!a�:���<as ��ފ<\t� ���`�\����G�!�= t
��
�u��E�\�C��O�w�
�u��� �\\�� _W� ��( �^����<\t�� u��� ����E�\ _ZY[XØ6PSQVW����ދ����V�L� �_�L�< u
�� ��{��<.t7< t3<*t!<?t��<.t< tC��<.t< t�CF�ъ<.t< t�C��<.t< tF��C�< t&<*t<?t	��? tC��
�t�CF�ފ
�t�C��*��_^Y[X�PQWV�I���u�.���
�u�^_YX�PQRV�֬
�t<*t<?u����
� C�!r��^ZYX��.�^��&P��>R�������Ë>R���^�
�t����$��6���&P���N�6���ً>R���^�
�t����T�� �6���&P������c<
t��`���<u6�<u�<
t<t���<u����!<u����h<.u�v�2�!�5��g�����<t
�%��<u��M<%t��E�����:��������u���t��[�
�SUBTYPE_INDICATION not found in previous ALLOCATOR <u��<t������R����~<Kt><u���p���Su���DISCRETE_RANGE ��<
u��������	�CÀ�St*�<t�����<
u�q�����Q�����U��D�RANGE must be preceded by TYPE_MARK <t��.�:�����Lr�t���Previous body misplaced, not allowed in PACKAGE_SPECIFICATION �j�<3u��<Yu
�<Yt��r���WHEN ����{	�S��%��<Yu�2 <Yt��J�E�6��WHEN (CASE_STATEMENT_ALTERNATIVE) �� <u�a�����<Dt�<u	�K���E��Nt��t� <^u���<Ft2<It3<6t4<7t><Rt=�+�LIBRARY_UNIT or SECONDARY_UNIT �
����V��St��Rt7��b����Previous COMPILATION_UNIT contains BODY_STUB ��Previous COMPILATION_UNIT contains RENAMING DECLARATION <Dt[��<t]<
tY��Eu)�E�Must have SIMPLE_EXPRESSION in choice <t
��St�a ��$��<u������	��y����b���w
�����# ���<Au���<(t���<t�<(t����B<Kt<-t<,t<t��G
:����:����:����:��<[u��<Xu�<Xt�<[t�Ê�*�����_��!�E�����Rt��Bt��St�EóBóL��a
�B����B��D�BóN��\������[	����B������B��,�E�����Lv�w����Bt��Nt�����Previous declaration out of place, cannot appear after BODY ���������_��f�V��'<t���P<u��F��Su��DISCRETE_RANGE ���<t��s�
 <t��T:���6����$��W<t���
<1u�H�V�STATEMENT or END �1�<u6�'<u�/<
t<t�)�o���<u����<u�
�����
<t<t���ENUMERATION_LITERAL �#�������<
u����<Dt�R������<u����
�Z
��]<Yt�1
�� �(
�Y��u�<#t<CtE�q�E��to<\t��l�`<Vt�0��tZ<#uY�M<Vu��P�D���tB<#uA�5<Vt��8�,</t����t&<Cu%�</u��������t<Cu� </t���E����Mixed logical operators in EXPRESSION � �`���r
� �T��f
���&<t���:<t��:������<;tJ����D�$<u�!	�D�<Nu�t��	�R��<Rt�?���<t<u�S���B��J���S��A���t<t�2�Āu���{�$���0�NAME <tO<t=�<t0��u��ATTRIBUTE_DESIGNATOR ��<u���Āuĳ��t������S�Āu���*���<t<u��<u��<t<u� ���R��Z��Et4<t��Nu+��u&�l�L��{�(	<
t�\�<��k���<
t��L��<
t�B�Āu�
���0��G<t<u
�K<u� �����<<t�:�������<t%��<t<u��<u�^��<t�<t������Āu.������<t��F�R�<
u<u�<t�<t��������<t����*�<
t���s����<
u�<t<u��<t�����l� �� <Ft=<6t><It?�}�PACKAGE_SPECIFICATION or SUBPROGRAM_SPECIFICATION �N�����M��Du���Previous GENERIC_DECLARATION did not contain declaration ��� t��<t	<[t%<Wt<���
<:u
��<Eu���]���[:�����<;u��<t�@�������u ��t�
<<t<Ht� ���
<<u�u��
�<t/<Kt4<-t0<,t,<$t.<!t-�f�GENERIC_TYPE_DEFINITION �:��	��1��	�T����%����<u��&�IDENTIFIER �<
u$� �� �	<)t\<$tJ<3t	�e�������	<)t><$t,<3t�G��u<Nt	������^��T�U�<Nt��K�����Ut*�g��=�<t<$t��<u�(�L��"�|�����]�UNCONSTRAINED_ARRAY_DEFINITION found in OBJECT_DECLARATION <t��0:��<u�&<
u�<t��)�IDENTIFIER ��	���
�<0u��
�q��
���</u��
������~��
<u��
<t<t��
� �<
u�
���
��<t���%�<
t�D��	�I��
��u��<Pu�
������@�/����@��<Et<:t��i
<Et��a
� ���t��?�NAME expected preceding this token ������2t���G���GENERIC_ACTUAL_PART expected before this token ��	���	<'u.��	���<Rt��<&t��������c�B��	�Z�S���<Nt#��<?t�{�<Hu�	�q���[��3�D��X��	�#��$�R�<u�	<t�	��k	����8�� �������#��V	�4�<u�L	�\�<
t��-����u< t<t<?t<At<]t�9������t
��	��������PRIMARY expected before this token ���PRIMARY ����<;t<�&�<u�o�D�<Nu���^��_�R���<Rt������q��I�B���@�S��<?u��^��<t�%��&�0<t��At	�R�q�����<Kt��`���:���<t��St�T��H���R��<,t�v��g��2�G��������u�<:t<@t	����E��<:u	����E���IN ��<u<��<Xu2��<%t
<Lt�y��}����t���~�<1t������g�\���R���t	���X�H��REPRESENTATION_CLAUSE requires ATTRIBUTE or SIMPLE_NAME �g<u������ �W<UtB< tF<+tG<Yt�s��A���<Ut&< t*<+t+�=�SELECTIVE_WAIT_ALTERNATIVE �� ��I���E�<Ct</t<1t� <Cu	��<Yt��</u��� �����v��n�<u���G�<
t���^ <Ct</t/�o <Ct</t$��ELSE �<+t	��DELAY ���<1t�E ���= ���u<"t<u���i�w�SELECTOR <u�V<Gt��_�Semicolon �����*��み�bu�A�STATEMENT ��*��������Y���+���`�<u��z��<uQ��<=tj<Zti<*th<&tg<5tf���LOOP_STATEMENT or BLOCK_STATEMENT expected after label ��d���u��t�8�<u�����+���������������`�Expecting STATEMENT before this token ��t�
���t,��u���Au�N��� t�,��@u�����u�S�������SIMPLE_EXPRESSION expected before this token <u�����SIMPLE_NAME <6t <It+���SUBPROGRAM_SPECIFICATION ��������]�=���y������p��� �)���tF�@���t
S��[u���V�SUBTYPE_INDICATION expected preceding this token �I�SUBTYPE_INDICATION �"�U���<6t<Ft<It<Tt��PROPER_BODY �_���	������7 ��Bu����Previous SUBUNIT does not contain PROPER_BODY �<'t6<Wu���<t"��<Gu�9�<2u�W���<5u�����p�B����D��q���<Rt�B����&�����B��U����S��s�*����<t#�h<Ht<<u�4<Ht�>�PRIVATE �"������ ����*�����ۚ��TYPE_DEFINITION ����<
t�������<t��K ���������� <Yt���WHEN ���<Yt�� �i �Z���,��'�����<
t��D�<%u���AT <u���Arrow <u�}��Assignment <&u�h�v�BEGIN <u�X�f�Box <(u�J�X�CASE <u�;�I�Colon <
u�+�9�Comma <u��)�Double dot <1u���END <5u����FOR <9u�����IF <:u�����IN <;u�����IS <u�����Left parenthesis <=u���LOOP <>u���MOD <?u���NEW <Bu�}��OF <Hu�p�~�PRIVATE <Ku�^�l�RANGE <Lu�N�\�RECORD <Ou�=�K�RETURN <u�,�:�Right label bracket <u���Right parenthesis <Qu�� � �SELECT <Vu�� ���THEN <Wu�� ���TYPE <Xu�� ���USE <Yu� ���WHEN  ��>�� t<�t, <^w	�<'u2����Non-graphic character in character literal �j�Quote expected VWQ����<cu&�6���>���� �6���>��� �Y_^�������6���>���� �6���>��� �Y_^É6���*�������������졞��6��øÀ<*t�ÐF�Ð�<=t� Ð� FÐ�
 �����6���*�����������<.t��ÐF�<.u�>^� tF�] ø �N�^ ���Invalid character �<>t�Ð� FÉ6���*����������<=t	<>t	N�øø û������s3�����s����s&�����s����s�����r�uN�Ð����r�N��u���Ð�����r�uN���Bad underline ��  =bou�  =rtux� ��=bsu�@���=ccu)�  =epu� <tuW�  ���=esuE� <suD�! ��=llu�" ��=ndu�#��=rru�  =ayu�$ �<tuN�% ������N�
��  =egu�  =inu\�& �h=odu� <yu�' �V�����N����  =asu� <eu0�( �6=onu�  =stu�  =anu� <tu�) �����N���  =ecu�  =lauX�  =reuO�* ���=elu�  =ayu�+ ��=tau/�,���=igu�  =itu� <su�-��<ouN�. �����"�N���  =lsu�  <euN�/ �|=ifu_�0 �q�=ndu�1 �e�=ntu�  =ryu>�2 �P=xcu!�  =epu*�  =tiu!�  =onu�3 �*=xiu� <tu�4 �����N���  =oru�5 ���=unu�  =ctu�  =iou� <nu�6 �����^�N�Z��  =enu�  =eru"�  =icu�7 ��=otu� <ou�8 ���� �N��� <fu�9 ��<nu�:�z<su�; �pN����  =imu�  =itu"�  =edu�< �K�=oou� <pu�= �8����N���  =odu�>�������  =ewu�? �	�=otu�@D���=ulu� <lu�A �����n�N�j��  <fuN�B ���<ruN�C���=thu�  =eru� <su�D ��=utu�E ����� �N���  =acu�  =kaut�  =geuk�F �q�<ru`=rau�  =gmuR� <auQ�G �Q�=riu�  =vau6�  =teu-�H �3�=rou!�  =ceu�  =duu�  =reu�I �����N���  =aiu�  =seu:�J ��=anu�  =geu&�K��<eu=ecu!�  =oru� <du�L �����:�N�6�=emu�M��=enu�  =amuܭ  =esuӿN ��=etu�  =uru�� <nu��O �g�=evu��  =eru��  =seu��P �I��  =elu�  =ecuP� <tuO�Q �)�=epu�  =aru4�  =atu+� <eu*�R �=ubu�  =tyu�  =peu�S �� ����j�N�f��  =asu� <kuV�T �� =eru!�  =miu<�  =nau3�  =teu*�U � =heu� <nu�V � =ypu� <eu�W �}���� �N����  =seu�X �d��������  =heu� <nu2�Y �G�=hiu�  =leu�Z �3�=itu� <hu�[ �!�����N���  =oru�\������������
�u���~����ì<=t<>t<<tN�øø ø À<-t�!Ð������׆�ׅ�u�׆�ׅ�u�׆�ׅ�u	�׆�ׅ�t���tN��<t����6���*����������������s)�����s����s�����s����s�����r�uN�  Ðu���  ÐN<rwl�<.u N�  Ð�,0<	v����Digit expected �����s�����s����s�����r�uN�  Ðu���  ÐN<rwN�  ì,0<	v��<tu�<t/w��<+t<-u�,0<	w�����r�t<tw��,0<	v��x�N�  Ê\��6��*�$,0<	w�
��<v��I�Base not 2-16 ���r�*�� ,0<	v
,'<
r<w:�r,��Digit >= base ��EXTENDED_DIGIT expected �<_t�:�t
�u�<.u��Ǭ:�u��������r
t<t<t���EXPONENT expected N�  ����	!ø�ø À<=t�Ð�FÐ� Ë���� �u��6���*��������������׆�ׅ�u�׆�ׅ�u�׆�ׅ�u	�׆�ׅ�t���tN��<t1w
�<"t�N��<wRtx�6��F��Unmatched string quote ��Horizontal tab not allowed in string constant ���Invalid character in string constant ��Format effector not allowed in string constant ����׆���u�׆���u�׆���u	�׆���t�
�tN��<rt�	��<%t�N���8�Double quote not allowed in percent delimited string constant � À�                            �WQ.�� �� ��+�� �..� ..� �������������Y_^]��м �SQRVWU�Ź �� ���*�Ŏ��ŗ��&����Bu��澰 +��K 󤍆  �ؾt9��  ���?��Q���r��- ����r��- �������߬��s�謊���s� ��u�]_^ZY[���м �4�  k
