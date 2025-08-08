<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="Hobi.aspx.cs" Inherits="WebSite.Hobi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <div class="card shadow p-5" style="width: 100%; border: none; border-radius: 0;">
     <h4 class="text-center mb-4 text-primary">Hobiler</h4>
     <table class="table table-bordered">
         <tr class="text-center">
             <th>SIRA</th>
             <th>HOBİ</th>
             <th>AÇIKLAMA</th>
             <th>FOTOĞRAF</th>
             <th>İŞLEMLER</th>
         </tr>
         <tbody>
             <asp:Repeater ID="Repeater1" runat="server">
                 <ItemTemplate>
                     <tr>
                         <th><%# Eval("Id")%></th>
                         <td><%# Eval("HobiAd")%></td>
                         <td><%# Eval("Aciklama")%></td>
                         <td><%# Eval("ImagePath")%></td>
                         <td>
                             <div style="display: flex; gap: 8px;">
                                 <asp:HyperLink NavigateUrl='<%# "HobiSil.aspx?Id=" + Eval("Id") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger btn-sm">Sil</asp:HyperLink>
                                 <asp:HyperLink NavigateUrl='<%# "HobiGuncelle.aspx?Id="+ Eval("Id") %>' ID="HyperLink2" runat="server" CssClass="btn btn-warning btn-sm">Güncelle</asp:HyperLink>
                             </div>
                         </td>
                     </tr>
                 </ItemTemplate>
             </asp:Repeater>
         </tbody>
     </table>
 </div>
 <br />
 <asp:HyperLink ID="HyperLink3" NavigateUrl="~/HobiEkle" runat="server" CssClass="btn btn-success btn-sm">Ekle</asp:HyperLink>

</asp:Content>
