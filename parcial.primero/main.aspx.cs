using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace parcial.primero
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {

            LabelInfo.Visible = true;

            string name = (labelNameCustomer.Text);
            
            LabelCustomerName.Visible = true;

            double Quantity = Convert.ToDouble(TextBoxQuantity.Text);
            double Quantity2 = Convert.ToDouble(TextBoxQuantity2.Text);
            double Quantity3 = Convert.ToDouble(TextBoxQuantity3.Text);
            double Quantity4 = Convert.ToDouble(TextBoxQuantity4.Text);


            double Price = Convert.ToDouble(TextBoxUnitaryPrince1.Text);
            double Price2 = Convert.ToDouble(TextBoxUnitaryPrince2.Text);
            double Price3 = Convert.ToDouble(TextBoxUnitaryPrince3.Text);
            double Price4 = Convert.ToDouble(TextBoxUnitaryPrince4.Text);



            double qp = Quantity * Price;
            LabelSubtotal1.Text = Convert.ToString(qp);
            LabelSubtotal1.Visible = true;

            double qp2 = Quantity2 * Price2;
            LabelSubtotal2.Text = Convert.ToString(qp2);
            LabelSubtotal2.Visible = true;

            double qp3 = Quantity3 * Price3;
            LabelSubtotal3.Text = Convert.ToString(qp3);
            LabelSubtotal3.Visible = true;

            double qp4 = Quantity4 * Price4;
            LabelSubtotal4.Text = Convert.ToString(qp4);
            LabelSubtotal4.Visible = true;


            double sumTotal = qp + qp2 + qp3 + qp4;
            LabelStotalIva.Text = Convert.ToString("Subtotal  $: " + sumTotal);
            LabelStotalIva.Visible = true;

            double totalIva = (sumTotal * 0.19) + sumTotal;
            LabelTotaltoPay.Text = Convert.ToString("Total to Pay + IVA $: " + totalIva);
            LabelTotaltoPay.Visible = true;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            MultiViewCARS.ActiveViewIndex = Convert.ToInt32(DropDownList1.SelectedValue);
        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }
    }
}