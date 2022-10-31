using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CrudTask1
{
    public partial class StudentInfo : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;
        
        public void DataLoad()
        {
            if (Page.IsPostBack)
            {
                dgViewStudents.DataBind();
            }
        }

        public void ClearAllData()
        {
            txtName.Text = "";
            ddlGender.SelectedValue = ddlGender.Items[0].ToString();
            txtEmail.Text = "";
            chkBoxAgree.Checked = false;
            IbIMessage.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
   
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            IbISID.Text = dgViewStudents.SelectedRow.Cells[1].Text;
            txtName.Text = dgViewStudents.SelectedRow.Cells[2].Text;
            ddlGender.Text = dgViewStudents.SelectedRow.Cells[3].Text;
            txtEmail.Text = dgViewStudents.SelectedRow.Cells[4].Text;

        }



       

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if(txtName.Text!="" && txtEmail.Text!="" && chkBoxAgree.Checked)
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd=new SqlCommand("Insert into Student_record(name,gender,email) values(@name, @gender, @email)",con); 
                    cmd.Parameters.AddWithValue("@name",txtName.Text);
                    cmd.Parameters.AddWithValue("@gender", ddlGender.Text);
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();
                    ClearAllData();
                }
            }
            else
            {
                IbIMessage.Text = "Fill All Information";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (txtName.Text != "" && txtEmail.Text != "" && chkBoxAgree.Checked)
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Update Student_record Set name=@name, gender=@gender,email=@email Where Id=@Id", con);
                    cmd.Parameters.AddWithValue("@name", txtName.Text);
                    cmd.Parameters.AddWithValue("@gender", ddlGender.Text);
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@Id",IbISID.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();
                    ClearAllData();
                }
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using(con=new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("Delete From Student_record Where Id=@Id", con);
                cmd.Parameters.AddWithValue("@Id",IbISID.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                DataLoad();
                ClearAllData();
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ClearAllData();
        }

    }
}