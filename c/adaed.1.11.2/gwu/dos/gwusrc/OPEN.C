/*
    GWAda Development Environment for 386/486 PCs   
    Copyright (C) 1993, Arthur Vargas Lopes  & Michael Bliss Feldman
                        vlopes@vortex.ufrgs.br mfeldman@seas.gwu.edu
 
    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; version 2 of the License.    

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
*/

/* open.c */

#include "externs.h"



	
void AVL_GET_FILE_NAMES(AVL_SOURCE_PTR s,char *pathn)
{
   struct find_t  c_file;
   int n = 0;

   s -> no_files = 0;

   /* find first .ada file in current directory */
   if (_dos_findfirst( pathn, _A_NORMAL, &c_file ))
   		return;	

   s -> no_files += 1;

   /* find the rest of the .ada files */
   while( _dos_findnext( &c_file ) == 0 )
		s -> no_files += 1;
   if (_dos_findfirst( pathn , _A_NORMAL, &c_file ))
   		return;
   sprintf(s -> name[n++],"%-12s",c_file.name);
	
   /* find the rest of the .ada files */
   while( _dos_findnext( &c_file ) == 0 )
   		if (n >= AVL_TOOL_MAX)  {
   			AVL_ERROR("Too many sources scanned...");
   			break;
   			}
   		else
			sprintf(s -> name[n++],"%-12s",c_file.name);
}




