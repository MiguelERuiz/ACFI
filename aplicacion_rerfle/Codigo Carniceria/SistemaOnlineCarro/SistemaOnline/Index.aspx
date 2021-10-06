<%@ Page Title="" Language="C#" MasterPageFile="~/Contenedor.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SistemaOnline.Index" %>
<asp:Content ContentPlaceHolderID="contentSlider" runat="server">
    <div id="slider" class="box">
        <div id="slider-holder">
          <ul>
            <li><a href="#"><img src="css/images/banner01-00-57.jpg" style="width:731px ; height:265px;"/></a></li>
               <li><a href="#"><img src="css/images/ternera_lechazo.jpg" style="width:731px ; height:265px;" /></a></li>
                <li><a href="#"><img src="css/images/home_banner.jpg" style="width:731px ; height:265px;"/></a></li>
                <li><a href="#"><img src="css/images/home_banner_5.jpg" style="width:731px ; height:265px;"/></a></li>
          </ul>
        </div>
        <div id="slider-nav"> <a href="#" class="active">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> </div>
      </div>
    <!-- Products -->
      <div class="products">
        <div class="cl">&nbsp;</div>
        <ul>
          <li> <a href="#">
              <img src="css/images/chuleton_1.jpg" style="width:200px ; height:180px;"  /></a>
            <div class="product-info">
              <h3>CHULETÓN</h3>
              <div class="product-desc">
                <h4>Descripcion</h4>
                La estrella indiscutible de todos nuestros productos. Auténtico chuletón de Ávila de calidad y sabor inigualable.
                  Viajes. P.V.P. KILO 18,50 €.
                <strong class="price">€ 12,03</strong> </div>
            </div>
          </li>
          <li> <a href="#"><img src="css/Images/lote.jpg" style="width:200px ; height:180px;" /></a>
            <div class="product-info">
              <h3>LOTE OFERTA</h3>
              <div class="product-desc">
                <h4>Descripcion</h4>
                <%--<p>--%>
                    - 2 kg de carne picada. 
                    - 2 kg carne guisar. 
                    - 2 kg de filetes tiernos. 
                    - 1,5 kg de escalope.
                    ¡De regalo 1 bandeja de burguer meat mini!<br />
                  <%--</p>--%>
                <strong class="price">€ 75,00</strong> </div>
            </div>
          </li>
          <li class="last"> <a href="#">
              <img src="css/Images/SolomilladeTernera.jpg" style="width:200px ; height:180px;"  /></a>
            <div class="product-info">
              <h3>SOLOMILLO DE TERNERA</h3>
              <div class="product-desc">
                <h4>Descripcion</h4>
                  calidad Asegurada
                  
                <strong class="price">€ 23,90</strong> </div>
            </div>
          </li>
        </ul>
        <div class="cl">&nbsp;</div>
      </div>



      <!-- End Products -->
</asp:Content>