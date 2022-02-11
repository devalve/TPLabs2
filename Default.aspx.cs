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

                switch (operation.SelectedItem.Value)
                {
                    case "+":
                        Response.Redirect("Forms/Result.aspx?result=" + (first + second));
                        break;
                    case "-":
                        Response.Write($"<h1> Answer is <h1> {(first - second)} </h1>");
                        break;
                    case "*":
                        Response.Write($"<h1> Answer is <h1>{(first * second)}</h1>");
                        break;
                    case "/":
                        Response.Write($"<h1> Answer is <h1>  {(first / second)}     </h1>");
                        break;
                }
            }
            catch
            {
            }

        }
        protected void SecondValidator_ServerValidate(object source, ServerValidateEventArgs args)
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
        protected void FirstValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try
            {
                int.Parse(firstVal.Text);
            }
            catch (Exception)
            {
                args.IsValid = false;
            }

        }

        protected void mainMenu_MenuItemClick(object sender, MenuEventArgs e)
        {
            switch (e.Item.Value)
            {
                case "fv":
                    mainMultiV.ActiveViewIndex = 0;
                    break;
                case "op":
                    mainMultiV.ActiveViewIndex = 1;
                    break;
                case "sv":
                    mainMultiV.ActiveViewIndex = 2;
                    break;
                default:
                    mainMultiV.ActiveViewIndex = 0;
                    break;
            }
        }
    }
}