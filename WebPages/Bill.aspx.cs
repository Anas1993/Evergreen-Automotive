using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Globalization;


public partial class WebPages_Billings : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
		
    }
    protected void btn_addCar_Click(object sender, EventArgs e)
    {
		
    }

    protected void btn_calculate_Click(object sender, EventArgs e)
    {
      

    }

    protected void btn_CreateBill_Click(object sender, EventArgs e)
    {

    }


    protected void txt_Petrol_TextChanged(object sender, EventArgs e)
    {
        //string p = txt_Petrol.Text;
        //petrol = int.Parse(txt_Petrol.Text.ToString());

    }


    protected void txt_OvertimeCharges_TextChanged(object sender, EventArgs e)
    {
        //overtime = int.Parse(txt_OvertimeCharges.Text.ToString());

    }

    protected void txt_ExtraMilage_TextChanged(object sender, EventArgs e)
    {
		
    }
    protected void txt_LateNightAllowance_TextChanged(object sender, EventArgs e)
    {
        //latenightAllowance = int.Parse(txt_LateNightAllowance.Text.ToString());
    }
    protected void txt_DailyAllowance_TextChanged(object sender, EventArgs e)
    {
        //DailyAllowance = int.Parse(txt_DailyAllowance.Text.ToString());
    }
    protected void txt_OutCityNightAllownce_TextChanged(object sender, EventArgs e)
    {
        //outcitynightAllowance = int.Parse(txt_OutCityNightAllownce.Text.ToString());
    }
    protected void txt_ProtocolCharges_TextChanged(object sender, EventArgs e)
    {
        //protocolCharges = int.Parse(txt_ProtocolCharges.Text.ToString());
    }




    protected void ddl_regNum_SelectedIndexChanged(object sender, EventArgs e)
    {
        string regNo = ddl_regNum.SelectedValue.ToString();
        try
        {

            string query = "SELECT * FROM Car where CarRegNo = '" + regNo + "'";

            SqlCommand cmd = new SqlCommand(query, connection);
            connection.Open();

            SqlDataReader da = cmd.ExecuteReader();
            da.Read();

            if (da.HasRows)
            {
                txt_CarModel.Text = da[2].ToString();
                txt_CarColour.Text = da[3].ToString();
                txt_CarMake.Text = da[4].ToString();
                txt_CarClass.Text = da[5].ToString();
            }
            /*  = ModelTXT;
              = ColourTXT;
            = MakeTXT;
             = ClassTXT;
        
             */
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



