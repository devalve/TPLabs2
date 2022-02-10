using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace TPLabs2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void submitBtn_Click(object sender, EventArgs e)
        {
            try
            {
                int first = int.Parse(firstVal.Text);
                double second = double.Parse(secondVal.Text);
                if (isUnsigned.Checked) first = (int)Convert.ToUInt32(firstVal.Text);

                switch (operation.SelectedItem.Value)
                {
                    case "+":
                        Response.Write("<h1> Answer is " + (first + second) + "</h1>");
                        break;
                    case "-":
                        Response.Write("<h1> Answer is <h1>" + (first - second) + "</h1>");
                        break;
                    case "*":
                        Response.Write("<h1> Answer is <h1>" + (first * second) + "</h1>");
                        break;
                    case "/":
                        Response.Write($"<h1> Answer is <h1> + {(first / second)}+ </h1>");
                        break;
                }
            }
            catch
            {
            }

        }
        protected void secondValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try
            {
                double.Parse(secondVal.Text);
            }
            catch (Exception)
            {
                args.IsValid = false;
            }

        }
    }
}