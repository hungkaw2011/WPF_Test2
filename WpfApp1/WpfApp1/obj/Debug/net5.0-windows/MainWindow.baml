   M S B A M L   `   `   `  ????B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.MainWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	   -   5          ? Title$  
MainWindow??5	   	   $	??550??6   $	??800??6)   .??5
      ?  ? ColumnDefinitions 5   
   ?? 5      $
??auto ?6   ?? 5       ? RowDefinitions 5   
   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      ?? 5      $
??auto ?6   .+?5   
   ?? $??1??6   $??2??6   $??7??62   
??? ? ?$??1q?5      
???????6%   ?? 5   
   $'??!Quản lý thông tin nhân viên??6   
????  ?$??DemiBold"?5!      $??Center=?5"      $??30(?5#      $??Center=?5$      $??0??5%      $??2??6   5&      ?? 5(   
   $??1??6   $??Mã Nhân Viên:??6   $??	10,5,10,5q?65   ?? 5)   
   -   5         ??Name$ tb_id??5)      $??1??6!   $??1??6.   $	??280??6>   $??	10,5,10,5q?5*      $
??Left=?5+      6/   ?? 5,   
   $??2??6   $??
Họ Tên:??6   $??	10,5,10,5q?6/   ?? 5-   
   -   5        $ tb_name??5-      $??2??6#   $??2??60   $	??350??6@   $
??Left=?5.      $??	10,5,10,5q?5/      6'   ?? 50   
   $??3??6   $??Ngày Sinh:??6   $??	10,5,10,5q?62   6G   (  "System.Windows.Controls.DatePicker  51   
   -   5          Name$ dp_date??51   E   $??3??6   $??1??6"   $??	10,5,10,5q?62   $
??Left=?52      $	??200??60      SelectedDate 
10/10/20026<   ?? 54   
   $??4??6   $??Giới Tính:??6   $??	10,5,10,5q?62   ?? 55   
   $??4??6   $??1??6"    ?? Orientation$ 
Horizontal=?62   .+?56      	? -   5         	?Name$ rad_nam??56      $??Center=?6+    d? 	IsChecked$
 TrueY?6F   .??6W   Nam6\   	? 57      $??Center=?6   $??	15,5,10,5q?65   .??6H   Nữ6L   58      ?? 59   
   $??5??6   $??Phòng Ban:??6   $??	10,5,10,5q?62   ?? 5:   
   -   5        	 ??Name$	 cb_phong??5;      $??5??5:      $??1??6    $	??200??60   
 ?? SelectedIndex$
 0??5<      $??	10,5,10,5q?5=      $
??Left=?6&   .@?5>      ?? -   5         ??Name$ 	cb_tochuc??5>      $??Tổ Chức??6.   6B   ?? 5?      -   5        $ cb_tkehoach??5?      $??Kế Hoạch??60   6E   ?? 5@      $??	Vật Tư??6   6.   5A      ?? 5B   
   $??6??6   $??Hệ Số Lương:??6   $??	10,5,10,5q?64   ?? 5C   
   -	   5        $ 	tb_salary??5C      $??6??6%   $??2??62   $	??150??6B   $
??Left=?5D      $??	10,5,10,5q?5E      6'   &   System.Windows.Controls.DataGrid  5G   
   -
   5          Name$ dgv_nhanvien??5H      $??7??5G      $??2??6    $??	10,5,10,5q?64      
dgv_header   ColumnHeaderStyle# [  5I         AutoGenerateColumns$ False??5J         
IsReadOnly$
 True??5K         Columns 5M      0  *System.Windows.Controls.DataGridTextColumn  5N      ,  &System.Windows.Controls.DataGridColumn   Header$ Mã Nhân Viên??6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6;   ?? *id+  5O      $ 	Họ Tên??6%    65   ?? *
fullname+  5P      $ Giới Tính??6%    68   ?? *gender+  5Q      $ 
Phòng Ban??6%    68   ?? *phong+  5R      $ 
Ngày Sinh??6%    68   ?? *dateOfBirth+4  .System.Windows.Controls.DataGridTemplateColumn  5T      $ Tuổi??6)      CellTemplate 5U      ?? 5V      .R?5W      ?? 
???  ??$??Right=?6N   ??6(   ?? *age+6l   5X      5Z      5\      ? 5_   
   $??Center=?6   $??Center=?6*   $??	10,5,10,5q?5`      $??8??5a      $??2??6   .+?5b      ?? $ 
Horizontal=?6   .+?5c      ?? -   5         ??Name$ btn_Nhap??5c      $??Nhập??6/     	btn_style#??[ 5d      ?? 5e      -   5        $ btn_Window2??5e      $??Window 2??62   #??[ 5f      5g      5h      5i      5j      