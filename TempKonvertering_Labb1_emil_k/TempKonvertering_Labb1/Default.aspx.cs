using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TempKonvertering_Labb1.Model;
namespace TempKonvertering_Labb1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void konvertButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                if (FahrToCelRadioButton.Checked)
                {
                    header1.Text = "°F";
                    header2.Text = "°C";
                }

                for (var i = int.Parse(startTextBox.Text); i <= int.Parse(slutTextBox.Text); i += int.Parse(stegTextBox.Text))
                {

                    var temperature = CelToFahrRadioButton.Checked ? TemperaturConverter.CelsiusToFahrenheit(i) : TemperaturConverter.FahrenheitToCelsius(i);
                    TableRow trow = new TableRow();
                    tempTable.Rows.Add(trow);

                    TableCell tcell = new TableCell();
                    TableCell tcell2 = new TableCell();
                    tcell2.Text = temperature.ToString();
                    tcell.Text = i.ToString();
                    trow.Cells.Add(tcell);
                    trow.Cells.Add(tcell2);
                }

                tempTable.Visible = true;
            }
        }
    }
}