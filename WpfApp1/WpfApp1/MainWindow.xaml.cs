using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Globalization;
using System.Threading;
namespace WpfApp1
{
	public partial class MainWindow : Window
	{
		private List<NhanVien> list = new List<NhanVien>();
		public MainWindow()
		{
			InitializeComponent();
		}

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
			CultureInfo cultureInfo = CultureInfo.CreateSpecificCulture(CultureInfo.CurrentCulture.Name);
			cultureInfo.DateTimeFormat.ShortDatePattern = "MM-dd-yyyy";
			Thread.CurrentThread.CurrentCulture = cultureInfo;
			NhanVien nv = new NhanVien("NV01", "Hung Nguyen", "Nam", "20/11/2002", "To Chuc", 2);
			list.Add(nv);
			dgv_nhanvien.ItemsSource = null;
			dgv_nhanvien.ItemsSource = list;
		}

		private void btn_Nhap_Click(object sender, RoutedEventArgs e)
        {
            if (Check_Data())
            {
				string dob = ((DateTime)dp_date.SelectedDate).ToString("dd/MM/yyyy");
				string gd = (rad_nam.IsChecked == true ? "Nam" : "Nữ");
				NhanVien nv = new NhanVien(tb_id.Text, tb_name.Text, gd, dob, cb_phong.Text, double.Parse(tb_salary.Text));
				list.Add(nv);
				dgv_nhanvien.ItemsSource = null;
				dgv_nhanvien.ItemsSource = list;
            }

        }

		private bool Check_Data()
        {
            if (tb_id.Text.CompareTo("")==0)
            {
				MessageBox.Show("You must enter the id:", "ERROR", MessageBoxButton.OK, MessageBoxImage.Error);
				tb_id.Focus();
				return false;
            }
            foreach (var item in list)
            {
                if (item.id.Equals(tb_id.Text)==true)
                {
					MessageBox.Show("Already exist id in the list:", "ERROR", MessageBoxButton.OK, MessageBoxImage.Error);
					tb_id.Focus();
					return false;
				}
			}
            if (tb_name.Text.CompareTo("")==0)
            {
				MessageBox.Show("You must enter the fullname:", "ERROR", MessageBoxButton.OK, MessageBoxImage.Error);
				tb_name.Focus();
				return false;
			}
			DateTime ns = (DateTime)dp_date.SelectedDate;
			int ageNow = (int)DateTime.Now.Year - ns.Year;
            if (ageNow<18)
            {
				MessageBox.Show("Employee's age must be over 18 years old", "ERROR", MessageBoxButton.OK, MessageBoxImage.Error);
				return false;
			}
            if (tb_salary.Text==String.Empty)
            {
				MessageBox.Show("You must enter the salary:", "ERROR", MessageBoxButton.OK, MessageBoxImage.Error);
				tb_salary.Focus();
				return false;
			}
            else
            {
                try
                {
					double salary = double.Parse(tb_salary.Text);
                }
                catch (Exception)
                {
					MessageBox.Show("Salary coefficient may not contain letters", "ERROR", MessageBoxButton.OK, MessageBoxImage.Error);
					tb_salary.Focus();
					tb_salary.SelectAll();
					return false;
                }
            }
			return true;
		}

        private void btn_Window2_Click(object sender, RoutedEventArgs e)
        {
			int maxAge = list.Max(x => x.age);
			List<NhanVien> other = list.FindAll(x => x.age == maxAge);
			Window2 myWindow = new Window2();
			myWindow.dgv_nhanvien.ItemsSource = other;
			myWindow.Show();
		}
    }
}