void AVL_SHOW_SOURCES(AVL_SOURCE_PTR w, int cols)
{
	short i, first, last, k;	
	short co;
	char msg[35];
	char fmt[20];
	sprintf(fmt," %cc %c-%ds", '%', '%', cols);
	k = avl_cur_source / 15;
	first = k * 15;
	last = first + 14;
	if (last >= avl_size) 
		last = avl_size - 1;
	_settextposition(1,1);
	_outtext("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
	k = 1;
	for(i = first; i <= last; ++i)  {
		_settextposition(k,2);
		if (i == avl_cur_source)
			co = _settextcolor(avl_men_ready);
		else
			co = _settextcolor(avl_men_letter);
		++k;
		_outtext(w -> name[i]);
		}
	_settextcolor(co);
}
                
int AVL_SOURCES(AVL_SOURCE_PTR w, int r, char *pathn)
{
        short x ;
        short no = 0;
        short ch, cols = 0, rows;
        AVL_WIN_PTR hw, hw2;
        if (r < 16)
        	rows = r;
        else 
        	rows = 15;
        avl_size = r;

		cols = 16;
		hw2 = AVL_MAKE_WINDOW("",15,55,15+7,55+24,avl_wnd_bk_color,avl_wnd_color);
		_outtext(" Use the arrow keys to\n");
		_outtext(" go  over  the  files.\n");
		_outtext("\n");
		_outtext(" Press  <enter>  to\n");
		_outtext(" select  a  file.\n");
		_outtext(" Press ESC to  cancel.");
		hw = AVL_MAKE_WINDOW(pathn,3,avl_menu[0].c,3+rows+1,avl_menu[0].c+cols+5,avl_wnd_bk_color,avl_wnd_color);

		while ( 1 )  {
			AVL_SHOW_SOURCES(w,cols-4);
			ch = getch();
			if (ch == 13) {
				AVL_DEL_WINDOW(hw);
				AVL_DEL_WINDOW(hw2);
				return avl_cur_source;
				}
			else {
				if (ch == 0 || ch == 0xE0) {
					ch = getch();
                    switch( ch ) {
                    	case 73 : /* Page Up */ 
                    		avl_cur_source -= rows;
                    		if (avl_cur_source < 0)  
								avl_cur_source = avl_size - 1;
                    		break;
                    	case 72 : /* Up */ 
                    		if (--avl_cur_source < 0)  
								avl_cur_source = avl_size - 1;
                    		break;
                    	case 81 : /* Page Down */ 
                    		avl_cur_source += rows;
                    		if (avl_cur_source >= avl_size)
                    			avl_cur_source = 0;
                    		break;
                    	case 80 : /* Down */ 
                    		if (++avl_cur_source >= avl_size)
                    			avl_cur_source = 0;
                    		break;
                    	default : putchar(7); break;
                    	}
                    continue;
                    }
				if (ch == 27)  {
					AVL_DEL_WINDOW(hw);
					AVL_DEL_WINDOW(hw2);
					return -1;
					}
				putch(7);
				continue;
				}
			}
}			



void AVL_DO_LOAD()
{
	AVL_EDIT_WINDOW_PTR w;
	AVL_WIN_PTR m;
	AVL_SOURCE_SIZE t;
	short n = 0, i=1000;
	char s[161];
	static int first = 0;
	static char fname[161];
	static char lastfn[121];
	static char *msg = " GWAda - Open which file? ";
	w = &avl_windows[avl_window];
	m = AVL_MAKE_WINDOW(msg,7,4,9,5+62,avl_wnd_bk_color,avl_wnd_color);
	if (first == 0)
		sprintf(lastfn,"%s%c*.ada",avl_dir_sources,92);
	first = 1;
	strcpy(fname,lastfn);
	if (AVL_PROMPT(1,1,fname,60)) {
		AVL_DEL_WINDOW(m);
		return;
		}

	strcpy(lastfn,fname);
	for(i = 0; i < strlen(fname); ++i)
		if (fname[i] == '*' || fname[i] == '?')  {
			i = -20;
			break;
			}
	if (i > 0)
		strcpy(w -> file_name, fname);
	else {
		AVL_GET_FILE_NAMES(&t,fname);
		if (t.no_files == 0)  {
			w -> file_name[0] = '\0';
			sprintf(s,"Can't find any file under \'%s\'",fname);
			AVL_ERROR(s);
			}
		else  {		
			n = AVL_SOURCES(&t,t.no_files,fname);
			if (n >= 0)  { 
				for(i = strlen(fname) - 1; t.no_files > 1 && i > 0; --i)  {
					if ((fname[i] == 92 || fname[i] == '\\') && i > 0) {
						fname[i+1] = '\0';
						i = -10;
						break;
						}
					}
				if (i < -1)
					sprintf(w -> file_name, "%s%s",fname,t.name[n]);
				else 
					sprintf(w -> file_name, "%s",t.name[n]);
				}
			else 
				w -> file_name[0] = '\0';
			}
		}
    AVL_DEL_WINDOW(m);
}

                
void AVL_OPEN()
{
        AVL_LINE_PTR head = NULL, temp;
        int x ;
        int no = 0;
        int ch, back;
        char msg[80];
        FILE *fp, *fopen();
        AVL_WIN_PTR hw;
        AVL_EDIT_WINDOW_PTR w;
        if (avl_nwindows >= AVL_MAX_WINDOWS) {
        	sprintf(msg,"Can't open more than %d text files.", AVL_MAX_WINDOWS);
        	AVL_ERROR(msg);
        	return;
        	}
        back = avl_window;
        avl_window = avl_nwindows++;
        w = &avl_windows[avl_window];
        w -> head = w -> current_line = NULL;
        AVL_DO_LOAD();
        if (strlen(w -> file_name) == 0) {
        	--avl_nwindows;
        	avl_window = back;
        	return;
        	}
        _settextrows( 25 );
        _clearscreen( _GCLEARSCREEN );
        AVL_LOAD_FILE(w -> file_name);
}

void AVL_OPEN_ERROR()
{
        AVL_LINE_PTR head = NULL, temp;
        int x ;
        int no = 0;
        int ch, back;
        char *p, msg[80];
        FILE *fp, *fopen();
        AVL_WIN_PTR hw;
        AVL_EDIT_WINDOW_PTR w;
        if (avl_nwindows >= AVL_MAX_WINDOWS) {
        	sprintf(msg,"Can't open more than %d text files.", AVL_MAX_WINDOWS);
        	AVL_ERROR(msg);
        	return;
        	}
        back = avl_window;
        w = &avl_windows[avl_window];
        for(x = strlen(current_file_name) - 1; current_file_name[x] != 92  && 
        	&current_file_name[x] != current_file_name; --x);
        if (current_file_name[x] == 92) 
        	p = &current_file_name[x] + 1;
        else 
        	p = &current_file_name;
        for(x = 0; *(p+x) != '.' && *(p+x) != '\0'; ++x)
        	msg[x] = *(p+x);
        msg[x] = '.';
        msg[x+1] = 'l';
        msg[x+2] = 'i';
        msg[x+3] = 's';
        msg[x+4] = '\0';
        avl_window = avl_nwindows++;
        w = &avl_windows[avl_window];
        strcpy(w -> file_name,msg);
        w -> head = w -> current_line = NULL;
        _settextrows( 25 );
        _clearscreen( _GCLEARSCREEN );
        AVL_LOAD_FILE(w -> file_name);
}
