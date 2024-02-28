using Med_20.Classes;
using Med_20.Pages;
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

namespace Med_20
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            PageManager.MainFrame = MainFrame;
            PageManager.MainFrame.Navigate(new PageEnter());
            GlobalTimer.Timer.Tick += GlobalTimer_Tick;
        }

        private void GlobalTimer_Tick(object sender, EventArgs e)
        {
            time.Content = "Время сеанса: " + GlobalTimer.ElapsedTime.ToString();
        }
    }
}
