<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddNewPatron.aspx.vb" Inherits="librarians_AddNewPatron" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript" src="../js/jquery.inputmask.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(":input").inputmask();
        });
    </script>
    <div class="container">
        <div class="col-md-12">
        <div class="form-horizontal">
            
            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Width="800px">
                <WizardSteps>
             
                    <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                        <ContentTemplate>
                            <div class="page-header">
                                    <h2>Sign Up for Your New Account</h2>
                            </div>
                                <div class="form-group">
                                    <asp:Label CssClass="col-sm-2 control-label" ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="UserName" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ForeColor="Red" ValidationGroup="CreateUserWizard1">*User Name Required</asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                        <asp:Label CssClass="col-sm-2 control-label" ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ForeColor="Red" ValidationGroup="CreateUserWizard1">*Password is Required.</asp:RequiredFieldValidator>
                                    </div>
                                </div>
                               <div class="form-group">
                                        <asp:Label CssClass="col-sm-2 control-label" ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="ConfirmPassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ForeColor="Red" ValidationGroup="CreateUserWizard1">*Confirm Password is Required</asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                        <asp:Label ID="EmailLabel"  CssClass="col-sm-2 control-label" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                    <div class="col-sm-10">
                                        <asp:TextBox CssClass="form-control" ID="Email" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ForeColor="Red" ValidationGroup="CreateUserWizard1">*E-mail is required</asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                        <asp:Label  CssClass="col-sm-2 control-label" ID="QuestionLabel" runat="server" AssociatedControlID="Question">Security Question:</asp:Label>
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="Question" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="Security question is required." ToolTip="Security question is required." ForeColor="Red" ValidationGroup="CreateUserWizard1">*Security question is required</asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                        <asp:Label ID="AnswerLabel" CssClass="col-sm-2 control-label" runat="server" AssociatedControlID="Answer">Security Answer:</asp:Label>
                                    <div class="col-sm-10">
                                        <asp:TextBox CssClass="form-control" ID="Answer" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Security answer is required." ToolTip="Security answer is required." ForeColor="Red" ValidationGroup="CreateUserWizard1">*Security Answer is required</asp:RequiredFieldValidator>
                                    </div>
                                </div>
                               <div class="form-group">
                                   <div class="col-sm-10">
                                        <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="CreateUserWizard1"></asp:CompareValidator> 
                                        <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                    </div>
                                </div>
                        </ContentTemplate>
                        <CustomNavigationTemplate>
                            <table border="0" cellspacing="5" style="width:100%;height:100%;">
                                <tr align="right">
                                    <td align="right" colspan="0">
                                        <asp:Button ID="StepNextButton" CssClass="btn btn-default"  runat="server" CommandName="MoveNext" Text="Create User" ValidationGroup="CreateUserWizard1" />
                                    </td>
                                </tr>
                            </table>
                        </CustomNavigationTemplate>
                    </asp:CreateUserWizardStep>
                    <asp:WizardStep ID="PatronID" runat="server" StepType="Step" Title="New Patron">
                   <div class="form-group">
                        <label for="FirstName" class="col-sm-2 control-label">First Name</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtFirstName" CssClass="form-control" Placeholder="First Name" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtFirstName" ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="First Name is required"></asp:RequiredFieldValidator>
                        </div>
                   </div>
                   <div class="form-group">
                        <label for="LastName" class="col-sm-2 control-label">Last Name</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtLastName" CssClass="form-control" Placeholder="Last Name" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtLastName" runat="server" ForeColor="Red" ErrorMessage="Last Name is required"></asp:RequiredFieldValidator>
                        </div>  
                    </div>
                    <div class="form-group">
                        <label for="BirthDate" class="col-sm-2 control-label">Birth Date</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtBirthDate" data-inputmask="'mask': '99/99/9999'" CssClass="form-control" Placeholder="Birth Date" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtBirthDate" ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ErrorMessage="Birth Date is required"></asp:RequiredFieldValidator>
                        </div>  
                    </div>
                        <div class="form-group">
                        <label for="Address1" class="col-sm-2 control-label">Address 1</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtAddress1" CssClass="form-control" Placeholder="Address 1" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtAddress1" ID="RequiredFieldValidator4" runat="server" ForeColor="Red" ErrorMessage="An address is required"></asp:RequiredFieldValidator>
                        </div>  
                    </div>   
                        <div class="form-group">
                        <label for="Address2" class="col-sm-2 control-label">Address 2</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtAddress2" CssClass="form-control" Placeholder="Address 2" runat="server"></asp:TextBox>
                        </div>  
                    </div>  
                        <div class="form-group">
                        <label for="City" class="col-sm-2 control-label">City</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtCity" CssClass="form-control" Placeholder="City" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtCity" ID="RequiredFieldValidator5" runat="server" ForeColor="Red" ErrorMessage="City is required"></asp:RequiredFieldValidator>
                        </div>  
                    </div> 
                    <div class="form-group">
                        <label for="State" class="col-sm-2 control-label">State</label>
                        <div class="col-sm-10">
                            <asp:DropDownList ID="dropdownState" CssClass="form-control"  runat="server" DataSourceID="SqlDataSource1" DataTextField="State" DataValueField="State"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT State FROM States"></asp:SqlDataSource>
                        </div>  
                    </div>
                    <div class="form-group">
                        <label for="Zip" class="col-sm-2 control-label">Zip Code</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtZip" data-inputmask="'mask': '99999'" CssClass="form-control" Placeholder="Zip Code" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtZip" ID="RequiredFieldValidator6" runat="server" ForeColor="Red" ErrorMessage="Zip Code is required"></asp:RequiredFieldValidator>
                        </div>  
                    </div>
                    <div class="form-group">
                        <label for="PhoneNumber" class="col-sm-2 control-label">Phone Number</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtPhoneNumber" data-inputmask="'mask': '(999) 999-9999'" CssClass="form-control" Placeholder="(555)555-5555" runat="server"></asp:TextBox>
                        </div>  
                    </div>
                    <div class="form-group">
                        <label for="Email" class="col-sm-2 control-label">Email</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtEmail" CssClass="form-control" Placeholder="example@example.com" runat="server"></asp:TextBox>
                        </div> 
                    </div>                
                </asp:WizardStep>
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                    <ContentTemplate>
                        <table>
                            <tr>
                                <td align="center">Complete</td>
                            </tr>
                            <tr>
                                <td>Your account has been successfully created.</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Button ID="ContinueButton" CssClass="btn btn-default"  runat="server" CausesValidation="False" CommandName="Continue" OnClick="ContinueButton_Click" Text="Continue" ValidationGroup="CreateUserWizard1" />
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:CompleteWizardStep>
                </WizardSteps>
                <FinishNavigationTemplate>
                    <asp:Button ID="FinishPreviousButton" CssClass="btn btn-default" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
                    <asp:Button ID="FinishButton" CssClass="btn btn-default" runat="server" CommandName="MoveComplete" Text="Finish" />
                </FinishNavigationTemplate>
                <StepNavigationTemplate>
                    <asp:Button ID="StepPreviousButton" CssClass="btn btn-default" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
                    <asp:Button ID="StepNextButton" CssClass="btn btn-default" runat="server" CommandName="MoveNext" Text="Next" />
                </StepNavigationTemplate>
            </asp:CreateUserWizard>
</div>
        </div>
        <div class="row" id="breadcrumbs">
          <ol class="breadcrumb">
              <li><a id="A3" runat="server" href="~/Default.aspx">Home</a></li>
              <li><a id="A1" runat="server" href="~/librarians/Default.aspx">Librarian Home</a></li>
              <li><a id="A2" runat="server" href="~/librarians/ViewPatrons.aspx">View Patrons</a></li>
              <li class="active">Add New Patron</li>
          </ol>
        </div>
        </div>
</asp:Content>

