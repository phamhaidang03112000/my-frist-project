#include <stdio.h>
#include <conio.h>
extern DATTHUOCTINHCHOTEP();
extern int TRUNGBINHCONG();
extern CONGFPU();
void main()
{
        char tl;
        int cn;
        clrscr();
        printf("\n          Truong Dai Hoc Mo Ha Noi");
        printf("\n          KHOA CONG NGHE THONG TIN");
        printf("\n          -----------o0o-----------");
        printf("\n\n\n        BAI TAP LON MON LTHT   ");
        printf("\n\n            Cac SV thuc hien:    ");
        printf("\n         1.Phan Van Cuong      ");
        printf("\n         2.                             ");
        printf("\n         3.                             ");
        printf("\n\n\n     Co tiep tuc CT (c/k)?");
        tl=getch();
        if(tl=='c')
        {
          L1:
          clrscr();
          printf("\n        CAC CHUC NANG CUA BTL");
          printf("\n        --------***----------");
          printf("\n        1.Dat thuoc tinh cho tep");
          printf("\n        2.Tinh trung binh cong hai so nguyen");
          printf("\n        3.Kiem tra cong FPU");
          printf("\n\n      Hay chon :");
          scanf("%d",&cn);
          switch(cn)
          {
           case 1: DATTHUOCTINHCHOTEP(); break;
           case 2: TRUNGBINHCONG(); break;
           case 3: CONGFPU(); break;
           default: printf("\n     Nhap sai roi");
          }
          printf("\n     Co thuc hien CN khac (c/k)?");
          tl=getch();
          if(tl=='c'){
          goto L1;
          }
        }
}
