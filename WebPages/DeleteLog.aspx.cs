using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class WebPages_DeleteLog : System.Web.UI.Page
{
    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GreenAutomotive"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_SelectLog_Click(object sender, EventArgs e)
    {
        string iNum = ddl_invoiceNum.Text.ToString();
        try
        {

            string query = "SELECT * FROM Logs where LogID = '" + iNum + "'";

            SqlCommand cmd = new SqlCommand(query, connection);
            connection.Open();

            SqlDataReader da = cmd.ExecuteReader();

            da.Read();

            if (da.HasRows)
            {
               // txt_InvoiceNumber.Text = (da[0].ToString());
                txt_Date.Text = da[1].ToString();
                txt_UserName.Text = da[2].ToString();
                txt_RenterName.Text = da[3].ToString();
                txt_DriverType.Text = da[4].ToString();
                txt_Rate.Text = da[5].ToString();
                txt_DriveOut.Text = da[6].ToString();
                txt_DriveIn.Text = da[7].ToString();
                txt_Petrol.Text = da[8].ToString();
                txt_InvoiceNum.Text = da[9].ToString();
                txt_TotalBill.Text = da[10].ToString();
            }
        }

        catch (Exception msg)
        {
            Response.Write(msg.ToString());
        }
        finally
        {
            connection.Close();
        }

    }
    protected void btn_addCar_Click(object sender, EventArgs e)
    {
        string iNum = ddl_invoiceNum.SelectedValue.ToString();
        try
        {

            string query = "Delete from Logs WHERE InvoiceID = '" + iNum + "'";
            SqlCommand cmd = new SqlCommand(query, connection);
            connection.Open();
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Log Deleted sucessfully');window.location ='DeleteLog.aspx';", true);

            //Response.Write("<script> alert ('Car Deleted sucessfully.');</script>");



        }
        catch (Exception msg)
        {
            Response.Write(msg.ToString());
        }
        finally
        {
            connection.Close();

        }

    }
}