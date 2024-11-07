using System.Data;

namespace SimThe
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        ketnoi kn = new ketnoi();
        private void Form1_Load(object sender, EventArgs e)
        {
            getData();
        }
        public void getData()
        {
            string query = "select * from Sim order by Sim.NgayKichHoat ASC";
            DataSet ds = kn.LayDuLieu(query);
            dgvSim.DataSource = ds.Tables[0];
        }
    }
}
