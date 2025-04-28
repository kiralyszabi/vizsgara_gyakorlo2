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
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using ConsoleApp1;
using NetworkHelper;
using Newtonsoft;

namespace wpf
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            List<Ut> utTomb = Backend.GET("http://localhost:3000/utLeKerdez").Send().ToList<Ut>();
            cbutnev.ItemsSource = utTomb;
            cbutnev.SelectedIndex = 0;
            cbutnev.DisplayMemberPath = "nev";
        }

        private void cbutnev_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            lbnev.Content = (cbutnev.SelectedItem as Ut).nev;
            lbhossz.Content = (cbutnev.SelectedItem as Ut).hossz;
            lballomas.Content = (cbutnev.SelectedItem as Ut).allomas;
            lbido.Content = (cbutnev.SelectedItem as Ut).ido;

            if ((cbutnev.SelectedItem as Ut).vezetes == -1)
            {
                lbvezetes.Content = "Nincs vezetés";
            }
            else
            {
                lbvezetes.Content = "van vezetés";
            }
        }

        private void btfelvitel_Click(object sender, RoutedEventArgs e)
        {
            
            try{
                if (tbnev.Text=="")
                {
                    lbhiba.Content = "hiányzó név";
                    return;
                }
                else if (tbtelefon.Text == "")
                {
                    lbhiba.Content = "hianyzo telefonszám";
                    return;
                }
                else if (tbeletkor.Text == "")
                {
                    lbhiba.Content = "eletkor csak szam lehet";
                    return;
                }

                var adatok = new
                {
                    bevitel1 = (cbutnev.SelectedItem as Ut).id,
                    bevitel2 = (cbutnev.SelectedItem as Ut).nev,
                    bevitel3 =tbemail.Text,
                    bevitel4 = Convert.ToInt32(tbtelefon.Text),
                    bevitel5=tbeletkor.Text,
                    
                };
                 Backend.POST("http://localhost:3000/jelentkezesFelvitel").Body(adatok).Send().Message
            }
            catch
            {
                lbhiba.Content = "Hiba a felvitel során";
            }
            
        }
    }
}
