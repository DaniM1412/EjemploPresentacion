<%@Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="SqlP1.Forms.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <html>
    <style>
        * {
            text-decoration: none;
            list-style: none;
            margin: 0px;
            padding: 0px;
            outline: none;
        }
        body {
            margin: 0px;
            padding: 0px;
            font-family: "Open Sans", sans-serif;
        }
        section {
            width: 100%;
            max-width: 1200px;
            margin: 0px auto;
            display: table;
            position: relative;
        }
        h1 {
            margin: 0px auto;
            display: table;
            font-size: 26px;
            padding: 40px 0px;
            color: #002e5b;
            text-align: center;
        }
        h1 span {
            font-weight: 500;
        }

        header {
            width: 100%;
            display: table;
            background-color: #2861fd10;
            margin-bottom: 30px;
        }
        #logo {
            float: left;
            font-size: 24px;
            text-transform: uppercase;
            color: #002e5b;
            font-weight: 600;
            padding: 20px 0px;
        }
        nav {
            width: auto;
            float: right;
        }
        nav ul {
            display: table;
            float: right;
        }
        nav ul li {
            float: left;
        }
        nav ul li:last-child {
            padding-right: 0px;
        }
        nav ul li a {
            color: #002e5b;
            font-size: 18px;
            padding: 25px 20px;
            display: inline-block;
            transition: all 0.5s ease 0s;
        }
        nav ul li a:hover {
            background-color: #002e5b;
            color: #fde428;
            transition: all 0.5s ease 0s;
        }
        nav ul li a:hover i {
            color: #85858b;
            transition: all 0.5s ease 0s;
        }
        nav ul li a i {
            padding-right: 10px;
            color: #002e5b;
            transition: all 0.5s ease 0s;
        }

        .toggle-menu ul {
            display: table;
            width: 25px;
        }
        .toggle-menu ul li {
            width: 100%;
            height: 3px;
            background-color: #002e5b;
            margin-bottom: 4px;
        }
        .toggle-menu ul li:last-child {
            margin-bottom: 0px;
        }

        input[type="checkbox"],
        label {
            display: none;
        }

        .content {
            display: table;
            margin-bottom: 60px;
            width: 900px;
        }
        .content h2 {
            font-size: 18px;
            font-weight: 500;
            color: #002e5b;
            border-bottom: 1px solid #fde428;
            display: table;
            padding-bottom: 10px;
            margin-bottom: 10px;
        }
        .content p {
            font-size: 14px;
            line-height: 22px;
            color: #7c7c7c;
            text-align: justify;
        }

        footer {
            display: table;
            padding-bottom: 30px;
            width: 100%;
        }
        .social {
            margin: 0px auto;
            display: table;
            display: table;
        }
        .social li {
            float: left;
            padding: 0px 10px;
        }
        .social li a {
            color: #002e5b;
            transition: all 0.5s ease 0s;
        }
        .social li a:hover {
            color: #fde428;
            transition: all 0.5s ease 0s;
        }

        @media only screen and (max-width: 1440px) {
            section {
                max-width: 95%;
            }
        }

        @media only screen and (max-width: 980px) {
            header {
                padding: 20px 0px;
            }
            #logo {
                padding: 0px;
            }
            input[type="checkbox"] {
                position: absolute;
                top: -9999px;
                left: -9999px;
                background: none;
            }
            input[type="checkbox"]:fous {
                background: none;
            }
            label {
                float: right;
                padding: 8px 0px;
                display: inline-block;
                cursor: pointer;
            }
            input[type="checkbox"]:checked ~ nav {
                display: block;
            }

            nav {
                display: none;
                position: absolute;
                right: 0px;
                top: 53px;
                background-color: #002e5b;
                padding: 0px;
                z-index: 99;
            }
            nav ul {
                width: auto;
            }
            nav ul li {
                float: none;
                padding: 0px;
                width: 100%;
                display: table;
            }
            nav ul li a {
                color: #fff;
                font-size: 15px;
                padding: 10px 20px;
                display: block;
                border-bottom: 1px solid rgba(225, 225, 225, 0.1);
            }
            nav ul li a i {
                color: #fde428;
                padding-right: 13px;
            }
        }

        @media only screen and (max-width: 980px) {
            .content {
                width: 90%;
            }
        }

        @media only screen and (max-width: 568px) {
            h1 {
                padding: 25px 0px;
            }
            h1 span {
                display: block;
            }
        }

        @media only screen and (max-width: 480px) {
            section {
                max-width: 90%;
            }
        }

        @media only screen and (max-width: 360px) {
            h1 {
                font-size: 20px;
            }
            label {
                padding: 5px 0px;
            }
            #logo {
                font-size: 20px;
            }
            nav {
                top: 47px;
            }
        }

        @media only screen and (max-width: 320px) {
            h1 {
                padding: 20px 0px;
            }
        }
        /*FORMULARIO*/
        /* Importación de fuentes de google fonts */ 
        @import url(https://fonts.googleapis.com/css?family=Noto+Sans);

        body {
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            background: url(bolinche.jpg);
            background-size: cover;
            background-attachment: fixed;
        }


        .contact_form{  
            width: 460px; 
            height: auto;
            margin: 80px auto;
            border-radius: 10px;  
            padding-top: 30px;
            padding-bottom: 20px;  
            background-color: #fbfbfb; 
            padding-left: 30px; 
        }


        input{
            background-color: #fbfbfb; 
            width: 408px; 
            height: 40px; 
            border-radius: 5px;  
            border-style: solid; 
            border-width: 1px; 
            border-color: black; 
            margin-top: 10px;  
            padding-left: 10px;
            margin-bottom: 20px; 
            font-weight: bold;
        }


        textarea{
            background-color:black; 
            width: 405px; 
            height: 150px; 
            border-radius: 5px;  
            border-style: solid; 
            border-width: 1px; 
            border-color: black; 
            margin-top: 10px;  
            padding-left: 10px;
            margin-bottom: 20px; 
            padding-top: 15px; 
        }


        label{
            display: block; 
            float: center;  
        }


        button{
            height: 45px; 
            padding-left: 5px;
            padding-right: 5px;   
            margin-bottom: 20px; 
            margin-top: 10px;   
            text-transform: uppercase;
            background-color: black; 
            border-color: black; 
            border-style: solid; 
            border-radius: 10px;  
            width: 420px;   
            cursor: pointer;
        }





        span{
            color: #ab4493; 
        }


        .aviso{
            font-size: 13px;  
            color: #0e0e0e;  
        }


        h1{
            font-size: 39px;  
            text-align: letf; 
            padding-bottom: 20px; 
            color: #0A1172;
        }


        h3{
            font-size: 16px; 
            padding-bottom: 30px;
            color: #0e0e0e;   
        }


        p{
            font-size: 14px; 
            color: #0e0e0e; 
        }


        ::-webkit-input-placeholder {
            color: #a8a8a8;
        }


        ::-webkit-textarea-placeholder {
            color: #a8a8a8;
        }


        .formulario input:focus{
            outline:0;
            border: 1px solid #97d848;
        }


        .formulario textarea:focus{
            outline:0;
            border: 1px solid #97d848;
        }

        .auto-style1 {
            width: 460px;
            height: auto;
            margin: 80px auto;
            border-radius: 10px;
            padding-top: 30px;
            padding-bottom: 20px;
            background-color: #009999;
            padding-left: 30px;
            color: #009999;
        }

    </style>

    <header>
        <section>
           

            
            <input type="checkbox" id="toggle-1">
    </header>


    <head>
        <meta charset="UTF-8">
        <title>REGISTRO</title>
    </head>


    <body>  
        
        
        <div class="auto-style1">
            
            
            <div class="formulario">

                <form id="form1" runat="server">
                    <h1>REGISTRO </h1>
               <p>
                        <label for="nombre" class="colocar_nombre">Ingresa tu nombre completo
                          
                        <asp:TextBox ID="txtnombre" runat="server"></asp:TextBox>
                          
                        </label>
                    </p>
                    <p>
                        <label for="nombre" class="colocar_nombre"> Ingresa tu correo
                          
                        <asp:TextBox ID="txtcorreo" runat="server"></asp:TextBox>
                          
                        </label>
                          &nbsp;</p>

                    <p>
                        <label for="nombre" class="colocar_nombre">Ingresa tu telefono
                          
                        <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                          
                        </label>
                    </p>

                    <p>
                        <label for="nombre" class="colocar_nombre">Ingresa contraseña
                          
                        <asp:TextBox ID="txtContraseña" runat="server" OnTextChanged="txtContraseña_TextChanged"></asp:TextBox>
                          
                        </label>
                    </p>
            
                      
                    <p>
                        <label for="nombre" class="colocar_nombre">Ingresa tu contraseña de nuevo para confirmar
                          
                        <asp:TextBox ID="txtConfirmacion" runat="server"></asp:TextBox>
                           <asp:Button ID="btnRegistro" runat="server" Text="REGISTRAR DATOS " OnClick="btnRegistro_Click"  />
                        </label>
                    <p>
                        <asp:Label ID="lblAdvertencia" runat="server"></asp:Label>
                         
                </form>
            </div>  
        </div>
   </body>  
</html>

