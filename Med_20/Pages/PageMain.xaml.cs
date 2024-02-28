using Med_20.BD_model;
using Med_20.Classes;
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

namespace Med_20.Pages
{
    /// <summary>
    /// Логика взаимодействия для PageMain.xaml
    /// </summary>
    public partial class PageMain : Page
    {
        public PageMain()
        {
            InitializeComponent();
            defVisability();
            PageManager.SupFrame = SupFrame;
        }

        private void defVisability()
        {
            but_aplication.Visibility = Visibility.Collapsed;
            but_bill.Visibility = Visibility.Collapsed;
            but_historyEnter.Visibility = Visibility.Collapsed;
            but_rep.Visibility = Visibility.Collapsed;
            but_reserch.Visibility = Visibility.Collapsed;
            but_resources.Visibility = Visibility.Collapsed;

            var user = Med_lab_20Entities.GetContext().Users.FirstOrDefault(s => s.id_user == DataBank.id_user);

            if (user.id_role == 1)
            {
                but_aplication.Visibility = Visibility.Visible;
                but_rep.Visibility= Visibility.Visible;
            }

            if(user.id_role == 2)
            {
                but_rep.Visibility = Visibility.Visible;
                but_bill.Visibility= Visibility.Visible;
            }

            if(user.id_role == 3)
            {
                but_rep.Visibility =Visibility.Visible;
                but_historyEnter.Visibility= Visibility.Visible;
                but_resources.Visibility= Visibility.Visible;
            }
            if (user.id_role == 4)
            {
                but_rep.Visibility = Visibility.Visible;
                but_reserch.Visibility= Visibility.Visible;
            }
        }

        private void but_enter_Click(object sender, RoutedEventArgs e)
        {

            GlobalTimer.Timer_stop();
            GlobalTimer.ElapsedTime = TimeSpan.Zero;
            DataBank.id_user = null;
            PageManager.MainFrame.GoBack();
        }

        private void but_historyEnter_Click(object sender, RoutedEventArgs e)
        {
            PageManager.SupFrame.Navigate(new PageHisrtoryEnter());
        }
    }
}
