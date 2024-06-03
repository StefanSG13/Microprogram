using System.IO;
using System.Windows;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            LoadData();
        }

        private void LoadData()
        {
            string data = File.ReadAllText("microcode.uc");

            List<Instruction> instructions = DataParser.ParseData(data);
            dataGrid.ItemsSource = instructions;
        }
    }
}