<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PARCIALNUEVO.aspx.cs" Inherits="parcial.primero.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <link rel="stylesheet" href="Estilos/StyleSheet1.css" />
    
    <title>PARCIAL ASP.NET</title>
</head>
<body>
    

    <div class="container card card-default">
          <div class="card-header h4">
              FACTURA
          </div>
          <div class="card-body">
               <form runat="server" >           

               <div class="form-row">

                   <div class="form-group col-md-4">
                        <asp:Label ID="labelName" runat="server" Text="Nombre de empresa" CssClass="control-label col-sm-2 col-form-label col-form-label-sm"></asp:Label>
                  
                        <asp:TextBox runat="server" CssClass="form-control" ID="TxtUsername"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" 
                        runat="server" ControlToValidate="TxtUsername"
                        Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ErrorMessage="Por favor rellenar el campo.">Por favor rellenar el campo.</asp:RequiredFieldValidator>
                   </div>

                   <div class="form-group col-md-4">
                        <asp:Label ID="labelSitioWeb" runat="server" Text="Sitio Web" CssClass="control-label col-sm-2 col-form-label col-form-label-sm"></asp:Label>
                  
                        <asp:TextBox runat="server" CssClass="form-control" ID="TextBoxSW"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator24" 
                        runat="server" ControlToValidate="TextBoxSW"
                        Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ErrorMessage="Por favor rellenar el campo." ValidationGroup="error">*</asp:RequiredFieldValidator>
                   </div>

                   <div class="form-group text-center col">
                       <asp:Image ID="Image1" runat="server" CssClass="img-thumbnail rounded mx-auto d-block" src="https://w7.pngwing.com/pngs/485/290/png-transparent-computer-icons-magnifying-glass-invoice-factura-text-logo-sign.png"/>
                   </div>


                   <div class="form-group col-md-4">
                        <asp:Label ID="labelTelephon" runat="server" Text="Telefono" CssClass="control-label col-sm-2 col-form-label col-form-label-sm"></asp:Label>
                  
                        <asp:TextBox runat="server" CssClass="form-control" ID="TextTelefono" TextMode="Number"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" 
                        runat="server" ControlToValidate="TextTelefono"
                        Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ErrorMessage="Por favor rellenar el campo con un telefono.">Por favor rellenar el campo con un telefono.</asp:RequiredFieldValidator>
                   </div>

                   <div class="form-group col-md-4">
                        <asp:Label ID="labelEmailCompanie" runat="server" Text="Email" CssClass="control-label col-sm-2 col-form-label col-form-label-sm"></asp:Label>
                
                        <asp:TextBox runat="server" CssClass="form-control" ID="TextBoxEmail" TextMode="Email" />  
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalide Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBoxEmail" />
                  </div>

                  <div class="form-group col-md-4">
                      <asp:Label ID="Date" runat="server" Text="Fecha" CssClass="control-label col-sm-2 col-form-label col-form-label-sm"></asp:Label>
                      <input class="form-control" type="date" value="2019-08-01" id="FechasEmpresa" />
                  </div>

                  <div class="form-group col-md-4">
                      <asp:Label ID="labelInvoice" runat="server" Text="N - de Factura" CssClass="control-label col-sm-2 col-form-label col-form-label-sm"></asp:Label>
                      
                      <asp:TextBox runat="server" CssClass="form-control" ID="TextBoxInvoiceNumer" TextMode="Number" />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                      runat="server"
                      ErrorMessage="You need to enter a correct invoice Number." ControlToValidate="TextBoxInvoiceNumer"
                      Display="Dynamic" SetFocusOnError="True" ForeColor="Red" >*</asp:RequiredFieldValidator>
                  </div> 
                   
               </div>


              <div class="form-group">
                  <asp:Label ID="label7" runat="server" Text="Cliente / Envio a" CssClass="h5"></asp:Label>
                  
                  <asp:DropDownList ID="DropDownList1" runat="server" CssClass="custom-select" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                       <asp:ListItem Text="Rellenar informacion (Cliente/Envio a)" Value="-1"></asp:ListItem>
                       <asp:ListItem Text="Cliente" Value="0"></asp:ListItem>
                       <asp:ListItem Text="Envio a" Value="1"></asp:ListItem>
                  </asp:DropDownList>
                  
                  <asp:MultiView ID="MultiViewCARS" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
                       <asp:View ID="View1Car" runat="server">
                               <asp:Label ID="labelInformation" runat="server" Text="Cliente" CssClass="h5"></asp:Label>  

                               <div class="form-row mt-2 2">
                                  <div class="form-group col-12" >
                                      <asp:Label ID="labelNameCustomer" runat="server" Text="Nombre del Cliente" CssClass="control-label col-sm-2 col-form-label col-form-label-sm"></asp:Label>
             
                                      <asp:TextBox runat="server" CssClass="form-control" ID="TextBoxCustomerName" />
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidatorCustomerName" 
                                      runat="server" ControlToValidate="TextBoxCustomerName"
                                      Display="Dynamic" SetFocusOnError="True" ForeColor="Red" >Please enter a correct field.</asp:RequiredFieldValidator>
                                  </div>
                                </div>
                                  <div class="form-row">  
                                      <div class="form-group col-12">
                                            <asp:Label ID="labelCedula" runat="server" Text="Cedula" CssClass="control-label col-sm-2 col-form-label col-form-label-sm"></asp:Label>
                  
                                            <asp:TextBox runat="server" CssClass="form-control" ID="TextTextBoxCedula" TextMode="Number"/>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator23" 
                                            runat="server" ControlToValidate="TextTextBoxCedula"
                                            Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ErrorMessage="Ingrese la cedula." ValidationGroup="error">*</asp:RequiredFieldValidator>
                                       </div>  
                                  </div>
                                  <div class="form-row ">
                                      <div class="form-group col-12">
                                            <asp:Label ID="labelCustomerTelephone" runat="server" Text="Telefono" CssClass="control-label col-sm-2 col-form-label col-form-label-sm"></asp:Label>
                  
                                            <asp:TextBox runat="server" CssClass="form-control" ID="TextBoxCustomerTelephon" TextMode="Number"/>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" 
                                            runat="server" ControlToValidate="TextBoxCustomerTelephon"
                                            Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ErrorMessage="Por favor rellenar el campo con un telefono del Cliente." ValidationGroup="error">*</asp:RequiredFieldValidator>
                                       </div>  
                                 </div>
                       </asp:View>

                       <asp:View ID="View2Van" runat="server">
                           <asp:Label ID="label1" runat="server" Text="Envio a" CssClass="h4"></asp:Label>  

                           <div class="form-row mt-2">
                              <div class="form-group col-12" >
                                  <asp:Label ID="labelContact" runat="server" Text="Nombre del Contacto" CssClass="control-label col-sm-2 col-form-label col-form-label-sm"></asp:Label>
             
                                  <asp:TextBox runat="server" CssClass="form-control" ID="TextBoxContact" />
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator25" 
                                  runat="server" ControlToValidate="TextBoxContact"
                                  Display="Dynamic" SetFocusOnError="True" ForeColor="Red" >Escribir nombre del contacto.</asp:RequiredFieldValidator>
                              </div>
                           </div>

                           <div class="form-row ">
                              <div class="form-group col-12">
                                    <asp:Label ID="label4" runat="server" Text="Cedula" CssClass="control-label col-sm-2 col-form-label col-form-label-sm"></asp:Label>
                  
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox2" TextMode="Number"/>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator26" 
                                    runat="server" ControlToValidate="TextTextBoxCedula"
                                    Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ErrorMessage="Ingrese la cedula." ValidationGroup="error">*</asp:RequiredFieldValidator>
                               </div>  
                            </div>
                           <div class="form-row">
                              <div class="form-group col-12">
                                    <asp:Label ID="label6" runat="server" Text="Telefono" CssClass="control-label col-sm-2 col-form-label col-form-label-sm"></asp:Label>
                  
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox3" TextMode="Number"/>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator27" 
                                    runat="server" ControlToValidate="TextBoxCustomerTelephon"
                                    Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ErrorMessage="Por favor rellenar el campo con un telefono del Cliente." ValidationGroup="error">*</asp:RequiredFieldValidator>
                              </div>  
                          </div>
                       </asp:View>
                   </asp:MultiView>
              </div>
                   

              

                   <table class="table table-hover">
                       <tr>
                           <th class="table-danger" scope="row">Descriptión &nbsp;</th>
                           <th class="table-danger" scope="row">Unidades &nbsp;</th>
                           <th class="table-danger" scope="row">Precio Unitario &nbsp;</th>
                           <th class="table-danger" scope="row"> Precio &nbsp;</th>
                       </tr>
                       <tr>
                           <td>
                            
             
                              <asp:TextBox runat="server" CssClass="form-control" ID="TextBoxItem1" />
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                              runat="server"
                              ErrorMessage="Escribe una descripcion" ControlToValidate="TextBoxItem1"
                              Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ValidationGroup="error" >*</asp:RequiredFieldValidator>
                              &nbsp;

                           </td>
                           <td>
                               
             
                              <asp:TextBox runat="server" CssClass="form-control" ID="TextBoxQuantity" TextMode="Number" />
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator7" 
                              runat="server"
                              ErrorMessage="*" ControlToValidate="TextBoxQuantity"
                              Display="Dynamic" SetFocusOnError="True" ForeColor="Red" >Solo numeros.</asp:RequiredFieldValidator>
                              &nbsp;

                           </td>
                           <td>
                                  <asp:TextBox runat="server" CssClass="form-control" ID="TextBoxUnitaryPrince1"  TextMode="Number"/>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator11" 
                                  runat="server"
                                  ErrorMessage="Necesito el precio unitario" ControlToValidate="TextBoxUnitaryPrince1"
                                  Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ValidationGroup="error" >*</asp:RequiredFieldValidator>
                               &nbsp;

                           </td>
                           <td>
                                <asp:Label ID="LabelSubtotal1" runat="server" Visible="false" CssClass="control-label col-sm-2 col-form-label col-form-label-sm"></asp:Label>
                               &nbsp;
                           </td>
                       </tr>
                       <tr>
                           <td>
                              <asp:TextBox runat="server" CssClass="form-control" ID="TextBoxD2" />
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                              runat="server"
                              ErrorMessage="Escribe una descripcion" ControlToValidate="TextBoxD2"
                              Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ValidationGroup="error" >*</asp:RequiredFieldValidator>
                              &nbsp;

                           </td>
                           <td>
                              <asp:TextBox runat="server" CssClass="form-control" ID="TextBoxQuantity2" TextMode="Number" />
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
                              runat="server"
                              ErrorMessage="*" ControlToValidate="TextBoxQuantity2"
                              Display="Dynamic" SetFocusOnError="True" ForeColor="Red" >Solo numeros.</asp:RequiredFieldValidator>
                              &nbsp;
                              

                           </td>
                           <td>
                                  <asp:TextBox runat="server" CssClass="form-control" ID="TextBoxUnitaryPrince2"  TextMode="Number"/>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator15" 
                                  runat="server"
                                  ErrorMessage="Necesito el precio unitario" ControlToValidate="TextBoxUnitaryPrince2"
                                  Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ValidationGroup="error" >*</asp:RequiredFieldValidator>
                               &nbsp;

                           </td>
                           <td>
                              <asp:Label ID="LabelSubtotal2" runat="server" Visible="false" CssClass="control-label col-sm-2 col-form-label col-form-label-sm"></asp:Label>
                              &nbsp;
                           </td>
                       </tr>
                       <tr>
                           <td>
                              <asp:TextBox runat="server" CssClass="form-control" ID="TextBoxD3" />
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                              runat="server"
                              ErrorMessage="Escribe una descripcion" ControlToValidate="TextBoxD3"
                              Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ValidationGroup="error" >*</asp:RequiredFieldValidator>
                              &nbsp;
                           </td>
                           <td>
                              <asp:TextBox runat="server" CssClass="form-control" ID="TextBoxQuantity3" TextMode="Number" />
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator28" 
                              runat="server"
                              ErrorMessage="*" ControlToValidate="TextBoxQuantity3"
                              Display="Dynamic" SetFocusOnError="True" ForeColor="Red" >Solo numeros.</asp:RequiredFieldValidator>
                              &nbsp;


                           </td>
                           <td>

                                  <asp:TextBox runat="server" CssClass="form-control" ID="TextBoxUnitaryPrince3"  TextMode="Number"/>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator19" 
                                  runat="server"
                                  ErrorMessage="Necesito el precio unitario" ControlToValidate="TextBoxUnitaryPrince3"
                                  Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ValidationGroup="error" >*</asp:RequiredFieldValidator>
                                  &nbsp;

                           </td>
                           <td>
                                   <asp:Label ID="LabelSubtotal3" runat="server" Visible="false" CssClass="control-label col-sm-2 col-form-label col-form-label-sm"></asp:Label>
                              &nbsp;
                           </td>
                       </tr>
                       <tr>
                           <td>
                              <asp:TextBox runat="server" CssClass="form-control" ID="TextBoxD4" />
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                              runat="server"
                              ErrorMessage="Escribe una descripcion" ControlToValidate="TextBoxD4"
                              Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ValidationGroup="error" >*</asp:RequiredFieldValidator>
                              &nbsp;
                           </td>
                           <td>
                              <asp:TextBox runat="server" CssClass="form-control" ID="TextBoxQuantity4" TextMode="Number" />
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator29" 
                              runat="server"
                              ErrorMessage="*" ControlToValidate="TextBoxQuantity4"
                              Display="Dynamic" SetFocusOnError="True" ForeColor="Red" >Solo numeros.</asp:RequiredFieldValidator>
                              &nbsp;
                           </td>
                           <td>
                                  <asp:TextBox runat="server" CssClass="form-control" ID="TextBoxUnitaryPrince4"  TextMode="Number"/>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator30" 
                                  runat="server"
                                  ErrorMessage="Necesito el precio unitario" ControlToValidate="TextBoxUnitaryPrince4"
                                  Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ValidationGroup="error" >*</asp:RequiredFieldValidator>
                                  &nbsp;
                              

                           </td>
                           <td>
                                <asp:Label ID="LabelSubtotal4" runat="server" Visible="false" CssClass="control-label col-sm-2 col-form-label col-form-label-sm"></asp:Label>
                              &nbsp;
                           </td>
                       </tr>
                   </table>
                   <br />
                   

              
   







          


         
                  
             
             <asp:Button ID="Button" runat="server" Text="TOTAL TO PAY" CssClass="btn btn-primary mb-3 col col-form-label col-form-label-sm" OnClick="Button_Click" ValidationGroup="error" />
             
             <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="error" />
         </form>
         </div>
             <div class="card">
                <div class="card-header h3">
                    <asp:Label ID="LabelInfo" runat="server" Text="Information" Visible="false"></asp:Label>
                </div>
                <div class="card-body">

                    <asp:Label ID="LabelCustomerName" runat="server" Visible="false" CssClass="control-label col-sm-2 col-form-label col-form-label-sm"></asp:Label><br />

                    <asp:Label ID="LabelStotalIva" runat="server" Visible="false" CssClass="control-label col-sm-2 col-form-label col-form-label-sm"></asp:Label><br />
                    <asp:Label ID="LabelTotaltoPay" runat="server" Visible="false" CssClass="control-label col-sm-2 col-form-label col-form-label-sm"></asp:Label><br /> 
                    
                </div>
            </div>
        </div>

   
   
</body>
</html>