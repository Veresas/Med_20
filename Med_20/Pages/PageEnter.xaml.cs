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
    /// Логика взаимодействия для PageEnter.xaml
    /// </summary>
    public partial class PageEnter : Page
    {
        private Session_history _newEnter = new Session_history();
        public PageEnter()
        {
            InitializeComponent();
            
        }

        private void but_enter_Click(object sender, RoutedEventArgs e)
        {
            var chekLogin = Med_lab_20Entities.GetContext().Users.FirstOrDefault(s => s.login == txt_login.Text);
            if (chekLogin != null)
            {
                if (chekLogin.password == txt_pass.Text)
                {
                    addToHistory(chekLogin, true);
                    DataBank.id_user =  chekLogin.id_user;
                    GlobalTimer.Timer_start();
                    PageManager.MainFrame.Navigate(new PageMain());
                }
                else
                {
                    MessageBox.Show("Некоректный пароль");
                    addToHistory(chekLogin, false);
                }
            }
            else
            {
                MessageBox.Show("Некоректный логин");
            }
        }

        private void addToHistory(Users user, bool IsSuccess)
        {
            _newEnter.id_user = user.id_user;
            _newEnter.Date_of_enter = DateTime.Now;
            _newEnter.IsSuccess = IsSuccess;
            Med_lab_20Entities.GetContext().Session_history.Add(_newEnter);
            try
            {
                //Med_lab_20Entities.GetContext().SaveChanges();
                MessageBox.Show("Запись добавлена");
            }
            catch
            {
                MessageBox.Show("Ошибка добавления");
            }
        }
    }
}
