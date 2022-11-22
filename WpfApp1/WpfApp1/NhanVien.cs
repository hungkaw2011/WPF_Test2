using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Globalization;
namespace WpfApp1
{
    internal class NhanVien
    {
        public string id { get; set; }
        public string fullname { get; set; }
        public string dateOfBirth { get; set; }
        public string gender { get; set; }
        public string phong { get; set; }
        public double salary { get; set; }
        public int age
        {
            get
            {
                DateTime ns = DateTime.Parse(dateOfBirth, new CultureInfo("vi-VI", true));
                return DateTime.Now.Year - ns.Year;
            }
        }

        public NhanVien(string id, string fullname,  string gender, string dateOfBirth, string phong, double salary)
        {
            this.id = id;
            this.fullname = fullname;
            this.gender = gender;
            this.dateOfBirth = dateOfBirth;
            this.phong = phong;
            this.salary = salary;
        }

        public NhanVien()
        {
        }

        public override bool Equals(object obj)
        {
            return obj is NhanVien vien &&
                   id == vien.id;
        }

        public override int GetHashCode()
        {
            return HashCode.Combine(id);
        }
    }
}
