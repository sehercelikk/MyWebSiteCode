<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="Egitim.aspx.cs" Inherits="WebSite.Egitim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="card shadow p-5" style="width: 100%; border: none; border-radius: 0;">
     <h4 class="text-center mb-4 text-primary">Eğitimler</h4>
     <table class="table table-bordered">
         <tr class="text-center">
             <th>SIRA</th>
             <th>OKUL ADI</th>
             <th>BÖLÜM</th>
             <th>TARİH</th>
             <th>İŞLEMLER</th>
         </tr>
         <tbody>
             <asp:Repeater ID="Repeater1" runat="server">
                 <ItemTemplate>
                     <tr>
                         <th><%# Eval("Id")%></th>
                         <td><%# Eval("OkulAdi")%></td>
                         <td><%# Eval("Bolum")%></td>
                         <td><%# Eval("Tarih")%></td>
                         <td>
                             <div style="display: flex; gap: 8px;">
                                 <asp:HyperLink NavigateUrl='<%# "EgitimSil.aspx?Id=" + Eval("Id") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger btn-sm">Sil</asp:HyperLink>
                                 <asp:HyperLink NavigateUrl='<%# "EgitimGuncelle.aspx?Id="+ Eval("Id") %>' ID="HyperLink2" runat="server" CssClass="btn btn-warning btn-sm">Güncelle</asp:HyperLink>
                             </div>
                         </td>
                     </tr>
                 </ItemTemplate>
             </asp:Repeater>
         </tbody>
     </table>
 </div>
 <br />
 <asp:HyperLink ID="HyperLink3" NavigateUrl="~/EgitimEkle" runat="server" CssClass="btn btn-success btn-sm">Ekle</asp:HyperLink>

</asp:Content>
