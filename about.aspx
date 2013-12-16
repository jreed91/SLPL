<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="about.aspx.vb" Inherits="aboutUs_aboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
         <div class="row">
             <div class="col-lg-10">
                 <h2>About Us</h2>
            </div>
         </div>
            
            <div id="aboutImage">
                <div class="col-md-3">
                    <div class="row images">
                        <img src="./images/AboutUs/JacobReed.jpg" alt="Librarian1" width="100" />
                    </div>
                    <div class="row">
                        <a href="http://instruct.biz.uiowa.edu/courses/6K183/jreed1/HW2/">Jacob Reed</a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="row images">
                        <img src="./images/AboutUs/ZhongliZhao.jpg" alt="Librarian2" width="100" />
                    </div>
                    <div class="row">
                        <a href="http://instruct.biz.uiowa.edu/courses/6K183/zhonzhao/HW2/">Zhongli Zhao</a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="row images">
                       <img src="./images/AboutUs/HaoranWang.jpg" alt="Librarian3" width="100" />
                    </div>
                    <div class="row">
                        <a href="http://haoranwang.net">Haoran Wang</a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="row images">
                       <img src="./images/AboutUs/ChangShang.jpg" alt="Librarian4" width="100" />
                    </div>
                    <div class="row">
                        <a href="http://instruct.biz.uiowa.edu/courses/6K183/chashang/HW2/">Chang Shang</a>
                    </div>
                </div> 
            </div>
            </div> 
</asp:Content>

