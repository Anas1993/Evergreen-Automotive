using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.IO;
using iTextSharp.text.html.simpleparser;
using System.Data;

public partial class WebPages_ViewBill : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btn_SelectBill_Click(object sender, EventArgs e)
    {
      
    }
    protected void btn_Save_Click(object sender, EventArgs e)
    {
       
    }
    
	private void Generatepdf(int serial, int no, string date, string comp, string cust, string reg, string model, string colr, string make, string clss, string tarrif, string rs, string driven, string dest, string fromdate, string fromtime, string todate, string totime, string rentDays, string petrol, string chaff, string LNA, string DA, string OCNA, string PC, string EM, string total, string totalDays, string totalRent, string hourlyRate, string hourlyCharges, string subTotal, string discount, string totalWords)
    {

    }

    private static void DrawLine(PdfWriter writer, float x1, float y1, float x2, float y2, iTextSharp.text.BaseColor color)
    {
        
    }

    //private static PdfPCell PhraseCell(Phrase phrase, int align)
    //{

       
    //}

    //private static PdfPCell ImageCell(string path, float scale, int align)
    //{
        
    //}

    //public static string NumberToWords(int number)
    //{
		
    //}


}