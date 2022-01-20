<%@ Page Title="" Language="VB" MasterPageFile="~/General/Forms/JBMNewUIMaster.master" AutoEventWireup="false" CodeFile="prep_V3.aspx.vb" Inherits="CHA_BE_prep_V3" %>

<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v18.2, Version=18.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPivotGrid" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="tabbable tabbable-custom">
        <ul class="nav nav-tabs">
            <li id="head_Tab1" class="active"><a href="#box_tab1" data-toggle="tab">BE Main</a></li>
            <li id="head_Tab2"><a href="#box_tab2" data-toggle="tab">Shipment</a></li>
            <li id="head_Tab3"><a href="#box_tab3" data-toggle="tab">Invoice</a></li>
            <li id="head_Tab6"><a href="#box_tab6" data-toggle="tab">Single Window</a></li>
            <li id="head_Tab7"><a href="#box_tab7" data-toggle="tab">Bond/Cert</a></li>
            <li id="head_Tab5"><a href="#box_tab5" data-toggle="tab">Amendment</a></li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active " id="box_tab1">
                <div class="col-md-12">
                    <div class="form-group">
                        <div class="row" id="BE Main">
                            <div class="col-md-12">
                                <div class="widget box">
                                    <div class="widget-header">
                                        <h4><i class="icon-reorder"></i>General Details</h4>
                                        <div class="toolbar no-padding">
                                            <div class="btn-group"><span class="btn btn-md widget-collapse" data-target="#widgetbox1"><i class="icon-angle-down"></i></span></div>
                                        </div>
                                    </div>
                                    <div class="widget-content collapse col-md-12 in" id="widgetbox1">
                                        <div class="form-horizontal " id="divDynamic1">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="col-md-2">
                                                            </div>
                                                            <div class="col-md-2">
                                                                <label class="radio-inline">
                                                                    <input type="radio" name="Status" id="rdb_Air" runat="server" />Air</label>
                                                                <label class="radio-inline">
                                                                    <input type="radio" name="Status" id="rdb_Sea" runat="server" />Sea</label>
                                                                <label class="radio-inline">
                                                                    <input type="radio" name="Status" id="rdb_ICD" runat="server" />ICD</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <asp:Label ID="lbl_messagetype" runat="server" Text="Message Type" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:DropDownList runat="server" ID="ddl_msg_type">
                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                            <asp:ListItem Value="F">Final</asp:ListItem>
                                                            <asp:ListItem Value="A">Amendment</asp:ListItem>
                                                            <asp:ListItem Value="S">Supplement</asp:ListItem>
                                                            <asp:ListItem Value="D">Delete</asp:ListItem>
                                                            <asp:ListItem Value="E">Ex-Bond BE</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="lbl_jobno" runat="server" Text="Job No" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <div class="input-group">
                                                            <asp:TextBox ID="txt_jobno" runat="server" class="form-control"></asp:TextBox>
                                                            <span class="input-group-btn">
                                                                <button type="button" runat="server" id="btn_jobno" value="..." style="margin: 0px;" class="btn btn-sm" onclick="Search(this, '', 'jobno')">
                                                                    <i class="icon-search"></i>
                                                                </button>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <asp:Label ID="lbl_customHCode" runat="server" Text="Custom House Code" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_custhousecode" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="lbl_jobdate" runat="server" Text="Job Date" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_jobdate" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="lbl_BEno" runat="server" Text="BE Number" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_BEno" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="lbl_modeoftrans" runat="server" Text="Mode of Transport" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:DropDownList runat="server" ID="ddl_modeoftrans">
                                                            <asp:ListItem Value="L">L-Land</asp:ListItem>
                                                            <asp:ListItem Value="S">S-Sea</asp:ListItem>
                                                            <asp:ListItem Value="A">A-Air</asp:ListItem>
                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                    <asp:Label ID="lbl_BEdate" runat="server" Text="BE Date" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_BEdate" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="lbl_class" runat="server" Text="Class" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_class" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="lbl_BEtype" runat="server" Text="BE Type" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:DropDownList runat="server" ID="ddl_BEtype">
                                                            <asp:ListItem Value="H">H- Home Consumption</asp:ListItem>
                                                            <asp:ListItem Value="W">W -Ware House</asp:ListItem>
                                                            <asp:ListItem Value="X">X - Ex-bond BE</asp:ListItem>
                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget box">
                                    <div class="widget-header">
                                        <h4><i class="icon-reorder"></i>Importer Details</h4>
                                        <div class="toolbar no-padding">
                                            <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox2"><i class="icon-angle-down"></i></span></div>
                                        </div>
                                    </div>
                                    <div class="widget-content collapse col-md-12 " id="widgetbox2">
                                        <div class="form-horizontal " id="divDynamic2">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:Label ID="lbl_name" runat="server" Text="Name" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <div class="input-group">
                                                            <asp:TextBox ID="txt_name" runat="server" class="form-control"></asp:TextBox>
                                                            <span class="input-group-btn">
                                                                <button type="button" runat="server" id="btn_name" value="..." style="margin: 0px;" class="btn btn-sm" onclick="Search(this, '', 'name')">
                                                                    <i class="icon-search"></i>
                                                                </button>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <asp:Label ID="lbl_city" runat="server" Text="City" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_impcity" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="lbl_importerOU" runat="server" Text="Importer OU" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_importer_ou" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="lbl_state" runat="server" Text="State" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_state" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <asp:Label ID="lbl_IEcode" runat="server" Text="IE Code " CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_ie_code" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="lbl_Br_srno" runat="server" Text="Branch Sr No" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_br_srno" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="lbl_dealercode" runat="server" Text="Authorized Dealer Code" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_dealercode" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="lbl_importertype" runat="server" Text="Importer Type" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:DropDownList runat="server" ID="ddl_importertype">
                                                            <asp:ListItem Value="G">G-Govt Departments</asp:ListItem>
                                                            <asp:ListItem Value="U">U-Govt Undertakings</asp:ListItem>
                                                            <asp:ListItem Value="O">O-Others</asp:ListItem>
                                                            <asp:ListItem Value="P">P-Private</asp:ListItem>
                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="lbl_address" runat="server" Text="Address " CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_address" runat="server" class="form-control" TextMode="MultiLine" data-val-required="true" Height="100px"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="lbl_pin" runat="server" Text="PIN" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_imppin" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget box">
                                    <div class="widget-header">
                                        <h4><i class="icon-reorder"></i>Additional Information</h4>
                                        <div class="toolbar no-padding">
                                            <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox3"><i class="icon-angle-down"></i></span></div>
                                        </div>
                                    </div>
                                    <div class="widget-content collapse col-md-12 " id="widgetbox3">
                                        <div class="form-horizontal " id="divDynamic3">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:Label ID="Label2" runat="server" Text="Additional Charge, if any" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_addcharge" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label4" runat="server" Text="Miscellaneous Load" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_miscload" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label6" runat="server" Text="Unique Consignment Reference No" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_UCRno" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label8" runat="server" Text="UCR Type" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_UCRtype" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label9" runat="server" Text="Payment Method Code" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_paycode" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label10" runat="server" Text="Port of Origin" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <div class="input-group">
                                                            <asp:TextBox ID="txt_portoforg" runat="server" class="form-control"></asp:TextBox>
                                                            <span class="input-group-btn">
                                                                <button type="button" runat="server" id="btn_portoforg" value="..." style="margin: 0px;" class="btn btn-sm" onclick="Search(this, '', 'portoforg')">
                                                                    <i class="icon-search"></i>
                                                                </button>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label11" runat="server" Text="Country of Origin" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <div class="input-group">
                                                            <asp:TextBox ID="txt_cntryoforg" runat="server" class="form-control"></asp:TextBox>
                                                            <span class="input-group-btn">
                                                                <button type="button" runat="server" id="btn_cntryoforg" value="..." style="margin: 0px;" class="btn btn-sm" onclick="Search(this, '', 'cntryoforg')">
                                                                    <i class="icon-search"></i>
                                                                </button>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <asp:Label ID="Label12" runat="server" Text="Country of Consignment" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_cnrtyofconsgmt" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label13" runat="server" Text="Port Of Shipment" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_portofshmt" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-6">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-2">
                                                    </div>
                                                    <label class="checkbox-inline">
                                                        <input type="checkbox" name="Status" id="chkb_firstchkbreq" runat="server" />First Check Requested (Y/N)</label>
                                                    <label class="checkbox-inline">
                                                        <input type="checkbox" name="Status" id="chkb_kachchaBE" runat="server" />Kachcha BE (Y/N)</label>
                                                    <label class="checkbox-inline">
                                                        <input type="checkbox" name="Status" id="chkb_greenchareq" runat="server" />Green Channel Requested(Y/N)</label>
                                                    <label class="checkbox-inline">
                                                        <input type="checkbox" name="Status" id="chkb_sec48req" runat="server" />Section 48 Requested (Y/N)</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget box">
                                    <div class="widget-header">
                                        <h4><i class="icon-reorder"></i>High Sea Sale</h4>
                                        <div class="toolbar no-padding">
                                            <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox4"><i class="icon-angle-down"></i></span></div>
                                        </div>
                                    </div>
                                    <div class="widget-content collapse col-md-12 " id="widgetbox4">
                                        <div class="form-horizontal " id="divDynamic4">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:Label ID="Label14" runat="server" Text="Original Importer Name" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <div class="input-group">
                                                            <asp:TextBox ID="txt_orgimpname" runat="server" class="form-control"></asp:TextBox>
                                                            <span class="input-group-btn">
                                                                <button type="button" runat="server" id="btn_orgimpname" value="..." style="margin: 0px;" class="btn btn-sm" onclick="Search(this, '', 'orgimpname')">
                                                                    <i class="icon-search"></i>
                                                                </button>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <asp:Label ID="Label15" runat="server" Text="City" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_city" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label16" runat="server" Text="IE Code" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_iecode" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label17" runat="server" Text="PIN" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_pin" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label18" runat="server" Text="Branch Sr No" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_brsrno" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-6">
                                                    </div>

                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label20" runat="server" Text="Address1" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_address1" runat="server" class="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label19" runat="server" Text="Address2" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_address2" runat="server" class="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label224" runat="server" Text="Preceding level" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_preclevel" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-6"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget box">
                                    <div class="widget-header">
                                        <h4><i class="icon-reorder"></i>Warehouse (If Any)</h4>
                                        <div class="toolbar no-padding">
                                            <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox5"><i class="icon-angle-down"></i></span></div>
                                        </div>
                                    </div>
                                    <div class="widget-content collapse col-md-12 " id="widgetbox5">
                                        <div class="form-horizontal " id="divDynamic5">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:Label ID="Label21" runat="server" Text="WH Code" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_WHcode" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label22" runat="server" Text="WH BE No" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_WHBEno" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label23" runat="server" Text="WH Customs Site ID" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_custsiteid" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label24" runat="server" Text="WH BE Date" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txtWHBEdate" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget box">
                                    <div class="widget-header">
                                        <h4><i class="icon-reorder"></i>Commercial Tax</h4>
                                        <div class="toolbar no-padding">
                                            <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox31"><i class="icon-angle-down"></i></span></div>
                                        </div>
                                    </div>
                                    <div class="widget-content collapse col-md-12 " id="widgetbox31">
                                        <div class="form-horizontal " id="divDynamic31">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:Label ID="Label5" runat="server" Text="Commercial Tax Registration No." CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_comtaxregno" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label7" runat="server" Text="Commercial Tax Type-VAT/CST/ST (V/C/S)" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:DropDownList runat="server" ID="ddl_comtaxtype">
                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                            <asp:ListItem Value="V">VAT</asp:ListItem>
                                                            <asp:ListItem Value="C">CST</asp:ListItem>
                                                            <asp:ListItem Value="S">ST</asp:ListItem>
                                                            <asp:ListItem Value="G">GST-IN</asp:ListItem>
                                                            <asp:ListItem Value="A">Aadhar</asp:ListItem>
                                                            <asp:ListItem Value="P">Passport</asp:ListItem>
                                                            <asp:ListItem Value="I">Income Tax Pan</asp:ListItem>
                                                            <asp:ListItem Value="T">Tin No</asp:ListItem>
                                                            <asp:ListItem Value="O">GST Govt.</asp:ListItem>
                                                            <asp:ListItem Value="D">GST Diplomat</asp:ListItem>
                                                            <asp:ListItem Value="N"> GST- Non Resident Taxpayer</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane  " id="box_tab2">
                <div class="col-md-12">
                    <div class="form-group">
                        <div class="row" id="Shipment">
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i></h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox123"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12" id="widgetbox123">
                                    <div class="form-horizontal " id="DynDiv123">
                                        <div class="col-md-12">
                                            <div class="form-horizontal ">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <asp:Label ID="Label39" runat="server" Text="Message type" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_msgtype" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                        <asp:Label ID="Label59" runat="server" Text="Custom House Code" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_custhcode" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Label60" runat="server" Text="User Job No" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_userjobno" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                        <asp:Label ID="Label61" runat="server" Text="User Job Date" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_userjobdate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Label62" runat="server" Text="BE Number" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_shipBEno" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                        <asp:Label ID="Label63" runat="server" Text="BE Date" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_shipBEdate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Label64" runat="server" Text="BE Type" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_BEtype" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                        <div class="col-md-6">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i>IGM Information</h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox7"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12  in" id="widgetbox7">
                                    <div class="form-horizontal " id="DynDiv62">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <asp:Label ID="Label100" runat="server" Text="IGM No" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_IGMno" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label101" runat="server" Text="IGM Date" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_IGMdate" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label102" runat="server" Text="Inward Date" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_inwarddate" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label103" runat="server" Text="Port of Reporting" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_portofrep" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label104" runat="server" Text="Gateway IGM No" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_gwIGMno" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label105" runat="server" Text="Gateway IGM Date" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_gwIGMdate" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label106" runat="server" Text="MAWB/ BL No" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_MAWBblno" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label107" runat="server" Text="MAWB/ BL Date" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_MAWBbldate" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label108" runat="server" Text="HAWB/HBL No" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_MAWBhblno" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label109" runat="server" Text="HAWB/HBL Date" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_MAWBhbldate" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label110" runat="server" Text="Total No of Packages" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_totnoofpkg" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label111" runat="server" Text="Package Code" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_IGMpkgcode" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label112" runat="server" Text="Gross Weight" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_IGMgrosswght" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label113" runat="server" Text="UOM" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_IGMUOM" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label114" runat="server" Text="Marks and Numbers 1" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_mrkandno1" runat="server" class="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label115" runat="server" Text="Marks and Numbers 2" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_mrkandno2" runat="server" class="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label116" runat="server" Text="Marks and Numbers 3" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_mrkandno3" runat="server" class="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label117" runat="server" Text="Line No" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_lineno" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i>Container</h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox8"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 " id="widgetbox8">
                                    <div class="form-horizontal " id="divDynamic8">
                                        <div class="col-md-12">
                                            <div class="form-horizontal" style="overflow-x: auto">
                                                <div class="form-group">
                                                    <asp:Label ID="Label1545" runat="server" Text="IGM Number" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_contIGMno" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-2 align-center">
                                                        <input id="btn_container" runat="server" type="button" onclick="PopupshowContainer()" value="Container" class="btn btn-info" />
                                                    </div>
                                                </div>
                                                <table id="table" class="table table-bordered table-highlight-head table-responsive" aria-describedby="DataTables_Table_0_info">
                                                    <thead>
                                                        <tr role="row">
                                                            <th class="hidden-xs"></th>
                                                            <th class="hidden-xs">SL NO</th>
                                                            <th class="hidden-xs">LCL/FCL</th>
                                                            <th class="hidden-xs">Container No</th>
                                                            <th class="hidden-xs">Seal Number</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="BTGrdTBody1" role="alert" aria-live="polite" aria-relevant="all">
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="form-group" style="cursor: pointer">
                                                <div class="col-md-12">
                                                    <div id="WFPagerDiv1" class="col-md-12">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i>Goods Quantity & Measurement</h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox9"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 " id="widgetbox9">
                                    <div class="form-horizontal " id="divDynamic9">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <div class="form-group">
                                                    <asp:Label ID="Label55" runat="server" Text="No of Packages Released" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_noofpkgrel" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label56" runat="server" Text="Package Code" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_pkgcode" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label57" runat="server" Text="Gross Weight" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_grosswght" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label58" runat="server" Text="Unit of Measurement" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txt_unitofmrnt" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane  " id="box_tab3">
                <div class="col-md-12">
                    <div class="form-group">
                        <div class="row" id="Invoice">
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i></h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox854"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 " id="widgetbox854">
                                    <div class="form-horizontal " id="DynDiv854">
                                        <div class="col-md-12">
                                            <div class="form-horizontal ">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <asp:Label ID="Label65" runat="server" Text="Message type" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_invmsgtype" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                        <asp:Label ID="Label66" runat="server" Text="Custom House Code" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_inccusthcode" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Label67" runat="server" Text="User Job No" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_invuserjobno" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                        <asp:Label ID="Label68" runat="server" Text="User Job Date" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_invuserjobdate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Label69" runat="server" Text="BE Number" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_invBEno" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                        <asp:Label ID="Label70" runat="server" Text="BE Date" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_invBEdate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Label71" runat="server" Text="BE Type" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_invBEtype" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                        <div class="col-md-6">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i>Invoice Details</h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox10"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 in" id="widgetbox10">
                                    <div class="form-horizontal " id="divDynamic10">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <asp:Label ID="Label200" runat="server" Text="Multiple Invoices" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:DropDownList runat="server" ID="DropDownList9">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-md-4">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col"></th>
                                                            <th scope="col">Rate</th>
                                                            <th scope="col">Apply Rate(%)</th>
                                                            <th scope="col">Amount</th>
                                                            <th scope="col">Currency</th>
                                                            <th scope="col">Exch. Rate</th>
                                                            <th scope="col"></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <th scope="row">Total Freight</th>
                                                            <td>
                                                                <asp:TextBox ID="txt_totfrghtrate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <input type="checkbox" name="applyrate" id="chkb_applyrate" runat="server" />
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txt_totfrghtamt" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList runat="server" ID="ddl_totfrghtcurr">
                                                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txt_totfrghtexcrate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Total Insurance</th>
                                                            <td>
                                                                <asp:TextBox ID="txt_totinsrate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <input type="checkbox" name="applyrate" id="chkb_totinsapplyrate" runat="server" />
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txt_totinsamt" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList runat="server" ID="ddl_totinscurr">
                                                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txt_totinsexcrate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="form-group">
                                                <div class="widget-content collapse col-md-12 in" id="widgetbox254">
                                                    <div class="form-horizontal " id="divDynamic254">
                                                        <div class="col-md-12">
                                                            <div class="form-horizontal" style="overflow-x: auto">
                                                                <div class="form-group">
                                                                    <div class="col-md-2 align-center">
                                                                        <input id="Button11" runat="server" type="button" onclick="Popupshowinvoicedet()" value="Add invoice details" class="btn btn-info" />
                                                                    </div>
                                                                    <asp:Label ID="Label1540" runat="server" Text="Terms of Invoice" CssClass="col-md-2 control-label"></asp:Label>
                                                                    <div class="col-md-4">
                                                                        <asp:DropDownList runat="server" ID="ddl_termsofinv">
                                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                                <table id="table23" class="table table-bordered table-highlight-head table-responsive" aria-describedby="DataTables_Table_0_info">
                                                                    <thead>
                                                                        <tr role="row">
                                                                            <th class="hidden-xs"></th>
                                                                            <th class="hidden-xs">SL NO</th>
                                                                            <th class="hidden-xs">Invoice No.</th>
                                                                            <th class="hidden-xs">Date</th>
                                                                            <th class="hidden-xs">Currency</th>
                                                                            <th class="hidden-xs">Invoice Amt</th>
                                                                            <th class="hidden-xs">Total Amt of Items</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="BTGrdTBody23" role="alert" aria-live="polite" aria-relevant="all">
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                            <div class="form-group" style="cursor: pointer">
                                                                <div class="col-md-12">
                                                                    <div id="WFPagerDiv23" class="col-md-12">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%-- <div class="tab-pane  " id="box_tab4">
                <div class="col-md-12">
                    <div class="form-group">
                        <div class="row" id="Item">
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i></h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox975"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 " id="widgetbox975">
                                    <div class="form-horizontal " id="DynDiv975">
                                        <div class="col-md-12">
                                            <div class="form-horizontal ">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <asp:Label ID="Label72" runat="server" Text="Message type" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_itemmsgtype" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                        <asp:Label ID="Label73" runat="server" Text="Custom House Code" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_itemcusthcode" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Label74" runat="server" Text="User Job No" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_itemuserjobno" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                        <asp:Label ID="Label75" runat="server" Text="User Job Date" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_itemuserjobdate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Label76" runat="server" Text="BE Number" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_itemBEno" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                        <asp:Label ID="Label77" runat="server" Text="BE Date" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_itemBEdate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Label78" runat="server" Text="BE Type" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_itemBEtype" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                        <div class="col-md-6">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i>Item Details</h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox16"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 in" id="widgetbox16">
                                    <div class="form-horizontal " id="divDynamic16">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <asp:Label ID="Label219" runat="server" Text="Generic Desc. of Item" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_gendescofitem" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label220" runat="server" Text="Country of Origin" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_itemcntryoforg" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label221" runat="server" Text="Manufacturer Name" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_manuname" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label222" runat="server" Text="Accessories" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_accessories" runat="server" TextMode="MultiLine" Height="100px" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label223" runat="server" Text="Brand Name" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_brandname" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <div class="col-md-6">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label1548" runat="server" Text="Model C" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_modelc" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label1558" runat="server" Text="	End Use of Item" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_enduseofitem" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label1568" runat="server" Text="Policy Para No" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_polparano" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label1578" runat="server" Text="Policy Year" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_polyear" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label38" runat="server" Text="RSP applicability" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:DropDownList runat="server" ID="ddl_rspappcblty">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="Q">Rule 3A</asp:ListItem>
                                                        <asp:ListItem Value="T">Institutional Consumer</asp:ListItem>
                                                        <asp:ListItem Value="D">Industrial Consumer.</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <asp:Label ID="Label40" runat="server" Text="Accessory status" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_accstat" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label42" runat="server" Text="Transit Country" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_transcntry" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label41" runat="server" Text="Source Country" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_srccntry" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label43" runat="server" Text="Qty as per CTH" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_qtyasCTH" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <div class="col-md-6"></div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-6">
                                                    <div class="col-md-2">
                                                        <input id="btn_additemtogrid" runat="server" type="button" onclick="PopupshowAddItemToGrid()" value="Add Item To Grid" class="btn btn-info" />
                                                    </div>
                                                    <div class="col-md-6">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <table id="table56" class="table table-bordered table-highlight-head table-responsive" aria-describedby="DataTables_Table_0_info">
                                                    <thead>
                                                        <tr role="row">
                                                            <th class="hidden-xs"></th>
                                                            <th class="hidden-xs">SL </th>
                                                            <th class="hidden-xs">Scheme Code</th>
                                                            <th class="hidden-xs">RITC Code</th>
                                                            <th class="hidden-xs">Goods Desc</th>
                                                            <th class="hidden-xs">Quantity</th>
                                                            <th class="hidden-xs">UOM</th>
                                                            <th class="hidden-xs">Unit Price</th>
                                                            <th class="hidden-xs">Amount</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="BTGrdTBody36" role="alert" aria-live="polite" aria-relevant="all">
                                                    </tbody>
                                                </table>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i>Customs</h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox17"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 " id="widgetbox17">
                                    <div class="form-horizontal " id="divDynamic17">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <asp:Label ID="Label161" runat="server" Text="CTH No" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_CTHno" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label162" runat="server" Text="Status" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_status" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-horizontal" style="overflow-x: auto">
                                                <div class="form-group">
                                                    <div class="col-md-6">
                                                        <div class="col-md-2 ">
                                                            <input id="Button4" runat="server" type="button" onclick="PopupshowCustomsDuty()" value="Add Customs Duty" class="btn btn-info" />
                                                        </div>
                                                        <div class="col-md-6">
                                                        </div>
                                                    </div>
                                                </div>
                                                <table id="table3" class="table table-bordered table-highlight-head table-responsive" aria-describedby="DataTables_Table_0_info">
                                                    <thead>
                                                        <tr role="row">
                                                            <th class="hidden-xs"></th>
                                                            <th class="hidden-xs">SL NO</th>
                                                            <th class="hidden-xs">Duty Item</th>
                                                            <th class="hidden-xs">Notification</th>
                                                            <th class="hidden-xs">Notif SRNO</th>
                                                            <th class="hidden-xs">UOM</th>
                                                            <th class="hidden-xs">Duty Calc</th>
                                                            <th class="hidden-xs">Rate%</th>
                                                            <th class="hidden-xs">Rate Rs</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="BTGrdTBody3" role="alert" aria-live="polite" aria-relevant="all">
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="form-group" style="cursor: pointer">
                                                <div class="col-md-12">
                                                    <div id="WFPagerDiv3" class="col-md-12">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i>Excise</h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox178"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 " id="widgetbox178">
                                    <div class="form-horizontal " id="divDynamic178">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <asp:Label ID="Label170" runat="server" Text="CETH No" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_CETHno" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <div class="col-md-6"></div>
                                            </div>
                                            <div class="form-horizontal" style="overflow-x: auto">
                                                <div class="form-group">
                                                    <div class="col-md-6">
                                                        <div class="col-md-2 ">
                                                            <input id="Button1" runat="server" type="button" onclick="PopupshowExciseDuty()" value="Add Excise Duty" class="btn btn-info" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                    </div>
                                                </div>
                                                <table id="table4" class="table table-bordered table-highlight-head table-responsive" aria-describedby="DataTables_Table_0_info">
                                                    <thead>
                                                        <tr role="row">
                                                            <th class="hidden-xs"></th>
                                                            <th class="hidden-xs">SL NO</th>
                                                            <th class="hidden-xs">Duty Item</th>
                                                            <th class="hidden-xs">Notification</th>
                                                            <th class="hidden-xs">Notif SRNO</th>
                                                            <th class="hidden-xs">UOM</th>
                                                            <th class="hidden-xs">Duty Calc</th>
                                                            <th class="hidden-xs">Rate%</th>
                                                            <th class="hidden-xs">Rate Rs</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="BTGrdTBody4" role="alert" aria-live="polite" aria-relevant="all">
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="form-group" style="cursor: pointer">
                                                <div class="col-md-12">
                                                    <div id="WFPagerDiv4" class="col-md-12">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i>GST</h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox1787"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 " id="widgetbox1787">
                                    <div class="form-horizontal " id="divDynamic1787">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <asp:Label ID="Label281" runat="server" Text="CETH No" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <div class="col-md-6"></div>
                                            </div>
                                            <div class="form-horizontal" style="overflow-x: auto">
                                                <div class="form-group">
                                                    <div class="col-md-6">
                                                        <div class="col-md-2 ">
                                                            <input id="Button26" runat="server" type="button" onclick="PopupshowExciseDuty()" value="Add GST" class="btn btn-info" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                    </div>
                                                </div>
                                                <table id="table44" class="table table-bordered table-highlight-head table-responsive" aria-describedby="DataTables_Table_0_info">
                                                    <thead>
                                                        <tr role="row">
                                                            <th class="hidden-xs"></th>
                                                            <th class="hidden-xs">SL NO</th>
                                                            <th class="hidden-xs">Duty Item</th>
                                                            <th class="hidden-xs">Notification</th>
                                                            <th class="hidden-xs">Notif SRNO</th>
                                                            <th class="hidden-xs">UOM</th>
                                                            <th class="hidden-xs">Duty Calc</th>
                                                            <th class="hidden-xs">Rate%</th>
                                                            <th class="hidden-xs">Rate Rs</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="BTGrdTBody456" role="alert" aria-live="polite" aria-relevant="all">
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="form-group" style="cursor: pointer">
                                                <div class="col-md-12">
                                                    <div id="WFPagerDiv456" class="col-md-12">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i>OtherDuty</h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox179"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 " id="widgetbox179">
                                    <div class="form-horizontal " id="divDynamic179">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <div class="form-horizontal" style="overflow-x: auto">
                                                    <div class="form-group">
                                                        <div class="col-md-6">
                                                            <div class="col-md-2">
                                                                <input id="Button2" runat="server" type="button" onclick="PopupshowOtherDuty()" value="Add Other Duty" class="btn btn-info" />
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                        </div>
                                                    </div>
                                                    <table id="table5" class="table table-bordered table-highlight-head table-responsive" aria-describedby="DataTables_Table_0_info">
                                                        <thead>
                                                            <tr role="row">
                                                                <th class="hidden-xs"></th>
                                                                <th class="hidden-xs">SL NO</th>
                                                                <th class="hidden-xs">Duty Item</th>
                                                                <th class="hidden-xs">Notification</th>
                                                                <th class="hidden-xs">Notif SRNO</th>
                                                                <th class="hidden-xs">UOM</th>
                                                                <th class="hidden-xs">Duty Calc</th>
                                                                <th class="hidden-xs">Rate%</th>
                                                                <th class="hidden-xs">Rate Rs</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="BTGrdTBody57" role="alert" aria-live="polite" aria-relevant="all">
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <div class="form-group" style="cursor: pointer">
                                                    <div class="col-md-12">
                                                        <div id="WFPagerDiv57" class="col-md-12">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col"></th>
                                                            <th scope="col">Notification</th>
                                                            <th style="width: 100px" scope="col">Rate %</th>
                                                            <th style="width: 100px" scope="col">Quantity</th>
                                                            <th style="width: 250px"></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <th style="width: 100px" scope="row">Discount Rate</th>
                                                            <td style="width: 150px">
                                                                <asp:TextBox ID="txt_discrate" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                            <td style="width: 100px">Discount Amount</td>
                                                            <td style="width: 150px">
                                                                <asp:TextBox ID="txt_disamt" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                            <td style="width: 250px"></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i>Manufacturer/Grower/Producer Details</h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox18"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 " id="widgetbox18">
                                    <div class="form-horizontal " id="divDynamic18">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <asp:Label ID="Label44" runat="server" Text="Name" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_itemname" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label45" runat="server" Text="city" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_itemcity" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label46" runat="server" Text="Code type" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_codetype" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label47" runat="server" Text="country subdivision" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_cntrysubdiv" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label48" runat="server" Text="code" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_code" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label49" runat="server" Text="pin" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_itempin" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label50" runat="server" Text="Address1" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_itemaddress1" runat="server" class="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label51" runat="server" Text="country" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_country" runat="server" class="form-control" data-val-required="true"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label52" runat="server" Text="Address2" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_itemaddress2" runat="server" class="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                                </div>
                                                <div class="col-md-6"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i>Reimport</h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox19"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 " id="widgetbox19">
                                    <div class="form-horizontal " id="divDynamic19">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <asp:Label ID="Label134" runat="server" Text="Previous BE No" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_preBEno" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label135" runat="server" Text="Previous BE Date" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_preBEdate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label136" runat="server" Text="Previous UOM" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:DropDownList runat="server" ID="ddl_preUOM">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <asp:Label ID="Label137" runat="server" Text="Previous Currency Code" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:DropDownList runat="server" ID="ddl_precurrcode">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label138" runat="server" Text="Previous Custom Site" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_precustsite" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                                <div class="col-md-6"></div>
                                            </div>
                                            <div class="widget-content collapse col-md-12 in" id="widgetbox152">
                                                <div class="form-horizontal " id="divDynamic152">
                                                    <div class="col-md-12">
                                                        <div class="form-horizontal" style="overflow-x: auto">
                                                            <div class="form-group">
                                                                <div class="col-md-6">
                                                                    <div class="col-md-2 ">
                                                                        <input id="Button3" runat="server" type="button" onclick="PopupshowaddReimportgrid()" value="Add to Grid" class="btn btn-info" />
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                </div>
                                                            </div>
                                                            <table id="table7" class="table table-bordered table-highlight-head table-responsive" aria-describedby="DataTables_Table_0_info">
                                                                <thead>
                                                                    <tr role="row">
                                                                        <th class="hidden-xs"></th>
                                                                        <th class="hidden-xs">SlNo</th>
                                                                        <th class="hidden-xs">SB No.</th>
                                                                        <th class="hidden-xs">SB Date</th>
                                                                        <th class="hidden-xs">Port of Export</th>
                                                                        <th class="hidden-xs">Sb Invoice No</th>
                                                                        <th class="hidden-xs">SB Item No</th>
                                                                        <th class="hidden-xs">Notification No</th>
                                                                        <th class="hidden-xs">Notification Sr No</th>
                                                                        <th class="hidden-xs">Export Frieght</th>
                                                                        <th class="hidden-xs">Export Insurance</th>
                                                                        <th class="hidden-xs">Customs Duty</th>
                                                                        <th class="hidden-xs">Excise Duty</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody id="BTGrdTBody7" role="alert" aria-live="polite" aria-relevant="all">
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                        <div class="form-group" style="cursor: pointer">
                                                            <div class="col-md-12">
                                                                <div id="WFPagerDiv7" class="col-md-12">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i>SVB</h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox21"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 " id="widgetbox21">
                                    <div class="form-horizontal " id="divDynamic21">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <asp:Label ID="Label192" runat="server" Text="SVB Loading" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:DropDownList runat="server" ID="ddl_svbload">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <asp:Label ID="Label193" runat="server" Text="Ref No" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_svbrefno" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label194" runat="server" Text="Ref Date" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_svbrefdate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label195" runat="server" Text="Assessable Status" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:DropDownList runat="server" ID="ddl_svbassesstat">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label196" runat="server" Text="Assessable Value" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_svbassesval" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label197" runat="server" Text="On Duty Status" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:DropDownList runat="server" ID="ddl_svbondutystat">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label198" runat="server" Text="On Duty Value" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_svbondutyval" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label199" runat="server" Text="Customs House Code(Which has Imposed Load)" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_svbcusthcode2" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i>RSP</h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox22"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 " id="widgetbox22">
                                    <div class="form-horizontal " id="divDynamic22">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <asp:Label ID="Label149" runat="server" Text="RSP in INR" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_RSPininr" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label135s" runat="server" Text="Quantity" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_RSPQty" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label150" runat="server" Text="Description" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_desc" runat="server" class="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label151" runat="server" Text="RSP Notification" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_RSpnoti" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label152" runat="server" Text="RSP Notification Serial No" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_RSPnotiSrno" runat="server" class="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label153" runat="server" Text="Abentment Rate" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_abentrate" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i>Licence</h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox23"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 " id="widgetbox23">
                                    <div class="form-horizontal " id="divDynamic23">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <div class="col-md-6">
                                                    <div class="col-md-2 ">
                                                        <input id="btn_licence" runat="server" type="button" onclick="Popupshowlicence()" value="Add licence" class="btn btn-info" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                </div>
                                            </div>
                                            <table id="table2" class="table table-bordered table-highlight-head table-responsive" aria-describedby="DataTables_Table_0_info">
                                                <thead>
                                                    <tr role="row">
                                                        <th class="hidden-xs"></th>
                                                        <th class="hidden-xs">Reg NO</th>
                                                        <th class="hidden-xs">Reg. Date</th>
                                                        <th class="hidden-xs">Licence Code</th>
                                                        <th class="hidden-xs">Reg. Port </th>
                                                        <th class="hidden-xs">Debit Quantity </th>
                                                        <th class="hidden-xs">Debit UOM </th>
                                                        <th class="hidden-xs">Debit Value </th>
                                                    </tr>
                                                </thead>
                                                <tbody id="BTGrdTBody2" role="alert" aria-live="polite" aria-relevant="all">
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="form-group" style="cursor: pointer">
                                            <div class="col-md-12">
                                                <div id="WFPagerDiv2" class="col-md-12">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i>DEPB</h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox24"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 " id="widgetbox24">
                                    <div class="form-horizontal " id="divDynamic24">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <asp:Label ID="Label139" runat="server" Text="Excemption Required(Only for DEPB Scheme)" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:DropDownList runat="server" ID="ddl_excreq">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>

                                                    </asp:DropDownList>
                                                </div>
                                                <asp:Label ID="Label140" runat="server" Text="BCD Notification" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_BCDnoti" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label142" runat="server" Text="BCD Notification Sr No" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_BCDnotiSrno" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i>SW Declaration (Info, Constituent, Production, Control)</h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox241"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 " id="widgetbox241">
                                    <div class="form-horizontal " id="divDynamic241">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <asp:Label ID="lbl_itemsrno" runat="server" Text="Item Sr. No" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_itemSrno" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                                <asp:Label ID="lbl_pinvsrno" runat="server" Text="Invoice Serial No" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_iteminvserno" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-2">
                                                    <asp:Label ID="Label225" runat="server" Text="Info" CssClass="col-md-4 control-label" Font-Bold="true"></asp:Label>
                                                </div>
                                                <div class="col-md-6"></div>
                                            </div>
                                            <%-- <div class="form-group:before" content:"" display:table box-sizing:border-box>

                                            </div>--%>
            <%--<div class="form-group">
                                                <asp:Label ID="Label226" runat="server" Text="Info Type" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_infotype" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label227" runat="server" Text="Info Qualifier" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_infoqual" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label228" runat="server" Text="Info Code" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_infocode" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label229" runat="server" Text="Info Text" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_infotxt" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label230" runat="server" Text="Info MSR" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_infomsr" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label231" runat="server" Text="Info UQC" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_infouqc" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-2">
                                                    <asp:Label ID="Label232" runat="server" Text="Constituent" CssClass="col-md-4 control-label" Font-Bold="true"></asp:Label>
                                                </div>
                                                <div class="col-md-6"></div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label233" runat="server" Text="Constituent Sr. No" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_constsrno" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label234" runat="server" Text="Constituent Element Name " CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_constelmtname" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label235" runat="server" Text="Constituent Element code" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_constelmtcode" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label236" runat="server" Text="Constituent Percentage" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_constperc" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label237" runat="server" Text="Constituent Yield Percentage" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_constyeildval" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label238" runat="server" Text="Active Ingredient (Y/N)" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:DropDownList ID="ddl_activeing" runat="server" data-val-required="true" AppendDataBoundItems="true" class="form-control col-md-4">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-2">
                                                    <asp:Label ID="Label239" runat="server" Text="Production" CssClass="col-md-4 control-label" Font-Bold="true"></asp:Label>
                                                </div>
                                                <div class="col-md-6"></div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label240" runat="server" Text="Production Batch Identifier" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_prodbatch" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label241" runat="server" Text=" Production Batch Quantity " CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_prodbatchqty" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label242" runat="server" Text="Unit Quantity Code" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_unitqtycode" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label243" runat="server" Text="Date of Manufacturing" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_dateofman" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label244" runat="server" Text="Date of Expiry" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_dateofexp" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label245" runat="server" Text="Best Before" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_bestbef" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-2">
                                                    <asp:Label ID="Label246" runat="server" Text="Control" CssClass="col-md-4 control-label" Font-Bold="true"></asp:Label>
                                                </div>
                                                <div class="col-md-6"></div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label247" runat="server" Text="Control Type Code" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_conttypecode" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label248" runat="server" Text="Control Location" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_contloc" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label249" runat="server" Text="Control Start Date" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_contstartdate" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label250" runat="server" Text="Control End Date" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_contenddate" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label251" runat="server" Text="Control Result Code" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_contrescode" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label252" runat="server" Text="Control Result Text" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_contrestxt" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label253" runat="server" Text="Control MSR " CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_contmsr" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label254" runat="server" Text="Control UQC " CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_contuqc" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label255" runat="server" Text="Control Slno" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_contslno" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                                <div class="col-md-6"></div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-2">
                                                    <asp:Label ID="Label282" runat="server" Text="Declaration Statements" CssClass="col-md-4 control-label" Font-Bold="true"></asp:Label>
                                                </div>
                                                <div class="col-md-6"></div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label1" runat="server" Text="Item Sr. No" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_decsrno" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label3" runat="server" Text="Invoice Serial No" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_decincserno" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label154" runat="server" Text="Declaration Type" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_dectype" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label155" runat="server" Text="Declaration Number" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_decno" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label156" runat="server" Text="Declaration Date" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_decdate" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label157" runat="server" Text="Statement Type " CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_decstattype" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label158" runat="server" Text="Statement Code" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_decstatcode" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label159" runat="server" Text="Statement Text " CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_decstattxt" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>--%>
            <div class="tab-pane  " id="box_tab5">
                <div class="col-md-12">
                    <div class="form-group">
                        <div class="row" id="Amendment">
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i></h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox256"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 " id="widgetbox256">
                                    <div class="form-horizontal " id="divDynamic256">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <asp:Label ID="Label79" runat="server" Text="Message type" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_amdmsgtype" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label80" runat="server" Text="Custom House Code" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_amdcusthcode" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label81" runat="server" Text="User Job No" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_amduserjobno" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label82" runat="server" Text="User Job Date" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_amduserjobdate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label83" runat="server" Text="BE Number" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_amdBEno" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label84" runat="server" Text="BE Date" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_amdBEdate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label85" runat="server" Text="BE Type" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_amdBEtype" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                                <div class="col-md-6">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i>Amendment Details</h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox25"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 in" id="widgetbox25">
                                    <div class="form-horizontal " id="divDynamic25">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <asp:Label ID="Label53" runat="server" Text="Amendment Code" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_amendcode" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label54" runat="server" Text="Reason for Amendment" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_reasonadm" runat="server" TextMode="MultiLine" Height="100px" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane  " id="box_tab6">
                <div class="col-md-12">
                    <div class="form-group">
                        <div class="row" id="Single Window">
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i></h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox262"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 " id="widgetbox262">
                                    <div class="form-horizontal " id="divDynamic262">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <asp:Label ID="Label86" runat="server" Text="Message type" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_singmsgtype" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label87" runat="server" Text="Custom House Code" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_singcusthcode" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label88" runat="server" Text="User Job No" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_singuserjobno" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label89" runat="server" Text="User Job Date" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_singuserjobdate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label90" runat="server" Text="BE Number" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_singBEno" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label91" runat="server" Text="BE Date" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_singBEdate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label92" runat="server" Text="BE Type" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_singBEtype" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                                <div class="col-md-6">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i>Supporting Document</h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox28"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 in" id="widgetbox28">
                                    <div class="form-horizontal " id="divDynamic28">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <div class="col-md-6">
                                                    <input id="btn_fetchdoc" runat="server" type="button" onclick="Search(this, '', '')" value="Fetch Document" class="btn btn-info" />
                                                </div>
                                                <div class="col-md-6">
                                                    <input id="btn_adddoc" runat="server" type="button" onclick="Popupshowbtn_AddDoc()" value="Add Document" class="btn btn-info" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label1542" runat="server" Text="Item Sr. No" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_supitemsrno" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label1552" runat="server" Text="Invoice Serial No" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_supinvsrno" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <div class="form-horizontal" style="overflow-x: auto">
                                                            <table id="table22" class="table table-bordered table-highlight-head table-responsive" aria-describedby="DataTables_Table_0_info">
                                                                <thead>
                                                                    <tr role="row">
                                                                        <th class="hidden-xs"></th>
                                                                        <th class="hidden-xs">Item Sr. No.</th>
                                                                        <th class="hidden-xs">Invoice Serial No</th>
                                                                        <th class="hidden-xs">Doc. Name</th>
                                                                        <th class="hidden-xs">Doc. Upload Date-Time </th>
                                                                        <th class="hidden-xs">Image Reference No. </th>
                                                                        <th class="hidden-xs">Document Reference No</th>
                                                                        <th class="hidden-xs">Document Type Code </th>
                                                                        <th></th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody id="BTGrdTBody22" role="alert" aria-live="polite" aria-relevant="all">
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                        <div class="form-group" style="cursor: pointer">
                                                            <div class="col-md-12">
                                                                <div id="WFPagerDiv33" class="col-md-12">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane  " id="box_tab7">
                <div class="col-md-12">
                    <div class="form-group">
                        <div class="row" id="Bond/Cert">
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i></h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox263"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 " id="widgetbox263">
                                    <div class="form-horizontal " id="divDynamic263">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <asp:Label ID="Label93" runat="server" Text="Message type" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_bondmsgtype" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label94" runat="server" Text="Custom House Code" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_bondcusthcode" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label95" runat="server" Text="User Job No" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_bonduserjobno" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label96" runat="server" Text="User Job Date" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_bonduserjobdate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label97" runat="server" Text="BE Number" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_bondBEno" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label98" runat="server" Text="BE Date" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_bondBEdate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label99" runat="server" Text="BE Type" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_bondBEtype" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                                <div class="col-md-6">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i>Bond</h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox29"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 in" id="widgetbox29">
                                    <asp:Panel ID="Panel5" runat="server" ScrollBars="Auto" Height="400">
                                        <div class="form-horizontal " id="divDynamic29">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <div class="form-group">
                                                        <asp:Label ID="Label342" runat="server" Text="Bond Port" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="TextBox18" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                        <div class="col-md-6">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Panel ID="Panel4" runat="server">
                                                            <table class="table">
                                                                <thead>
                                                                    <tr>
                                                                        <th scope="col" style="text-align: center">Sl.No</th>
                                                                        <th scope="col"></th>
                                                                        <th scope="col">Bond Codes</th>
                                                                        <th scope="col" style="width: 50%">Bond No</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <th scope="row" style="text-align: center">1</th>
                                                                        <td>
                                                                            <input type="checkbox" name="" id="chkbPD_bond" runat="server" /></td>
                                                                        <td>
                                                                            <asp:Label ID="Label256" runat="server" Text="PD Professional Duty Bond" CssClass="col-md-6 control-label"></asp:Label></td>
                                                                        <td>
                                                                            <asp:TextBox ID="txt_PDbondno" runat="server" Width="50%" class="form-control"></asp:TextBox></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row" style="text-align: center">2</th>
                                                                        <td>
                                                                            <input type="checkbox" name="" id="chkb_REbond" runat="server" /></td>
                                                                        <td>
                                                                            <asp:Label ID="Label257" runat="server" Text="RE- Re-Export Bond" CssClass="col-md-6 control-label"></asp:Label></td>
                                                                        <td>
                                                                            <asp:TextBox ID="txt_REbond" runat="server" Width="50%" class="form-control"></asp:TextBox></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row" style="text-align: center">3</th>
                                                                        <td>
                                                                            <input type="checkbox" name="" id="chkb_LBbond" runat="server" /></td>
                                                                        <td>
                                                                            <asp:Label ID="Label258" runat="server" Text="LC- Letter of Guarantee" CssClass="col-md-6 control-label"></asp:Label></td>
                                                                        <td>
                                                                            <asp:TextBox ID="txt_LCguarantee" runat="server" Width="50%" class="form-control"></asp:TextBox></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row" style="text-align: center">4</th>
                                                                        <td>
                                                                            <input type="checkbox" name="" id="chkb_TPbond" runat="server" /></td>
                                                                        <td>
                                                                            <asp:Label ID="Label259" runat="server" Text="TP- Trans-Shipment Bond" CssClass="col-md-6 control-label"></asp:Label></td>
                                                                        <td>
                                                                            <asp:TextBox ID="txt_TPbond" runat="server" Width="50%" class="form-control"></asp:TextBox></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row" style="text-align: center">5</th>
                                                                        <td>
                                                                            <input type="checkbox" name="" id="chk_WHbond" runat="server" /></td>
                                                                        <td>
                                                                            <asp:Label ID="Label261" runat="server" Text="WH- Ware-House Bond" CssClass="col-md-6 control-label"></asp:Label></td>
                                                                        <td>
                                                                            <asp:TextBox ID="txt_WHbond" runat="server" Width="50%" class="form-control"></asp:TextBox></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row" style="text-align: center">6</th>
                                                                        <td>
                                                                            <input type="checkbox" name="" id="chk_EZbond" runat="server" /></td>
                                                                        <td>
                                                                            <asp:Label ID="Label262" runat="server" Text="EZ- EPZ Bond" CssClass="col-md-6 control-label"></asp:Label></td>
                                                                        <td>
                                                                            <asp:TextBox ID="txt_EZbond" runat="server" Width="50%" class="form-control"></asp:TextBox></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row" style="text-align: center">7</th>
                                                                        <td>
                                                                            <input type="checkbox" name="" id="chkb_PJbond" runat="server" /></td>
                                                                        <td>
                                                                            <asp:Label ID="Label263" runat="server" Text="PJ- Project  Bond" CssClass="col-md-6 control-label"></asp:Label></td>
                                                                        <td>
                                                                            <asp:TextBox ID="txt_PJbond" runat="server" Width="50%" class="form-control"></asp:TextBox></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row" style="text-align: center">8</th>
                                                                        <td>
                                                                            <input type="checkbox" name="" id="chkb_EOUbond" runat="server" /></td>
                                                                        <td>
                                                                            <asp:Label ID="Label264" runat="server" Text="EOU- Bond" CssClass="col-md-6 control-label"></asp:Label></td>
                                                                        <td>
                                                                            <asp:TextBox ID="txt_EOUbond" runat="server" Width="50%" class="form-control"></asp:TextBox></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row" style="text-align: center">9</th>
                                                                        <td>
                                                                            <input type="checkbox" name="" id="chkb_EUbond" runat="server" /></td>
                                                                        <td>
                                                                            <asp:Label ID="Label265" runat="server" Text="EU- End Use Bond" CssClass="col-md-6 control-label"></asp:Label></td>
                                                                        <td>
                                                                            <asp:TextBox ID="txt_EUbond" runat="server" Width="50%" class="form-control"></asp:TextBox></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row" style="text-align: center">10</th>
                                                                        <td>
                                                                            <input type="checkbox" name="" id="chk_TBbond" runat="server" /></td>
                                                                        <td>
                                                                            <asp:Label ID="Label266" runat="server" Text="TB- Test Bond" CssClass="col-md-6 control-label"></asp:Label></td>
                                                                        <td>
                                                                            <asp:TextBox ID="txt_TBbond" runat="server" Width="50%" class="form-control"></asp:TextBox></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row" style="text-align: center">11</th>
                                                                        <td>
                                                                            <input type="checkbox" name="" id="chkb_UTbond" runat="server" /></td>
                                                                        <td>
                                                                            <asp:Label ID="Label267" runat="server" Text="UT- Undertaking" CssClass="col-md-6 control-label"></asp:Label></td>
                                                                        <td>
                                                                            <asp:TextBox ID="txt_UTbond" runat="server" Width="50%" class="form-control"></asp:TextBox></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row" style="text-align: center">12</th>
                                                                        <td>
                                                                            <input type="checkbox" name="" id="chkb_ITbond" runat="server" /></td>
                                                                        <td>
                                                                            <asp:Label ID="Label268" runat="server" Text="IT- ITC Bond " CssClass="col-md-6 control-label"></asp:Label></td>
                                                                        <td>
                                                                            <asp:TextBox ID="txt_ITbond" runat="server" Width="50%" class="form-control"></asp:TextBox></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row" style="text-align: center">13</th>
                                                                        <td>
                                                                            <input type="checkbox" name="" id="chkb_ECbond" runat="server" /></td>
                                                                        <td>
                                                                            <asp:Label ID="Label260" runat="server" Text="EC- EPCG Bond " CssClass="col-md-6 control-label"></asp:Label></td>
                                                                        <td>
                                                                            <asp:TextBox ID="txt_ECbond" runat="server" Width="50%" class="form-control"></asp:TextBox></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row" style="text-align: center">14</th>
                                                                        <td>
                                                                            <input type="checkbox" name="" id="chkb_DEbond" runat="server" /></td>
                                                                        <td>
                                                                            <asp:Label ID="Label269" runat="server" Text="DE- DEEC Bond " CssClass="col-md-6 control-label"></asp:Label></td>
                                                                        <td>
                                                                            <asp:TextBox ID="txt_DEbond" runat="server" Width="50%" class="form-control"></asp:TextBox></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row" style="text-align: center">15</th>
                                                                        <td>
                                                                            <input type="checkbox" name="" id="chkb_CBbond" runat="server" /></td>
                                                                        <td>
                                                                            <asp:Label ID="Label270" runat="server" Text="CD- Cash Deposit  " CssClass="col-md-6 control-label"></asp:Label></td>
                                                                        <td>
                                                                            <asp:TextBox ID="txt_CDbond" runat="server" Width="50%" class="form-control"></asp:TextBox></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row" style="text-align: center">16</th>
                                                                        <td>
                                                                            <input type="checkbox" name="" id="chkb_JBbond" runat="server" /></td>
                                                                        <td>
                                                                            <asp:Label ID="Label271" runat="server" Text="JB- Jobbing  " CssClass="col-md-6 control-label"></asp:Label></td>
                                                                        <td>
                                                                            <asp:TextBox ID="txt_JBbond" runat="server" Width="50%" class="form-control"></asp:TextBox></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                            <div class="from-group">
                                                                <div class="col-md-2 align-center">
                                                                    <input id="Button61" runat="server" type="button" value="OK" class="btn btn-info" />
                                                                </div>
                                                            </div>
                                                        </asp:Panel>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </asp:Panel>

                                </div>
                            </div>
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i>Certificate</h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox30"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 " id="widgetbox30">
                                    <div class="form-horizontal " id="divDynamic30">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <div class="form-horizontal" style="overflow-x: auto">
                                                    <div class="form-group">
                                                        <div class="col-md-2 align-center">
                                                            <input id="Button16" runat="server" type="button" onclick="PopupshowCertificate()" value="Add Certificate" class="btn btn-info" />
                                                        </div>
                                                    </div>
                                                    <table id="table8" class="table table-bordered table-highlight-head table-responsive" aria-describedby="DataTables_Table_0_info">
                                                        <thead>
                                                            <tr role="row">
                                                                <th class="hidden-xs"></th>
                                                                <th class="hidden-xs">SL NO</th>
                                                                <th class="hidden-xs">Certificate No</th>
                                                                <th class="hidden-xs">Certificate Date</th>
                                                                <th class="hidden-xs">Certificate Type</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="BTGrdTBody185" role="alert" aria-live="polite" aria-relevant="all">
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <div class="form-group" style="cursor: pointer">
                                                    <div class="col-md-12">
                                                        <div id="WFPagerDiv185" class="col-md-12">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="widget box">
                                <div class="widget-header">
                                    <h4><i class="icon-reorder"></i>Exchange Currency</h4>
                                    <div class="toolbar no-padding">
                                        <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox301"><i class="icon-angle-down"></i></span></div>
                                    </div>
                                </div>
                                <div class="widget-content collapse col-md-12 " id="widgetbox301">
                                    <div class="form-horizontal " id="divDynamic301">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <asp:Label ID="Label207" runat="server" Text="Currency Code" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_currcode" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label208" runat="server" Text="Standard Currency" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:DropDownList ID="ddl_stdcurr" runat="server" data-val-required="true" AppendDataBoundItems="true" class="form-control col-md-4">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label209" runat="server" Text="Unit in Rs" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_unitinrs" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label210" runat="server" Text="Rate" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_rate" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label211" runat="server" Text="Bank Name" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_bankname" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label212" runat="server" Text="Effective Date" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_effdate" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label213" runat="server" Text="Certificate Number" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_certno" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                                <asp:Label ID="Label214" runat="server" Text="Certificate date" CssClass="col-md-2 control-label"></asp:Label>
                                                <div class="col-md-4">
                                                    <asp:TextBox ID="txt_certdate" runat="server" CssClass="form-control">  </asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="modal fade" id="adddocgrid" role="dialog" data-keyboard="false" data-backdrop="static" style="overflow: hidden;">
            <div class="modal-dialog" role="document" style="width: 75% !important;">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title font-weight-bold"></h4>
                    </div>
                    <div class="modal-body mx-4">
                        <div class="form-horizontal" id="divadddocgrid">
                            <div class="form-group">
                                <asp:Label ID="Label1582" runat="server" Text="IEC" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_IEC" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label1592" runat="server" Text="Document reference number" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_docrefno" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label1620" runat="server" Text="ICEGATE user ID" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_IGuserid" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label1632" runat="server" Text="Place of Issue" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_placeofiss" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label1642" runat="server" Text="Image reference no" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_imgrefno" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label1652" runat="server" Text="Document Issue Date" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_docissdate" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label1662" runat="server" Text="Document Type Code" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_docrtypecode" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label1672" runat="server" Text="Document Expiry Date" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_docexpdate" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label1682" runat="server" Text="File Type" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_filetype" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <div class="col-md-6"></div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6">
                                    <asp:Label ID="Label1541" runat="server" Text="Document Issuing Party" CssClass="col-md-8 control-label" Font-Bold="true"></asp:Label>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label ID="Label1571" runat="server" Text="Document Beneficiary Party" CssClass="col-md-8 control-label" Font-Bold="true"></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label1551" runat="server" Text="Party Code" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_isspartycode" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label1561" runat="server" Text="Party Code" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_benpartycode" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label1547" runat="server" Text="Party Name" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_isspartyname" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label1557" runat="server" Text="Party Name" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_benpartyname" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label1567" runat="server" Text="Address1" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_issaddress1" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label1577" runat="server" Text="Address1" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_benaddress1" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label1587" runat="server" Text="Address2" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_issaddress2" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label1597" runat="server" Text="Address2" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_benaddress2" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label1607" runat="server" Text="City" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_isscity" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label1637" runat="server" Text="City" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_bencity" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label1647" runat="server" Text="PIN" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_isspin" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label1657" runat="server" Text="PIN" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_benpin" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <input id="Button58" runat="server" type="button" value="Add" onclick="AddItemtogrid()" class="btn btn-info" />
                            <input id="Button59" runat="server" type="button" value="Clear All" onclick="clearAllDetailsGridCntrls()" class="btn btn-info" />
                            <input id="Button60" runat="server" type="button" value="Cancel" onclick="canceladddocgridCntrls()" class="btn btn-info" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="modal fade" id="containergrid" role="dialog" data-keyboard="false" data-backdrop="static" style="overflow: hidden;">
            <div class="modal-dialog" role="document" style="width: 75% !important;">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title font-weight-bold"></h4>
                    </div>
                    <div class="modal-body mx-4">
                        <div class="form-horizontal" id="divcontgrid">
                            <div class="form-group">
                                <asp:Label ID="lbl_user" runat="server" Text="LCL/FCL" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4" id="project_autolookup">
                                    <asp:DropDownList ID="ddl_lclorfcl" runat="server" data-val-required="true" AppendDataBoundItems="true" class="form-control col-md-4">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                        <asp:ListItem Value="L">LCL</asp:ListItem>
                                        <asp:ListItem Value="F">FCL</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <asp:Label ID="lbl_price" runat="server" Text="Container No" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_contno" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">

                                <asp:Label ID="lbl_veh_remarks" runat="server" Text="Seal Number" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_sealno" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <div class="col-md-6"></div>
                            </div>
                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <input id="btn_Add" runat="server" type="button" value="Add" onclick="AddItemtogrid()" class="btn btn-info" />
                            <input id="btn_Clear" runat="server" type="button" value="Clear All" onclick="clearAllDetailsGridCntrls()" class="btn btn-info" />
                            <input id="btn_Cancel" runat="server" type="button" value="Cancel" onclick="cancelDetailsGridCntrls()" class="btn btn-info" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="modal fade" id="licencegrid" role="dialog" data-keyboard="false" data-backdrop="static" style="overflow: hidden;">
            <div class="modal-dialog" role="document" style="width: 75% !important;">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title font-weight-bold"></h4>
                    </div>
                    <div class="modal-body mx-4">
                        <div class="form-horizontal" id="divlicencegrid">
                            <div class="form-group">
                                <asp:Label ID="Label1549" runat="server" Text="Reg. No" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4" id="project_autolookup2">
                                    <asp:TextBox ID="txt_regno" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label1559" runat="server" Text="Reg. Date" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_regdate" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label1569" runat="server" Text="Licence Code" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_liccode" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label1579" runat="server" Text="Reg. Port" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_regport" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label1589" runat="server" Text="Debit Quantity" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_debitqty" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label1599" runat="server" Text="Debit UOM" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:DropDownList runat="server" ID="ddl_debitUOM">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label1609" runat="server" Text="Debit Value" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_debitval" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <div class="col-md-6"></div>
                            </div>
                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <input id="Button132" runat="server" type="button" value="Add" onclick="AddItemtogrid()" class="btn btn-info" />
                            <input id="Button238" runat="server" type="button" value="Clear All" onclick="clearAllDetailsGridCntrls()" class="btn btn-info" />
                            <input id="Button348" runat="server" type="button" value="Cancel" onclick="cancellicenceGridCntrls()" class="btn btn-info" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="modal fade" id="customsdutygrid" role="dialog" data-keyboard="false" data-backdrop="static" style="overflow: hidden;">
            <div class="modal-dialog" role="document" style="width: 75% !important;">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title font-weight-bold"></h4>
                    </div>
                    <div class="modal-body mx-4">
                        <div class="form-horizontal" id="divcustomsdutygrid">
                            <div class="form-group">
                                <asp:Label ID="Label163" runat="server" Text="Duty Item" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:DropDownList ID="ddl_dutyitem" runat="server" data-val-required="true" AppendDataBoundItems="true" class="form-control col-md-4">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <asp:Label ID="Label164" runat="server" Text="Notification" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:DropDownList ID="ddl_noti" runat="server" data-val-required="true" AppendDataBoundItems="true" class="form-control col-md-4">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label165" runat="server" Text="Notif SRNO" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:DropDownList ID="ddl_notiSrno" runat="server" data-val-required="true" AppendDataBoundItems="true" class="form-control col-md-4">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <asp:Label ID="Label166" runat="server" Text="UOM" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:DropDownList ID="ddl_uom" runat="server" data-val-required="true" AppendDataBoundItems="true" class="form-control col-md-4">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label167" runat="server" Text="Duty Calc." CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:DropDownList ID="ddl_dutycalc" runat="server" data-val-required="true" AppendDataBoundItems="true" class="form-control col-md-4">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <asp:Label ID="Label168" runat="server" Text="Rate%" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_rateperc" runat="server" class="form-control"></asp:TextBox>

                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label169" runat="server" Text="Rate Rs" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_rateRs" runat="server" class="form-control"></asp:TextBox>

                                </div>
                                <div class="col-md-6"></div>
                            </div>
                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <input id="Button5" runat="server" type="button" value="Add" onclick="AddItemtogrid()" class="btn btn-info" />
                            <input id="Button6" runat="server" type="button" value="Clear All" onclick="clearAllDetailsGridCntrls()" class="btn btn-info" />
                            <input id="Button7" runat="server" type="button" value="Cancel" onclick="cancelcustomsdutygridGridCntrls()" class="btn btn-info" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="modal fade" id="excisedutygrid" role="dialog" data-keyboard="false" data-backdrop="static" style="overflow: hidden;">
            <div class="modal-dialog" role="document" style="width: 75% !important;">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title font-weight-bold"></h4>
                    </div>
                    <div class="modal-body mx-4">
                        <div class="form-horizontal" id="divexcisedutygrid">
                            <div class="form-group">
                                <asp:Label ID="Label171" runat="server" Text="Duty Item" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:DropDownList ID="ddl_excdutyitem" runat="server" data-val-required="true" AppendDataBoundItems="true" class="form-control col-md-4">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <asp:Label ID="Label172" runat="server" Text="Notification" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:DropDownList ID="ddl_excnoti" runat="server" data-val-required="true" AppendDataBoundItems="true" class="form-control col-md-4">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label173" runat="server" Text="Notif SRNO" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:DropDownList ID="ddl_excnotisrno" runat="server" data-val-required="true" AppendDataBoundItems="true" class="form-control col-md-4">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <asp:Label ID="Label174" runat="server" Text="UOM" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:DropDownList ID="ddl_excuom" runat="server" data-val-required="true" AppendDataBoundItems="true" class="form-control col-md-4">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label175" runat="server" Text="Duty Calc." CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:DropDownList ID="ddl_excdutycalc" runat="server" data-val-required="true" AppendDataBoundItems="true" class="form-control col-md-4">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <asp:Label ID="Label176" runat="server" Text="Rate%" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_excrateperc" runat="server" class="form-control"></asp:TextBox>

                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label177" runat="server" Text="Rate Rs" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_excrateaRs" runat="server" class="form-control"></asp:TextBox>

                                </div>
                                <div class="col-md-6"></div>
                            </div>
                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <input id="Button25" runat="server" type="button" value="Add" onclick="AddItemtogrid()" class="btn btn-info" />
                            <input id="Button36" runat="server" type="button" value="Clear All" onclick="clearAllDetailsGridCntrls()" class="btn btn-info" />
                            <input id="Button87" runat="server" type="button" value="Cancel" onclick="cancelexcisedutygridGridCntrls()" class="btn btn-info" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="modal fade" id="reimportgrid" role="dialog" data-keyboard="false" data-backdrop="static" style="overflow: hidden;">
            <div class="modal-dialog" role="document" style="width: 75% !important;">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title font-weight-bold"></h4>
                    </div>
                    <div class="modal-body mx-4">
                        <div class="form-horizontal" id="divreimportgrid">
                            <div class="form-group">
                                <asp:Label ID="Label180" runat="server" Text="Sl" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_reimpsl" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <asp:Label ID="Label181" runat="server" Text="SB No." CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_reimpsbno" runat="server" class="form-control"></asp:TextBox>

                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label182" runat="server" Text="SB Date" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_reimpsbdate" runat="server" class="form-control"></asp:TextBox>

                                </div>
                                <asp:Label ID="Label183" runat="server" Text="Port of Export" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_reimpportofexp" runat="server" class="form-control"></asp:TextBox>

                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label184" runat="server" Text="Sb Invoice No" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_reimpsbinvno" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <asp:Label ID="Label185" runat="server" Text="SB Item No" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_reimpsbitemno" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label186" runat="server" Text="Notification No" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_reimpnotino" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <asp:Label ID="Label187" runat="server" Text="Notification Sr No" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_reimpnotisrno" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label188" runat="server" Text="Export Freight " CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_reimpexpfrght" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <asp:Label ID="Label189" runat="server" Text="Export Insurance" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_reimpexpins" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label190" runat="server" Text="Customs Duty " CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_reimpcustduty" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <asp:Label ID="Label191" runat="server" Text="Excise Duty" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_reimpexcduty" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <input id="Button8" runat="server" type="button" value="Add" onclick="AddItemtogrid()" class="btn btn-info" />
                            <input id="Button9" runat="server" type="button" value="Clear All" onclick="clearAllDetailsGridCntrls()" class="btn btn-info" />
                            <input id="Button10" runat="server" type="button" value="Cancel" onclick="cancelreimportgridGridCntrls()" class="btn btn-info" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="modal fade" id="invoicedetailsgrid" role="dialog" data-keyboard="false" data-backdrop="static" style="overflow: hidden;">
            <div class="modal-dialog" role="document" style="width: 95% !important; height: 95% !important">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title font-weight-bold">Invoive Details</h4>
                    </div>
                    <div class="modal-body mx-4">
                        <div class="form-horizontal">

                            <div class="form-group">
                                <div class="form-horizontal" id="divinvoicedetailsgrid">
                                    <div class="form-group">
                                        <asp:Label ID="Label201" runat="server" Text="SlNo" CssClass="col-md-2 control-label"></asp:Label>
                                        <div class="col-md-4">
                                            <asp:TextBox ID="txt_invslno" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <asp:Label ID="Label202" runat="server" Text="Invoice No" CssClass="col-md-2 control-label"></asp:Label>
                                        <div class="col-md-4">
                                            <asp:TextBox ID="txt_invno" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="Label203" runat="server" Text=" Date" CssClass="col-md-2 control-label"></asp:Label>
                                        <div class="col-md-4">
                                            <asp:TextBox ID="txt_invdate" runat="server" class="form-control"></asp:TextBox>

                                        </div>
                                        <asp:Label ID="Label204" runat="server" Text="Currency" CssClass="col-md-2 control-label"></asp:Label>
                                        <div class="col-md-4">
                                            <asp:TextBox ID="txt_invcurr" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="Label205" runat="server" Text="Invoice Amt" CssClass="col-md-2 control-label"></asp:Label>
                                        <div class="col-md-4">
                                            <asp:TextBox ID="txt_invamt" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <asp:Label ID="Label206" runat="server" Text="Total Amt of Items" CssClass="col-md-2 control-label"></asp:Label>
                                        <div class="col-md-4">
                                            <asp:TextBox ID="txt_invamtofitem" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="Label280" runat="server" Text="Terms of Invoice" CssClass="col-md-2 control-label"></asp:Label>
                                        <div class="col-md-4">
                                            <asp:DropDownList runat="server" ID="ddl_gridtermsofinv">
                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="col-md-6"></div>
                                    </div>
                                </div>
                                <asp:Panel ID="Panel2" runat="server" Height="450px" ScrollBars="Auto">
                                    <div class="widget box">
                                        <div class="widget-header">
                                            <h4><i class="icon-reorder"></i>Freight and other charges</h4>
                                            <div class="toolbar no-padding">
                                                <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox11"><i class="icon-angle-down"></i></span></div>
                                            </div>
                                        </div>
                                        <div class="widget-content collapse col-md-12 in" id="widgetbox11">
                                            <div class="form-horizontal " id="divDynamic11">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <table class="table">
                                                            <thead>
                                                                <tr>
                                                                    <th scope="col"></th>
                                                                    <th scope="col">Rate</th>
                                                                    <th scope="col">Apply Rate(%)</th>
                                                                    <th scope="col">Amount</th>
                                                                    <th scope="col">Currency</th>
                                                                    <th scope="col">Exch. Rate</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <th scope="row">Agency</th>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_agencyrate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox></td>
                                                                    <td>
                                                                        <input type="checkbox" name="applyrate" id="chkb_agencyapplyrate" runat="server" /></td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_agencyamt" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList runat="server" ID="ddl_agencycurr">
                                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_agencyexcrate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">Loading</th>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_loadrate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox></td>
                                                                    <td>
                                                                        <input type="checkbox" name="applyrate" id="chkb_loadapplyrate" runat="server" /></td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_loadamt" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList runat="server" ID="ddl_loadcurr">
                                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_loadexcrate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">Discount</th>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_disountcrate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox></td>
                                                                    <td>
                                                                        <input type="checkbox" name="applyrate" id="chkbdiscapplyrate" runat="server" /></td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_discamt" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                                    </td>
                                                                    <td></td>
                                                                    <td></td>
                                                                    <td>
                                                                        <asp:Label ID="Label178" runat="server" Text="User Job Date" CssClass="col-md-10 control-label"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_discuserjobdate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">Miscellaneous</th>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_misrate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox></td>
                                                                    <td>
                                                                        <input type="checkbox" name="applyrate" id="chkb_misapplyrate" runat="server" /></td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_misamt" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList runat="server" ID="ddl_miscurr">
                                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_misexcrate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">HSS Load</th>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_hssrate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox></td>
                                                                    <td>
                                                                        <input type="checkbox" name="applyrate" id="chkb_HSSapplyrate" runat="server" /></td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_HSSamt" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                                    </td>
                                                                    <td></td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">Landing</th>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_landingrate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox></td>
                                                                    <td></td>
                                                                    <td></td>
                                                                    <td></td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">Freight</th>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_frghtrte" runat="server" class="form-control" ReadOnly="true"></asp:TextBox></td>
                                                                    <td>
                                                                        <input type="checkbox" name="applyrate" id="chkb_frghtapplyrte" runat="server" /></td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_frghtamt" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList runat="server" ID="ddl_frghtcurr">
                                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_frghtexcrte" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label179" runat="server" Text="Whether Freight is Actual" CssClass="col-md-10 control-label"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_frghtactual" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">Insurance</th>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_insrate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox></td>
                                                                    <td>
                                                                        <input type="checkbox" name="applyrate" id="chkb_insapplyrate" runat="server" /></td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_insamt" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList runat="server" ID="ddl_inscurr">
                                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_insexcrate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="widget box">
                                        <div class="widget-header">
                                            <h4><i class="icon-reorder"></i>Other Invoice Details</h4>
                                            <div class="toolbar no-padding">
                                                <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox12"><i class="icon-angle-down"></i></span></div>
                                            </div>
                                        </div>
                                        <div class="widget-content collapse col-md-12 " id="widgetbox12">
                                            <div class="form-horizontal " id="divDynamic12">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <asp:Label ID="Label25" runat="server" Text="Nature of transaction" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_natureoftran" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                        <asp:Label ID="Label26" runat="server" Text="Payment terms" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_payterms" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Label27" runat="server" Text="Purchase Order No" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_purchorderno" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                        <asp:Label ID="Label28" runat="server" Text="Purchase Order Date" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_purchorderdate" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Label29" runat="server" Text="Contract No" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_contractno" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                        <asp:Label ID="Label30" runat="server" Text="Contract Date" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_contractdate" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Label31" runat="server" Text="Location No" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_locno" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                        <asp:Label ID="Label32" runat="server" Text="Location Date" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_locdate" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="widget box">
                                        <div class="widget-header">
                                            <h4><i class="icon-reorder"></i>SVB</h4>
                                            <div class="toolbar no-padding">
                                                <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox13"><i class="icon-angle-down"></i></span></div>
                                            </div>
                                        </div>
                                        <div class="widget-content collapse col-md-12 " id="widgetbox13">
                                            <div class="form-horizontal " id="divDynamic13">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <asp:Label ID="Label141" runat="server" Text="SVB Loading" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:DropDownList runat="server" ID="ddl_SVBloading">
                                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                        <asp:Label ID="Label7gf" runat="server" Text="Ref No" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_refno" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Label143" runat="server" Text="Ref Date" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_refdate" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                        <asp:Label ID="Label144" runat="server" Text="Assessable Status" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:DropDownList runat="server" ID="ddl_assstat">
                                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Label145" runat="server" Text="Assessable Value" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_assval" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                        <asp:Label ID="Label146" runat="server" Text="On Duty Status" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:DropDownList runat="server" ID="ddl_ondutystat">
                                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Label147" runat="server" Text="On Duty Value" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_ondutyval" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                        <asp:Label ID="Label148" runat="server" Text="Customs House Code(Which has Imposed Load)" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_SVBcusthcode" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="widget box">
                                        <div class="widget-header">
                                            <h4><i class="icon-reorder"></i>Party Details</h4>
                                            <div class="toolbar no-padding">
                                                <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox14"><i class="icon-angle-down"></i></span></div>
                                            </div>
                                        </div>
                                        <div class="widget-content collapse col-md-12 " id="widgetbox14">
                                            <div class="form-horizontal " id="divDynamic14">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <asp:Label ID="Label33" runat="server" Text="Supplier Name" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_suppname" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                        <asp:Label ID="Label34" runat="server" Text="Country" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_suppcntry" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Label118" runat="server" Text="PIN" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_supppin" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                        <div class="col-md-6"></div>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Label121" runat="server" Text="Address" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_suppaddress" runat="server" class="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                                        </div>
                                                        <asp:Label ID="Label119" runat="server" Text="Address1" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_suppaddress1" runat="server" class="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <asp:Label ID="Label35" runat="server" Text="Seller Name" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_sellname" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                        <asp:Label ID="Label36" runat="server" Text="Country" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_sellcntry" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Label120" runat="server" Text="PIN" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_sellpin" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                        <div class="col-md-6"></div>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Label122" runat="server" Text="Address" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_selladdress" runat="server" class="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                                        </div>
                                                        <asp:Label ID="Label123" runat="server" Text="Address1" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_selladdress1" runat="server" class="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <asp:Label ID="Label124" runat="server" Text="Broker Name" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_broname" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                        <asp:Label ID="Label125" runat="server" Text="Country" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_brocntry" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Label126" runat="server" Text="PIN" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_bropin" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                        <div class="col-md-6"></div>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Label127" runat="server" Text="Address" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_broaddress" runat="server" class="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                                        </div>
                                                        <asp:Label ID="Label128" runat="server" Text="Address1" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_broaddress1" runat="server" class="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <asp:Label ID="Label129" runat="server" Text="Third Party Name" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_partyname" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                        <asp:Label ID="Label130" runat="server" Text="Country" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_partycntry" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Label131" runat="server" Text="PIN" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_partypin" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                        <div class="col-md-6"></div>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Label132" runat="server" Text="Address" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_partyaddress" runat="server" class="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                                        </div>
                                                        <asp:Label ID="Label133" runat="server" Text="Address1" CssClass="col-md-2 control-label"></asp:Label>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txt_partyaddress1" runat="server" class="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="widget box">
                                        <div class="widget-header">
                                            <h4><i class="icon-reorder"></i>Miscellaneous Charges</h4>
                                            <div class="toolbar no-padding">
                                                <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox15"><i class="icon-angle-down"></i></span></div>
                                            </div>
                                        </div>
                                        <div class="widget-content collapse col-md-12 " id="widgetbox15">
                                            <div class="form-horizontal " id="divDynamic15">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <table class="table">
                                                            <thead>
                                                                <tr>
                                                                    <th scope="col">Charge Type</th>
                                                                    <th scope="col">Misc. Charges Description</th>
                                                                    <th scope="col">Rate Req</th>
                                                                    <th scope="col">Rate</th>
                                                                    <th scope="col">Amount</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <th scope="row">A- Brokerage and commission</th>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Amiscdesc" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <input type="checkbox" name="rate" id="chkb_A" runat="server" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Arate" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Aamt" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">B- Cost of containers</th>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Bmiscdesc" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <input type="checkbox" name="rate" id="chkb_B" runat="server" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Brate" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Bamt" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">C- Cost of packing</th>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Cmiscdesc" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <input type="checkbox" name="rate" id="chkb_C" runat="server" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Crate" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Camt" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">D- Handling charges</th>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Dmiscdesc" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <input type="checkbox" name="rate" id="chkb_D" runat="server" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Drate" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Damt" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">E- Cost of goods and services</th>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Emiscdesc" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <input type="checkbox" name="rate" id="chkb_E" runat="server" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Erate" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Eamt" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">F- Documentation</th>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Fmiscdesc" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <input type="checkbox" name="rate" id="chkb_F" runat="server" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Frate" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Famt" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">G- Country of origin certificate</th>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Gmiscdesc" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <input type="checkbox" name="rate" id="chkb_G" runat="server" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Grate" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Gamt" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">H- Royalties and licence fees</th>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Hmiscdesc" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <input type="checkbox" name="rate" id="chkb_H" runat="server" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Hrate" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Hamt" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">I- Value of proceeds with accrue</th>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Imiscdesc" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <input type="checkbox" name="rate" id="chkb_I" runat="server" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Irate" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Iamt" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">J- Cost of warranty services</th>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Jmiscdesc" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <input type="checkbox" name="rate" id="chkb_J" runat="server" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Jrate" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Jamt" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">K- Other cost or payment</th>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Kmiscdesc" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <input type="checkbox" name="rate" id="chkb_K" runat="server" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Krate" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Kamt" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">L- Other charges and payment</th>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Lmiscdesc" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <input type="checkbox" name="rate" id="chkb_L" runat="server" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Lrate" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_Lamt" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">
                                                                        <input id="Button62" runat="server" type="button" value="OK" class="btn btn-info" />
                                                                    </th>
                                                                    <td></td>
                                                                    <td></td>
                                                                    <td style="width: 30%">
                                                                        <asp:Label ID="Label37" runat="server" Text="Total Invoice Value" CssClass="col-md-4 control-label"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox55" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <th></th>
                                                                    <td></td>
                                                                    <td></td>
                                                                    <td style="width: 30%">
                                                                        <asp:Label ID="Label343" runat="server" Text="Total Other Value" CssClass="col-md-4 control-label"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox56" runat="server" class="form-control"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:Panel>
                                <div class="modal-footer d-flex justify-content-center">
                                    <input id="Button13" runat="server" type="button" value="Add" onclick="AddInvoiceDetailsToGrid()" class="btn btn-info" />
                                    <input id="Button14" runat="server" type="button" value="Clear All" onclick="clearAllDetailsGridCntrls()" class="btn btn-info" />
                                    <input id="Button15" runat="server" type="button" value="Cancel" onclick="cancelinvoicedetailsgridCntrls()" class="btn btn-info" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="modal fade" id="certificategrid" role="dialog" data-keyboard="false" data-backdrop="static" style="overflow: hidden;">
            <div class="modal-dialog" role="document" style="width: 75% !important;">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title font-weight-bold"></h4>
                    </div>
                    <div class="modal-body mx-4">
                        <div class="form-horizontal" id="divcertificategrid">
                            <div class="form-group">
                                <asp:Label ID="Label215" runat="server" Text="SlNo" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_crtslno" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <asp:Label ID="Label216" runat="server" Text="Certificate No" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_grdcrtno" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label217" runat="server" Text=" Certificate Date" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_grdcrtdate" runat="server" class="form-control"></asp:TextBox>

                                </div>
                                <asp:Label ID="Label218" runat="server" Text="Certificate Type" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_grdcrttype" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <input id="Button17" runat="server" type="button" value="Add" onclick="AddItemtogrid()" class="btn btn-info" />
                            <input id="Button18" runat="server" type="button" value="Clear All" onclick="clearAllDetailsGridCntrls()" class="btn btn-info" />
                            <input id="Button19" runat="server" type="button" value="Cancel" onclick="cancelcertificategridCntrls()" class="btn btn-info" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="modal fade" id="bondgrid" role="dialog" data-keyboard="false" data-backdrop="static" style="overflow: hidden;">
            <div class="modal-dialog" role="document" style="width: 75% !important;">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title font-weight-bold"></h4>
                    </div>
                    <div class="modal-body mx-4">
                        <div class="form-horizontal" id="divbondgrid">
                            <div class="form-group">
                                <asp:Label ID="Label160" runat="server" Text="Bond Port" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_bondport" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Panel ID="Panel1" runat="server" Height="500px" ScrollBars="Auto">
                                </asp:Panel>
                            </div>
                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <input id="Button20" runat="server" type="button" value="Add" onclick="AddItemtogrid()" class="btn btn-info" />
                            <input id="Button21" runat="server" type="button" value="Clear All" onclick="clearAllDetailsGridCntrls()" class="btn btn-info" />
                            <input id="Button22" runat="server" type="button" value="Cancel" onclick="cancelbondgridCntrls()" class="btn btn-info" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="modal fade" id="additemtogrid" role="dialog" data-keyboard="false" data-backdrop="static" style="overflow: hidden;">
            <div class="modal-dialog" role="document" style="width: 95% !important; height: 95% !important">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title font-weight-bold">Item Details</h4>
                    </div>
                    <div class="modal-body mx-4">
                        <div class="form-horizontal" id="divadditemtogrid">
                            <div class="form-group">
                                <asp:Label ID="Label272" runat="server" Text="Sl" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_itemslno" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <asp:Label ID="Label273" runat="server" Text="Scheme Code" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:DropDownList ID="ddl_itemschemecode" runat="server" data-val-required="true" AppendDataBoundItems="true" class="form-control col-md-4">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label274" runat="server" Text=" RITC Code" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_ritccode" runat="server" class="form-control"></asp:TextBox>

                                </div>
                                <asp:Label ID="Label275" runat="server" Text="Goods Desc" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_goodsdesc" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label276" runat="server" Text="Quantity" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_qty" runat="server" class="form-control"></asp:TextBox>

                                </div>
                                <asp:Label ID="Label277" runat="server" Text="UOM" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:DropDownList ID="ddl_itemuom" runat="server" data-val-required="true" AppendDataBoundItems="true" class="form-control col-md-4">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label278" runat="server" Text="Unit Price" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_unitprice" runat="server" class="form-control"></asp:TextBox>

                                </div>
                                <asp:Label ID="Label279" runat="server" Text="Amount" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txt_amnt" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <asp:Panel ID="Panel3" runat="server" Height="450px" ScrollBars="Auto">
                                <div class="widget box">
                                    <div class="widget-header">
                                        <h4><i class="icon-reorder"></i></h4>
                                        <div class="toolbar no-padding">
                                            <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox9751"><i class="icon-angle-down"></i></span></div>
                                        </div>
                                    </div>
                                    <div class="widget-content collapse col-md-12 " id="widgetbox9751">
                                        <div class="form-horizontal " id="DynDiv9751">
                                            <div class="col-md-12">
                                                <div class="form-horizontal ">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <asp:Label ID="Label283" runat="server" Text="Message type" CssClass="col-md-2 control-label"></asp:Label>
                                                            <div class="col-md-4">
                                                                <asp:TextBox ID="TextBox2" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                            </div>
                                                            <asp:Label ID="Label284" runat="server" Text="Custom House Code" CssClass="col-md-2 control-label"></asp:Label>
                                                            <div class="col-md-4">
                                                                <asp:TextBox ID="TextBox3" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <asp:Label ID="Label285" runat="server" Text="User Job No" CssClass="col-md-2 control-label"></asp:Label>
                                                            <div class="col-md-4">
                                                                <asp:TextBox ID="TextBox4" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                            </div>
                                                            <asp:Label ID="Label286" runat="server" Text="User Job Date" CssClass="col-md-2 control-label"></asp:Label>
                                                            <div class="col-md-4">
                                                                <asp:TextBox ID="TextBox5" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <asp:Label ID="Label287" runat="server" Text="BE Number" CssClass="col-md-2 control-label"></asp:Label>
                                                            <div class="col-md-4">
                                                                <asp:TextBox ID="TextBox6" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                            </div>
                                                            <asp:Label ID="Label288" runat="server" Text="BE Date" CssClass="col-md-2 control-label"></asp:Label>
                                                            <div class="col-md-4">
                                                                <asp:TextBox ID="TextBox7" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <asp:Label ID="Label289" runat="server" Text="BE Type" CssClass="col-md-2 control-label"></asp:Label>
                                                            <div class="col-md-4">
                                                                <asp:TextBox ID="TextBox8" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                            </div>
                                                            <div class="col-md-6">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget box">
                                    <div class="widget-header">
                                        <h4><i class="icon-reorder"></i>Item Details</h4>
                                        <div class="toolbar no-padding">
                                            <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox161"><i class="icon-angle-down"></i></span></div>
                                        </div>
                                    </div>
                                    <div class="widget-content collapse col-md-12 in" id="widgetbox161">
                                        <div class="form-horizontal " id="divDynamic161">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <div class="col-md-6">
                                                        <div class="col-md-2">
                                                            <input id="Button27" runat="server" type="button" onclick="PopupshowAddItemWiseDetailsToGrid() " value="Add Item To Grid" class="btn btn-info" />
                                                        </div>
                                                        <div class="col-md-6">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <table id="table561" class="table table-bordered table-highlight-head table-responsive" aria-describedby="DataTables_Table_0_info">
                                                        <thead>
                                                            <tr role="row">
                                                                <th class="hidden-xs"></th>
                                                                <th class="hidden-xs">SL </th>
                                                                <th class="hidden-xs">Scheme Code</th>
                                                                <th class="hidden-xs">RITC Code</th>
                                                                <th class="hidden-xs">Goods Desc</th>
                                                                <th class="hidden-xs">Quantity</th>
                                                                <th class="hidden-xs">UOM</th>
                                                                <th class="hidden-xs">Unit Price</th>
                                                                <th class="hidden-xs">Amount</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="BTGrdTBody361" role="alert" aria-live="polite" aria-relevant="all">
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:Panel>
                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <input id="Button12" runat="server" type="button" value="Add" onclick="AddItemtogrid()" class="btn btn-info" />
                            <input id="Button23" runat="server" type="button" value="Clear All" onclick="clearAllDetailsGridCntrls()" class="btn btn-info" />
                            <input id="Button24" runat="server" type="button" value="Cancel" onclick="canceladditemtogridCntrls()" class="btn btn-info" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="modal fade" id="itemwisedetailsgrid" role="dialog" data-keyboard="false" data-backdrop="static" style="overflow: hidden;">
            <div class="modal-dialog" role="document" style="width: 75% !important;">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title font-weight-bold"></h4>
                    </div>
                    <div class="modal-body mx-4">
                        <div class="form-horizontal" id="divitemwisedetailsgrid">
                            <div class="form-group">
                                <asp:Label ID="Label381" runat="server" Text="Sl" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox89" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <asp:Label ID="Label382" runat="server" Text="Scheme Code" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:DropDownList ID="DropDownList10" runat="server" data-val-required="true" AppendDataBoundItems="true" class="form-control col-md-4">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label383" runat="server" Text=" RITC Code" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox90" runat="server" class="form-control"></asp:TextBox>

                                </div>
                                <asp:Label ID="Label384" runat="server" Text="Goods Desc" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox91" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label385" runat="server" Text="Quantity" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox92" runat="server" class="form-control"></asp:TextBox>

                                </div>
                                <asp:Label ID="Label386" runat="server" Text="UOM" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:DropDownList ID="DropDownList11" runat="server" data-val-required="true" AppendDataBoundItems="true" class="form-control col-md-4">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label387" runat="server" Text="Unit Price" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox93" runat="server" class="form-control"></asp:TextBox>

                                </div>
                                <asp:Label ID="Label388" runat="server" Text="Amount" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox94" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <input id="Button42" runat="server" type="button" value="Add" onclick="AddItemtogrid()" class="btn btn-info" />
                            <input id="Button43" runat="server" type="button" value="Clear All" onclick="clearAllDetailsGridCntrls()" class="btn btn-info" />
                            <input id="Button44" runat="server" type="button" value="Cancel" onclick="cancelitemwisedetailsgridCntrls()" class="btn btn-info" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="modal fade" id="infogrid" role="dialog" data-keyboard="false" data-backdrop="static" style="overflow: hidden;">
            <div class="modal-dialog" role="document" style="width: 75% !important;">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title font-weight-bold"></h4>
                    </div>
                    <div class="modal-body mx-4">
                        <div class="form-horizontal" id="divinfogrid">
                            <div class="form-group">
                                <asp:Label ID="Label389" runat="server" Text="Serial No" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox95" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <asp:Label ID="Label390" runat="server" Text="Info Type" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:DropDownList ID="DropDownList12" runat="server" data-val-required="true" AppendDataBoundItems="true" class="form-control col-md-4">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label391" runat="server" Text=" Info Code" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox96" runat="server" class="form-control"></asp:TextBox>

                                </div>
                                <asp:Label ID="Label392" runat="server" Text="Info Qualifier" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox97" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label393" runat="server" Text="Info Text" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox98" runat="server" class="form-control"></asp:TextBox>

                                </div>
                                <asp:Label ID="Label394" runat="server" Text="Info MSR" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:DropDownList ID="DropDownList13" runat="server" data-val-required="true" AppendDataBoundItems="true" class="form-control col-md-4">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label395" runat="server" Text="Info UQC" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox99" runat="server" class="form-control"></asp:TextBox>

                                </div>
                                <div class="col-md-6">
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <input id="Button34" runat="server" type="button" value="Add" onclick="AddItemtogrid()" class="btn btn-info" />
                            <input id="Button35" runat="server" type="button" value="Clear All" onclick="clearAllDetailsGridCntrls()" class="btn btn-info" />
                            <input id="Button37" runat="server" type="button" value="Cancel" onclick="cancelinfogridCntrls()" class="btn btn-info" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="modal fade" id="constituentgrid" role="dialog" data-keyboard="false" data-backdrop="static" style="overflow: hidden;">
            <div class="modal-dialog" role="document" style="width: 75% !important;">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title font-weight-bold"></h4>
                    </div>
                    <div class="modal-body mx-4">
                        <div class="form-horizontal" id="divconstituentgrid">
                            <div class="form-group">
                                <asp:Label ID="Label349" runat="server" Text="Constituent Sr. No" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox61" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label350" runat="server" Text="Constituent Element Name " CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox62" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label351" runat="server" Text="Constituent Element code" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox63" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label352" runat="server" Text="Constituent Percentage" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox64" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label353" runat="server" Text="Constituent Yield Percentage" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox65" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label354" runat="server" Text="Active Ingredient (Y/N)" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:DropDownList ID="DropDownList8" runat="server" data-val-required="true" AppendDataBoundItems="true" class="form-control col-md-4">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <input id="Button39" runat="server" type="button" value="Add" onclick="AddItemtogrid()" class="btn btn-info" />
                            <input id="Button40" runat="server" type="button" value="Clear All" onclick="clearAllDetailsGridCntrls()" class="btn btn-info" />
                            <input id="Button41" runat="server" type="button" value="Cancel" onclick="cancelconstituentgridCntrls()" class="btn btn-info" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="modal fade" id="productiongrid" role="dialog" data-keyboard="false" data-backdrop="static" style="overflow: hidden;">
            <div class="modal-dialog" role="document" style="width: 75% !important;">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title font-weight-bold"></h4>
                    </div>
                    <div class="modal-body mx-4">
                        <div class="form-horizontal" id="divproductiongrid">
                            <div class="form-group">
                                <asp:Label ID="Label356" runat="server" Text="Production Batch Identifier" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox66" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label357" runat="server" Text=" Production Batch Quantity " CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox67" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label358" runat="server" Text="Unit Quantity Code" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox68" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label359" runat="server" Text="Date of Manufacturing" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox69" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label360" runat="server" Text="Date of Expiry" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox70" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label361" runat="server" Text="Best Before" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox71" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <input id="Button46" runat="server" type="button" value="Add" onclick="AddItemtogrid()" class="btn btn-info" />
                            <input id="Button47" runat="server" type="button" value="Clear All" onclick="clearAllDetailsGridCntrls()" class="btn btn-info" />
                            <input id="Button48" runat="server" type="button" value="Cancel" onclick="cancelproductiongridCntrls()" class="btn btn-info" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="modal fade" id="Controlgrid" role="dialog" data-keyboard="false" data-backdrop="static" style="overflow: hidden;">
            <div class="modal-dialog" role="document" style="width: 75% !important;">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title font-weight-bold"></h4>
                    </div>
                    <div class="modal-body mx-4">
                        <div class="form-horizontal" id="divControlgrid">
                            <div class="form-group">
                                <asp:Label ID="Label363" runat="server" Text="Control Type Code" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox72" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label364" runat="server" Text="Control Location" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox73" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label365" runat="server" Text="Control Start Date" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox74" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label366" runat="server" Text="Control End Date" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox75" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label367" runat="server" Text="Control Result Code" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox76" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label368" runat="server" Text="Control Result Text" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox77" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label369" runat="server" Text="Control MSR " CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox78" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label370" runat="server" Text="Control UQC " CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox79" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label371" runat="server" Text="Control Slno" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox80" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <div class="col-md-6"></div>
                            </div>
                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <input id="Button50" runat="server" type="button" value="Add" onclick="AddItemtogrid()" class="btn btn-info" />
                            <input id="Button51" runat="server" type="button" value="Clear All" onclick="clearAllDetailsGridCntrls()" class="btn btn-info" />
                            <input id="Button52" runat="server" type="button" value="Cancel" onclick="cancelControlgridCntrls()" class="btn btn-info" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="modal fade" id="Declarationstatgrid" role="dialog" data-keyboard="false" data-backdrop="static" style="overflow: hidden;">
            <div class="modal-dialog" role="document" style="width: 75% !important;">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title font-weight-bold"></h4>
                    </div>
                    <div class="modal-body mx-4">
                        <div class="form-horizontal" id="divDeclarationstatgrid">
                            <div class="form-group">
                                <asp:Label ID="Label373" runat="server" Text="Item Sr. No" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox81" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label374" runat="server" Text="Invoice Serial No" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox82" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label375" runat="server" Text="Declaration Type" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox83" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label376" runat="server" Text="Declaration Number" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox84" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label377" runat="server" Text="Declaration Date" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox85" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label378" runat="server" Text="Statement Type " CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox86" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label379" runat="server" Text="Statement Code" CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox87" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                                <asp:Label ID="Label380" runat="server" Text="Statement Text " CssClass="col-md-2 control-label"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="TextBox88" runat="server" CssClass="form-control">  </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <input id="Button54" runat="server" type="button" value="Add" onclick="AddItemtogrid()" class="btn btn-info" />
                            <input id="Button55" runat="server" type="button" value="Clear All" onclick="clearAllDetailsGridCntrls()" class="btn btn-info" />
                            <input id="Button56" runat="server" type="button" value="Cancel" onclick="cancelDeclarationstatgridCntrls()" class="btn btn-info" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--item details inside row of itemdetails popup--%>
    <div>
        <div class="modal fade" id="itemdetailsgrid" role="dialog" data-keyboard="false" data-backdrop="static" style="overflow: hidden;">
            <div class="modal-dialog" role="document" style="width: 95% !important; height: 95% !important">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title font-weight-bold"></h4>
                    </div>
                    <div class="modal-body mx-4">
                        <div class="form-horizontal" id="divitemdetailsgrid">
                            <asp:Panel ID="Panel6" runat="server" Height="450px" ScrollBars="Auto">
                                <div class="widget box">
                                    <div class="widget-header">
                                        <h4><i class="icon-reorder"></i></h4>
                                        <div class="toolbar no-padding">
                                            <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox1712"><i class="icon-angle-down"></i></span></div>
                                        </div>
                                    </div>
                                    <div class="widget-content collapse col-md-12 in" id="widgetbox1712">
                                        <div class="form-horizontal " id="divDynamic1712">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:Label ID="Label290" runat="server" Text="Generic Desc. of Item" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox9" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label291" runat="server" Text="Country of Origin" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox10" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label300" runat="server" Text="Accessory status" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:DropDownList runat="server" ID="DropDownList14">
                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                            <asp:ListItem Value="0">Yes</asp:ListItem>
                                                            <asp:ListItem Value="1">No</asp:ListItem>
                                                            <asp:ListItem Value="2">No</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                    <asp:Label ID="Label294" runat="server" Text="Brand Name" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox13" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label293" runat="server" Text="Accessories" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox12" runat="server" TextMode="MultiLine" Height="100px" class="form-control"></asp:TextBox>
                                                    </div>

                                                    <div class="col-md-6">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label295" runat="server" Text="Model C" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox14" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label296" runat="server" Text="	End Use of Item" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox15" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label297" runat="server" Text="Policy Para No" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox16" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label298" runat="server" Text="Policy Year" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox17" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label299" runat="server" Text="RSP applicability" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:DropDownList runat="server" ID="DropDownList1">
                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                            <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                            <asp:ListItem Value="N">No</asp:ListItem>
                                                            <asp:ListItem Value="Q">Rule 3A</asp:ListItem>
                                                            <asp:ListItem Value="T">Institutional Consumer</asp:ListItem>
                                                            <asp:ListItem Value="D">Industrial Consumer.</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                    <asp:Label ID="Label292" runat="server" Text="Manufacturer Name" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox11" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label301" runat="server" Text="Transit Country" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox19" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label302" runat="server" Text="Source Country" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox20" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label303" runat="server" Text="Qty as per CTH" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox21" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-6"></div>
                                                </div>

                                                <div class="form-group" style="cursor: pointer">
                                                    <div class="col-md-12">
                                                        <div id="WFPagerDiv312" class="col-md-12">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget box">
                                    <div class="widget-header">
                                        <h4><i class="icon-reorder"></i>Customs</h4>
                                        <div class="toolbar no-padding">
                                            <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox171"><i class="icon-angle-down"></i></span></div>
                                        </div>
                                    </div>
                                    <div class="widget-content collapse col-md-12 " id="widgetbox171">
                                        <div class="form-horizontal " id="divDynamic171">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:Label ID="Label304" runat="server" Text="CTH No" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox22" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label305" runat="server" Text="Status" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox23" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-horizontal" style="overflow-x: auto">
                                                    <div class="form-group">
                                                        <div class="col-md-6">
                                                            <div class="col-md-2 ">
                                                                <input id="Button28" runat="server" type="button" onclick="PopupshowCustomsDuty()" value="Add Customs Duty" class="btn btn-info" />
                                                            </div>
                                                            <div class="col-md-6">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <table id="table31" class="table table-bordered table-highlight-head table-responsive" aria-describedby="DataTables_Table_0_info">
                                                        <thead>
                                                            <tr role="row">
                                                                <th class="hidden-xs"></th>
                                                                <th class="hidden-xs">SL NO</th>
                                                                <th class="hidden-xs">Duty Item</th>
                                                                <th class="hidden-xs">Notification</th>
                                                                <th class="hidden-xs">Notif SRNO</th>
                                                                <th class="hidden-xs">UOM</th>
                                                                <th class="hidden-xs">Duty Calc</th>
                                                                <th class="hidden-xs">Rate%</th>
                                                                <th class="hidden-xs">Rate Rs</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="BTGrdTBody31" role="alert" aria-live="polite" aria-relevant="all">
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <div class="form-group" style="cursor: pointer">
                                                    <div class="col-md-12">
                                                        <div id="WFPagerDiv31" class="col-md-12">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget box">
                                    <div class="widget-header">
                                        <h4><i class="icon-reorder"></i>Excise</h4>
                                        <div class="toolbar no-padding">
                                            <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox1781"><i class="icon-angle-down"></i></span></div>
                                        </div>
                                    </div>
                                    <div class="widget-content collapse col-md-12 " id="widgetbox1781">
                                        <div class="form-horizontal " id="divDynamic1781">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:Label ID="Label306" runat="server" Text="CETH No" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox24" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-6"></div>
                                                </div>
                                                <div class="form-horizontal" style="overflow-x: auto">
                                                    <div class="form-group">
                                                        <div class="col-md-6">
                                                            <div class="col-md-2 ">
                                                                <input id="Button29" runat="server" type="button" onclick="PopupshowExciseDuty()" value="Add Excise Duty" class="btn btn-info" />
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                        </div>
                                                    </div>
                                                    <table id="table41" class="table table-bordered table-highlight-head table-responsive" aria-describedby="DataTables_Table_0_info">
                                                        <thead>
                                                            <tr role="row">
                                                                <th class="hidden-xs"></th>
                                                                <th class="hidden-xs">SL NO</th>
                                                                <th class="hidden-xs">Duty Item</th>
                                                                <th class="hidden-xs">Notification</th>
                                                                <th class="hidden-xs">Notif SRNO</th>
                                                                <th class="hidden-xs">UOM</th>
                                                                <th class="hidden-xs">Duty Calc</th>
                                                                <th class="hidden-xs">Rate%</th>
                                                                <th class="hidden-xs">Rate Rs</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="BTGrdTBody41" role="alert" aria-live="polite" aria-relevant="all">
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <div class="form-group" style="cursor: pointer">
                                                    <div class="col-md-12">
                                                        <div id="WFPagerDiv41" class="col-md-12">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget box">
                                    <div class="widget-header">
                                        <h4><i class="icon-reorder"></i>GST</h4>
                                        <div class="toolbar no-padding">
                                            <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox17811"><i class="icon-angle-down"></i></span></div>
                                        </div>
                                    </div>
                                    <div class="widget-content collapse col-md-12 " id="widgetbox17811">
                                        <div class="form-horizontal " id="divDynamic17811">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:Label ID="Label1" runat="server" Text="CETH No" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-6"></div>
                                                </div>
                                                <div class="form-horizontal" style="overflow-x: auto">
                                                    <div class="form-group">
                                                        <div class="col-md-6">
                                                            <div class="col-md-2 ">
                                                                <input id="Button1" runat="server" type="button" onclick="PopupshowExciseDuty()" value="Add Excise Duty" class="btn btn-info" />
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                        </div>
                                                    </div>
                                                    <table id="table411" class="table table-bordered table-highlight-head table-responsive" aria-describedby="DataTables_Table_0_info">
                                                        <thead>
                                                            <tr role="row">
                                                                <th class="hidden-xs"></th>
                                                                <th class="hidden-xs">SL NO</th>
                                                                <th class="hidden-xs">Duty Item</th>
                                                                <th class="hidden-xs">Notification</th>
                                                                <th class="hidden-xs">Notif SRNO</th>
                                                                <th class="hidden-xs">UOM</th>
                                                                <th class="hidden-xs">Duty Calc</th>
                                                                <th class="hidden-xs">Rate%</th>
                                                                <th class="hidden-xs">Rate Rs</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="BTGrdTBody411" role="alert" aria-live="polite" aria-relevant="all">
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <div class="form-group" style="cursor: pointer">
                                                    <div class="col-md-12">
                                                        <div id="WFPagerDiv411" class="col-md-12">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget box">
                                    <div class="widget-header">
                                        <h4><i class="icon-reorder"></i>OtherDuty</h4>
                                        <div class="toolbar no-padding">
                                            <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox1791"><i class="icon-angle-down"></i></span></div>
                                        </div>
                                    </div>
                                    <div class="widget-content collapse col-md-12 " id="widgetbox1791">
                                        <div class="form-horizontal " id="divDynamic1791">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <div class="form-horizontal" style="overflow-x: auto">
                                                        <div class="form-group">
                                                            <div class="col-md-6">
                                                                <div class="col-md-2">
                                                                    <input id="Button31" runat="server" type="button" onclick="PopupshowOtherDuty()" value="Add Other Duty" class="btn btn-info" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                            </div>
                                                        </div>
                                                        <table id="table51" class="table table-bordered table-highlight-head table-responsive" aria-describedby="DataTables_Table_0_info">
                                                            <thead>
                                                                <tr role="row">
                                                                    <th class="hidden-xs"></th>
                                                                    <th class="hidden-xs">SL NO</th>
                                                                    <th class="hidden-xs">Duty Item</th>
                                                                    <th class="hidden-xs">Notification</th>
                                                                    <th class="hidden-xs">Notif SRNO</th>
                                                                    <th class="hidden-xs">UOM</th>
                                                                    <th class="hidden-xs">Duty Calc</th>
                                                                    <th class="hidden-xs">Rate%</th>
                                                                    <th class="hidden-xs">Rate Rs</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody id="BTGrdTBody5" role="alert" aria-live="polite" aria-relevant="all">
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <div class="form-group" style="cursor: pointer">
                                                        <div class="col-md-12">
                                                            <div id="WFPagerDiv5" class="col-md-12">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <table class="table">
                                                        <thead>
                                                            <tr>
                                                                <th scope="col"></th>
                                                                <th scope="col">Notification</th>
                                                                <th style="width: 100px" scope="col">Rate %</th>
                                                                <th style="width: 100px" scope="col">Quantity</th>
                                                                <th style="width: 250px"></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th style="width: 100px" scope="row">Discount Rate</th>
                                                                <td style="width: 150px">
                                                                    <asp:TextBox ID="TextBox26" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                                <td style="width: 100px">Discount Amount</td>
                                                                <td style="width: 150px">
                                                                    <asp:TextBox ID="TextBox27" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                                <td style="width: 250px"></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget box">
                                    <div class="widget-header">
                                        <h4><i class="icon-reorder"></i>Manufacturer/Grower/Producer Details</h4>
                                        <div class="toolbar no-padding">
                                            <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox181"><i class="icon-angle-down"></i></span></div>
                                        </div>
                                    </div>
                                    <div class="widget-content collapse col-md-12 " id="widgetbox181">
                                        <div class="form-horizontal " id="divDynamic181">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:Label ID="Label308" runat="server" Text="Name" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox28" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label309" runat="server" Text="city" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox29" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label310" runat="server" Text="Code type" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox30" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label311" runat="server" Text="country subdivision" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox31" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label312" runat="server" Text="code" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox32" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label313" runat="server" Text="pin" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox33" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label314" runat="server" Text="Address1" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox34" runat="server" class="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label315" runat="server" Text="country" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox35" runat="server" class="form-control" data-val-required="true"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label316" runat="server" Text="Address2" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox36" runat="server" class="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-6"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget box">
                                    <div class="widget-header">
                                        <h4><i class="icon-reorder"></i>Reimport</h4>
                                        <div class="toolbar no-padding">
                                            <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox191"><i class="icon-angle-down"></i></span></div>
                                        </div>
                                    </div>
                                    <div class="widget-content collapse col-md-12 " id="widgetbox191">
                                        <div class="form-horizontal " id="divDynamic191">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:Label ID="Label317" runat="server" Text="Previous BE No" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox37" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label318" runat="server" Text="Previous BE Date" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox38" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label319" runat="server" Text="Previous UOM" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:DropDownList runat="server" ID="DropDownList2">
                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                    <asp:Label ID="Label320" runat="server" Text="Previous Currency Code" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:DropDownList runat="server" ID="DropDownList3">
                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label321" runat="server" Text="Previous Custom Site" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox39" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-6"></div>
                                                </div>
                                                <div class="widget-content collapse col-md-12 in" id="widgetbox1521">
                                                    <div class="form-horizontal " id="divDynamic1521">
                                                        <div class="col-md-12">
                                                            <div class="form-horizontal" style="overflow-x: auto">
                                                                <div class="form-group">
                                                                    <div class="col-md-6">
                                                                        <div class="col-md-2 ">
                                                                            <input id="Button32" runat="server" type="button" onclick="PopupshowaddReimportgrid()" value="Add to Grid" class="btn btn-info" />
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                    </div>
                                                                </div>
                                                                <table id="table71" class="table table-bordered table-highlight-head table-responsive" aria-describedby="DataTables_Table_0_info">
                                                                    <thead>
                                                                        <tr role="row">
                                                                            <th class="hidden-xs"></th>
                                                                            <th class="hidden-xs">SlNo</th>
                                                                            <th class="hidden-xs">SB No.</th>
                                                                            <th class="hidden-xs">SB Date</th>
                                                                            <th class="hidden-xs">Port of Export</th>
                                                                            <th class="hidden-xs">Sb Invoice No</th>
                                                                            <th class="hidden-xs">SB Item No</th>
                                                                            <th class="hidden-xs">Notification No</th>
                                                                            <th class="hidden-xs">Notification Sr No</th>
                                                                            <th class="hidden-xs">Export Frieght</th>
                                                                            <th class="hidden-xs">Export Insurance</th>
                                                                            <th class="hidden-xs">Customs Duty</th>
                                                                            <th class="hidden-xs">Excise Duty</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="BTGrdTBody71" role="alert" aria-live="polite" aria-relevant="all">
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                            <div class="form-group" style="cursor: pointer">
                                                                <div class="col-md-12">
                                                                    <div id="WFPagerDiv71" class="col-md-12">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget box">
                                    <div class="widget-header">
                                        <h4><i class="icon-reorder"></i>SVB</h4>
                                        <div class="toolbar no-padding">
                                            <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox211"><i class="icon-angle-down"></i></span></div>
                                        </div>
                                    </div>
                                    <div class="widget-content collapse col-md-12 " id="widgetbox211">
                                        <div class="form-horizontal " id="divDynamic211">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:Label ID="Label322" runat="server" Text="SVB Loading" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:DropDownList runat="server" ID="DropDownList4">
                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                    <asp:Label ID="Label323" runat="server" Text="Ref No" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox40" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label324" runat="server" Text="Ref Date" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox41" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label325" runat="server" Text="Assessable Status" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:DropDownList runat="server" ID="DropDownList5">
                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label326" runat="server" Text="Assessable Value" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox42" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label327" runat="server" Text="On Duty Status" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:DropDownList runat="server" ID="DropDownList6">
                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label328" runat="server" Text="On Duty Value" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox43" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label329" runat="server" Text="Customs House Code(Which has Imposed Load)" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox44" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget box">
                                    <div class="widget-header">
                                        <h4><i class="icon-reorder"></i>RSP</h4>
                                        <div class="toolbar no-padding">
                                            <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox221"><i class="icon-angle-down"></i></span></div>
                                        </div>
                                    </div>
                                    <div class="widget-content collapse col-md-12 " id="widgetbox221">
                                        <div class="form-horizontal " id="divDynamic221">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:Label ID="Label330" runat="server" Text="RSP in INR" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox45" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label331" runat="server" Text="Quantity" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox46" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label332" runat="server" Text="Description" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox47" runat="server" class="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label333" runat="server" Text="RSP Notification" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox48" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label334" runat="server" Text="RSP Notification Serial No" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox49" runat="server" class="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label335" runat="server" Text="Abentment Rate" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox50" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget box">
                                    <div class="widget-header">
                                        <h4><i class="icon-reorder"></i>Licence</h4>
                                        <div class="toolbar no-padding">
                                            <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox231"><i class="icon-angle-down"></i></span></div>
                                        </div>
                                    </div>
                                    <div class="widget-content collapse col-md-12 " id="widgetbox231">
                                        <div class="form-horizontal " id="divDynamic231">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <div class="col-md-6">
                                                        <div class="col-md-2 ">
                                                            <input id="Button33" runat="server" type="button" onclick="Popupshowlicence()" value="Add licence" class="btn btn-info" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                    </div>
                                                </div>
                                                <table id="table21" class="table table-bordered table-highlight-head table-responsive" aria-describedby="DataTables_Table_0_info">
                                                    <thead>
                                                        <tr role="row">
                                                            <th class="hidden-xs"></th>
                                                            <th class="hidden-xs">Reg NO</th>
                                                            <th class="hidden-xs">Reg. Date</th>
                                                            <th class="hidden-xs">Licence Code</th>
                                                            <th class="hidden-xs">Reg. Port </th>
                                                            <th class="hidden-xs">Debit Quantity </th>
                                                            <th class="hidden-xs">Debit UOM </th>
                                                            <th class="hidden-xs">Debit Value </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="BTGrdTBody21" role="alert" aria-live="polite" aria-relevant="all">
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="form-group" style="cursor: pointer">
                                                <div class="col-md-12">
                                                    <div id="WFPagerDiv21" class="col-md-12">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget box">
                                    <div class="widget-header">
                                        <h4><i class="icon-reorder"></i>DEPB</h4>
                                        <div class="toolbar no-padding">
                                            <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox2412"><i class="icon-angle-down"></i></span></div>
                                        </div>
                                    </div>
                                    <div class="widget-content collapse col-md-12 " id="widgetbox2412">
                                        <div class="form-horizontal " id="divDynamic2412">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:Label ID="Label336" runat="server" Text="Excemption Required(Only for DEPB Scheme)" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:DropDownList runat="server" ID="DropDownList7">
                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                            <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                            <asp:ListItem Value="N">No</asp:ListItem>

                                                        </asp:DropDownList>
                                                    </div>
                                                    <asp:Label ID="Label337" runat="server" Text="BCD Notification" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox51" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label338" runat="server" Text="BCD Notification Sr No" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox52" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget box">
                                    <div class="widget-header">
                                        <h4><i class="icon-reorder"></i>SW Declaration </h4>
                                        <div class="toolbar no-padding">
                                            <div class="btn-group"><span class="btn btn-md widget-collapse" data-toggle="collapse" data-target="#widgetbox2411"><i class="icon-angle-down"></i></span></div>
                                        </div>
                                    </div>
                                    <div class="widget-content collapse col-md-12 " id="widgetbox2411">
                                        <div class="form-horizontal " id="divDynamic2411">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:Label ID="Label339" runat="server" Text="Item Sr. No" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox53" runat="server" CssClass="form-control">  </asp:TextBox>
                                                    </div>
                                                    <asp:Label ID="Label340" runat="server" Text="Invoice Serial No" CssClass="col-md-2 control-label"></asp:Label>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="TextBox54" runat="server" CssClass="form-control">  </asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-2">
                                                        <asp:Label ID="Label341" runat="server" Text="Info" CssClass="col-md-4 control-label" Font-Bold="true"></asp:Label>
                                                    </div>
                                                    <div class="col-md-6"></div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="form-horizontal" style="overflow-x: auto">
                                                        <div class="form-group">
                                                            <div class="col-md-2 align-center">
                                                                <input id="Button38" runat="server" type="button" onclick="PopupshowInfo()" value="Add Info" class="btn btn-info" />
                                                            </div>
                                                        </div>
                                                        <table id="table13" class="table table-bordered table-highlight-head table-responsive" aria-describedby="DataTables_Table_0_info">
                                                            <thead>
                                                                <tr role="row">
                                                                    <th class="hidden-xs"></th>
                                                                    <th class="hidden-xs">SL NO</th>
                                                                    <th class="hidden-xs">Info Type</th>
                                                                    <th class="hidden-xs">Info Code</th>
                                                                    <th class="hidden-xs">Info Qualifier </th>
                                                                    <th class="hidden-xs">Info Text  </th>
                                                                    <th class="hidden-xs">Info MSR  </th>
                                                                    <th class="hidden-xs">Info UQC   </th>
                                                                </tr>
                                                            </thead>
                                                            <tbody id="BTGrdTBody13" role="alert" aria-live="polite" aria-relevant="all">
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <div class="form-group" style="cursor: pointer">
                                                        <div class="col-md-12">
                                                            <div id="WFPagerDiv13" class="col-md-12">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <hr style="border-bottom: solid 1px grey" />
                                                    <div class="col-md-2">
                                                        <asp:Label ID="Label348" runat="server" Text="Constituent" CssClass="col-md-4 control-label" Font-Bold="true"></asp:Label>
                                                    </div>
                                                    <div class="col-md-6"></div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="form-horizontal" style="overflow-x: auto">
                                                        <div class="form-group">
                                                            <div class="col-md-2 align-center">
                                                                <input id="Button45" runat="server" type="button" onclick="PopupshowConstituent()" value="Add Constituent" class="btn btn-info" />
                                                            </div>
                                                        </div>
                                                        <table id="table131" class="table table-bordered table-highlight-head table-responsive" aria-describedby="DataTables_Table_0_info">
                                                            <thead>
                                                                <tr role="row">
                                                                    <th class="hidden-xs"></th>
                                                                    <th class="hidden-xs">SL NO</th>
                                                                    <th class="hidden-xs">Constituent Element Name</th>
                                                                    <th class="hidden-xs">Constituent Element code</th>
                                                                    <th class="hidden-xs">Constituent Percentage </th>
                                                                    <th class="hidden-xs">Constituent Yield Percentage</th>
                                                                    <th class="hidden-xs">Active Ingredient (Y/N) </th>
                                                                </tr>
                                                            </thead>
                                                            <tbody id="BTGrdTBody131" role="alert" aria-live="polite" aria-relevant="all">
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <div class="form-group" style="cursor: pointer">
                                                        <div class="col-md-12">
                                                            <div id="WFPagerDiv131" class="col-md-12">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <hr style="border-bottom: solid 1px grey" />
                                                    <div class="col-md-2">
                                                        <asp:Label ID="Label355" runat="server" Text="Production" CssClass="col-md-4 control-label" Font-Bold="true"></asp:Label>
                                                    </div>
                                                    <div class="col-md-6"></div>
                                                </div>
                                                <div class="form-goup">
                                                    <div class="form-horizontal" style="overflow-x: auto">
                                                        <div class="form-group">
                                                            <div class="col-md-2 align-center">
                                                                <input id="Button49" runat="server" type="button" onclick="PopupshowProduction()" value="Add Production" class="btn btn-info" />
                                                            </div>
                                                        </div>
                                                        <table id="table132" class="table table-bordered table-highlight-head table-responsive" aria-describedby="DataTables_Table_0_info">
                                                            <thead>
                                                                <tr role="row">
                                                                    <th class="hidden-xs"></th>
                                                                    <th class="hidden-xs">Production Batch Identifier	</th>
                                                                    <th class="hidden-xs">Production Batch Quantity</th>
                                                                    <th class="hidden-xs">Unit Quantity Code </th>
                                                                    <th class="hidden-xs">Date of Manufacturing </th>
                                                                    <th class="hidden-xs">Date of Expiry</th>
                                                                    <th class="hidden-xs">Best Before </th>
                                                                </tr>
                                                            </thead>
                                                            <tbody id="BTGrdTBody132" role="alert" aria-live="polite" aria-relevant="all">
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <div class="form-group" style="cursor: pointer">
                                                        <div class="col-md-12">
                                                            <div id="WFPagerDiv132" class="col-md-12">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <hr style="border-bottom: solid 1px grey" />
                                                    <div class="col-md-2">
                                                        <asp:Label ID="Label362" runat="server" Text="Control" CssClass="col-md-4 control-label" Font-Bold="true"></asp:Label>
                                                    </div>
                                                    <div class="col-md-6"></div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="form-horizontal" style="overflow-x: auto">
                                                        <div class="form-group">
                                                            <div class="col-md-2 align-center">
                                                                <input id="Button53" runat="server" type="button" onclick="PopupshowControl()" value="Add Control" class="btn btn-info" />
                                                            </div>
                                                        </div>
                                                        <table id="table133" class="table table-bordered table-highlight-head table-responsive" aria-describedby="DataTables_Table_0_info">
                                                            <thead>
                                                                <tr role="row">
                                                                    <th class="hidden-xs"></th>
                                                                    <th class="hidden-xs">Control Slno</th>
                                                                    <th class="hidden-xs">Control Type Code</th>
                                                                    <th class="hidden-xs">Control Location</th>
                                                                    <th class="hidden-xs">Control Start Date </th>
                                                                    <th class="hidden-xs">Control End Date</th>
                                                                    <th class="hidden-xs">Control Result Code</th>
                                                                    <th class="hidden-xs">Control Result Text</th>
                                                                    <th class="hidden-xs">Control MSR</th>
                                                                    <th class="hidden-xs">Control UQC</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody id="BTGrdTBody133" role="alert" aria-live="polite" aria-relevant="all">
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <div class="form-group" style="cursor: pointer">
                                                        <div class="col-md-12">
                                                            <div id="WFPagerDiv133" class="col-md-12">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <hr style="border-bottom: solid 1px grey" />
                                                    <div class="col-md-2">
                                                        <asp:Label ID="Label372" runat="server" Text="Declaration Statements" CssClass="col-md-4 control-label" Font-Bold="true"></asp:Label>
                                                    </div>
                                                    <div class="col-md-6"></div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="form-horizontal" style="overflow-x: auto">
                                                        <div class="form-group">
                                                            <div class="col-md-2 align-center">
                                                                <input id="Button57" runat="server" type="button" onclick="PopupshowDeclarationStat()" value="Add Declaration Statements" class="btn btn-info" />
                                                            </div>
                                                        </div>
                                                        <table id="table134" class="table table-bordered table-highlight-head table-responsive" aria-describedby="DataTables_Table_0_info">
                                                            <thead>
                                                                <tr role="row">
                                                                    <th class="hidden-xs"></th>
                                                                    <th class="hidden-xs">Declaration Type</th>
                                                                    <th class="hidden-xs">Declaration Number</th>
                                                                    <th class="hidden-xs">Declaration Date</th>
                                                                    <th class="hidden-xs">Statement Code </th>
                                                                    <th class="hidden-xs">Statement Text</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody id="BTGrdTBody134" role="alert" aria-live="polite" aria-relevant="all">
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <div class="form-group" style="cursor: pointer">
                                                        <div class="col-md-12">
                                                            <div id="WFPagerDiv134" class="col-md-12">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:Panel>
                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <input id="Button2" runat="server" type="button" value="Add" onclick="AddItemtogrid()" class="btn btn-info" />
                            <input id="Button3" runat="server" type="button" value="Clear All" onclick="clearAllDetailsGridCntrls()" class="btn btn-info" />
                            <input id="Button4" runat="server" type="button" value="Cancel" onclick="cancelitemdetailsgridCntrls()" class="btn btn-info" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <input id="hdnPk" type="hidden" runat="server" />
    </div>
    <script type="text/javascript">
        var _hdnPK = document.getElementById("<%=hdnPk.ClientId%>");
        var _ddl_msg_type = document.getElementById("<%=ddl_msg_type.ClientId%>");
        var _rdb_Air = document.getElementById("<%=rdb_Air.ClientId%>");
        var _rdb_Sea = document.getElementById("<%=rdb_Sea.ClientId%>");
        var _rdb_ICD = document.getElementById("<%=rdb_ICD.ClientId%>");
        var _txt_jobno = document.getElementById("<%=txt_jobno.ClientId%>");
        var _txt_custhousecode = document.getElementById("<%=txt_custhousecode.ClientId%>");
        var _txt_jobdate = document.getElementById("<%=txt_jobdate.ClientId%>");
        var _txt_BEno = document.getElementById("<%=txt_BEno.ClientId%>");
        var _ddl_modeoftrans = document.getElementById("<%=ddl_modeoftrans.ClientId%>");
        var _txt_BEdate = document.getElementById("<%=txt_BEdate.ClientId%>");
        var _txt_class = document.getElementById("<%=txt_class.ClientId%>");
        var _ddl_BEtype = document.getElementById("<%=ddl_BEtype.ClientId%>");
        var _txt_name = document.getElementById("<%=txt_name.ClientId%>");
        var _txt_impcity = document.getElementById("<%=txt_impcity.ClientId%>");
        var _txt_importer_ou = document.getElementById("<%=txt_importer_ou.ClientId%>");
        var _txt_state = document.getElementById("<%=txt_state.ClientId%>");
        var _txt_address = document.getElementById("<%=txt_address.ClientId%>");
        var _txt_pin = document.getElementById("<%=txt_pin.ClientId%>");
        var _txt_ie_code = document.getElementById("<%=txt_ie_code.ClientId%>");
        var _txt_br_srno = document.getElementById("<%=txt_br_srno.ClientId%>");
        var _txt_dealercode = document.getElementById("<%=txt_dealercode.ClientId%>");
        var _ddl_importertype = document.getElementById("<%=ddl_importertype.ClientId%>");
        var _txt_address = document.getElementById("<%=txt_address.ClientId%>");
        var _txt_imppin = document.getElementById("<%=txt_imppin.ClientId%>");
        var _txt_noofpkgrel = document.getElementById("<%=txt_noofpkgrel.ClientId%>");
        var _txt_addcharge = document.getElementById("<%=txt_addcharge.ClientId%>");
        var _txt_pkgcode = document.getElementById("<%=txt_pkgcode.ClientId%>");
        var _txt_miscload = document.getElementById("<%=txt_miscload.ClientId%>");
        var _txt_grosswght = document.getElementById("<%=txt_grosswght.ClientId%>");
        var _txt_UCRno = document.getElementById("<%=txt_UCRno.ClientId%>");
        var _txt_unitofmrnt = document.getElementById("<%=txt_unitofmrnt.ClientId%>");
        var _txt_UCRtype = document.getElementById("<%=txt_UCRtype.ClientId%>");
        var _txt_paycode = document.getElementById("<%=txt_paycode.ClientId%>");
        var _txt_portoforg = document.getElementById("<%=txt_portoforg.ClientId%>");
        var _txt_cntryoforg = document.getElementById("<%=txt_cntryoforg.ClientId%>");
        var _txt_cnrtyofconsgmt = document.getElementById("<%=txt_cnrtyofconsgmt.ClientId%>");
        var _txt_portofshmt = document.getElementById("<%=txt_portofshmt.ClientId%>");
        var _chkb_firstchkbreq = document.getElementById("<%=chkb_firstchkbreq.ClientId%>");
        var _chkb_kachchaBE = document.getElementById("<%=chkb_kachchaBE.ClientId%>");
        var _chkb_greenchareq = document.getElementById("<%=chkb_greenchareq.ClientId%>");
        var _chkb_sec48req = document.getElementById("<%=chkb_sec48req.ClientId%>");
        var _txt_orgimpname = document.getElementById("<%=txt_orgimpname.ClientId%>");
        var _txt_city = document.getElementById("<%=txt_city.ClientId%>");
        var _txt_iecode = document.getElementById("<%=txt_iecode.ClientId%>");
        var _txt_pin = document.getElementById("<%=txt_pin.ClientId%>");
        var _txt_brsrno = document.getElementById("<%=txt_brsrno.ClientId%>");
        var _txt_address1 = document.getElementById("<%=txt_address1.ClientId%>");
        var _txt_address2 = document.getElementById("<%=txt_address2.ClientId%>");
        var _txt_WHcode = document.getElementById("<%=txt_WHcode.ClientId%>");
        var _txt_WHBEno = document.getElementById("<%=txt_WHBEno.ClientId%>");
        var _txt_custsiteid = document.getElementById("<%=txt_custsiteid.ClientId%>");
        var _txtWHBEdate = document.getElementById("<%=txtWHBEdate.ClientId%>");
        var _txt_natureoftran = document.getElementById("<%=txt_natureoftran.ClientId%>");
        var _txt_payterms = document.getElementById("<%=txt_payterms.ClientId%>");
        var _txt_purchorderno = document.getElementById("<%=txt_purchorderno.ClientId%>");
        var _txt_purchorderdate = document.getElementById("<%=txt_purchorderdate.ClientId%>");
        var _txt_contractno = document.getElementById("<%=txt_contractno.ClientId%>");
        var _txt_contractdate = document.getElementById("<%=txt_contractdate.ClientId%>");
        var _txt_locno = document.getElementById("<%=txt_locno.ClientId%>");
        var _txt_locdate = document.getElementById("<%=txt_locdate.ClientId%>");
        var _txt_suppname = document.getElementById("<%=txt_suppname.ClientId%>");
        var _txt_suppcntry = document.getElementById("<%=txt_suppcntry.ClientId%>");
        var _txt_supppin = document.getElementById("<%=txt_supppin.ClientId%>");
        var _txt_suppaddress1 = document.getElementById("<%=txt_suppaddress1.ClientId%>");
        <%--var _ddl_rspappcblty = document.getElementById("<%=ddl_rspappcblty.ClientId%>");
        var _txt_accstat = document.getElementById("<%=txt_accstat.ClientId%>");
        var _txt_transcntry = document.getElementById("<%=txt_transcntry.ClientId%>");
        var _txt_srccntry = document.getElementById("<%=txt_srccntry.ClientId%>");
        var _txt_qtyasCTH = document.getElementById("<%=txt_qtyasCTH.ClientId%>");
        var _txt_itemname = document.getElementById("<%=txt_itemname.ClientId%>");
        var _txt_itemcity = document.getElementById("<%=txt_itemcity.ClientId%>");
        var _txt_codetype = document.getElementById("<%=txt_codetype.ClientId%>");
        var _txt_cntrysubdiv = document.getElementById("<%=txt_cntrysubdiv.ClientId%>");
        var _txt_code = document.getElementById("<%=txt_code.ClientId%>");
        var _txt_itempin = document.getElementById("<%=txt_itempin.ClientId%>");
        var _txt_itemaddress1 = document.getElementById("<%=txt_itemaddress1.ClientId%>");
        var _txt_country = document.getElementById("<%=txt_country.ClientId%>");
        var _txt_itemaddress2 = document.getElementById("<%=txt_itemaddress2.ClientId%>");--%>
        var _txt_amendcode = document.getElementById("<%=txt_amendcode.ClientId%>");
        var _txt_reasonadm = document.getElementById("<%=txt_reasonadm.ClientId%>");
        var _txt_comtaxregno = document.getElementById("<%=txt_comtaxregno.ClientId%>");
        var _txt_IGMno = document.getElementById("<%=txt_IGMno.ClientId%>");
        var _txt_IGMdate = document.getElementById("<%=txt_IGMdate.ClientId%>");
        var _txt_inwarddate = document.getElementById("<%=txt_inwarddate.ClientId%>");
        var _txt_portofrep = document.getElementById("<%=txt_portofrep.ClientId%>");
        var _txt_gwIGMno = document.getElementById("<%=txt_gwIGMno.ClientId%>");
        var _txt_gwIGMdate = document.getElementById("<%=txt_gwIGMdate.ClientId%>");
        var _txt_MAWBblno = document.getElementById("<%=txt_MAWBblno.ClientId%>");
        var _txt_MAWBbldate = document.getElementById("<%=txt_MAWBbldate.ClientId%>");
        var _txt_MAWBhblno = document.getElementById("<%=txt_MAWBhblno.ClientId%>");
        var _txt_MAWBhbldate = document.getElementById("<%=txt_MAWBhbldate.ClientId%>");
        var _txt_totnoofpkg = document.getElementById("<%=txt_totnoofpkg.ClientId%>");
        var _txt_IGMpkgcode = document.getElementById("<%=txt_IGMpkgcode.ClientId%>");
        var _txt_IGMgrosswght = document.getElementById("<%=txt_IGMgrosswght.ClientId%>");
        var _txt_IGMUOM = document.getElementById("<%=txt_IGMUOM.ClientId%>");
        var _txt_mrkandno1 = document.getElementById("<%=txt_mrkandno1.ClientId%>");
        var _txt_mrkandno2 = document.getElementById("<%=txt_mrkandno2.ClientId%>");
        var _txt_mrkandno3 = document.getElementById("<%=txt_mrkandno3.ClientId%>");
        var _txt_lineno = document.getElementById("<%=txt_lineno.ClientId%>");
        var _txt_suppaddress = document.getElementById("<%=txt_suppaddress.ClientId%>");
        var _txt_sellname = document.getElementById("<%=txt_sellname.ClientId%>");
        var _txt_sellcntry = document.getElementById("<%=txt_sellcntry.ClientId%>");
        var _txt_sellpin = document.getElementById("<%=txt_sellpin.ClientId%>");
        var _txt_selladdress = document.getElementById("<%=txt_selladdress.ClientId%>");
        var _txt_selladdress1 = document.getElementById("<%=txt_selladdress1.ClientId%>");
        var _txt_broname = document.getElementById("<%=txt_broname.ClientId%>");
        var _txt_brocntry = document.getElementById("<%=txt_brocntry.ClientId%>");
        var _txt_bropin = document.getElementById("<%=txt_bropin.ClientId%>");
        var _txt_broaddress = document.getElementById("<%=txt_broaddress.ClientId%>");
        var _txt_broaddress1 = document.getElementById("<%=txt_broaddress1.ClientId%>");
        var _ddl_lclorfcl = document.getElementById("<%=ddl_lclorfcl.ClientId%>");
        var _txt_contno = document.getElementById("<%=txt_contno.ClientId%>");
        var _txt_sealno = document.getElementById("<%=txt_sealno.ClientId%>");

        var _txt_invno = document.getElementById("<%=txt_invno.ClientId%>");
        var _txt_invdate = document.getElementById("<%=txt_invdate.ClientId%>");
        var _txt_invcurr = document.getElementById("<%=txt_invcurr.ClientId%>");
        var _txt_invamt = document.getElementById("<%=txt_invamt.ClientId%>");
        var _txt_invamtofitem = document.getElementById("<%=txt_invamtofitem.ClientId%>");


        //readonly controls
        var _txt_msgtype = document.getElementById("<%=txt_msgtype.ClientId%>");
        var _txt_custhcode = document.getElementById("<%=txt_custhcode.ClientId%>");
        var _txt_userjobno = document.getElementById("<%=txt_userjobno.ClientId%>");
        var _txt_userjobdate = document.getElementById("<%=txt_userjobdate.ClientId%>");
        var _txt_shipBEno = document.getElementById("<%=txt_shipBEno.ClientId%>");
        var _txt_shipBEdate = document.getElementById("<%=txt_shipBEdate.ClientId%>");
        var _txt_BEtype = document.getElementById("<%=txt_BEtype.ClientId%>");
        ItemGrid = new Array();
        InvoiceGrid = new Array();

        var _start_index = 0;
        var _rowPerPage = 2;


        function pageLoad() {
            try {
                invoicedetailsGridRow(i)
                CreateinvoiceGridTableRow(InvoiceGrid)
                additemdetailstoGridRow(i)
                CreateitemdetailsGridTableRow(ItemGrid)

            }
            catch (e)
            { }
        }

        function additemdetailstoGridRow(i) {
            try {
                if (ItemGrid[i] == null) {
                    ItemGrid[i] = { sl: "", Scheme_Code: "", RITC_Code: "", Goods_Desc: "", Quantity: "", UOM: "", Unit_Price: "", Amount: "", row_stat: "I", old_row_stat: "I" }
                }
                ItemGrid[i].Scheme_Code = "123";
                ItemGrid[i].RITC_Code = "456";
                ItemGrid[i].Goods_Desc = "desc"
                ItemGrid[i].Quantity = "1"
                ItemGrid[i].UOM = "m"
                ItemGrid[i].Unit_Price = "100"
                ItemGrid[i].Amount = "100"
                if (ItemGrid[i].sl == "") {
                    if (i - 1 != -1) {
                        ItemGrid[i].sl = "1"
                    } else {
                        ItemGrid[i].sl = ItemGrid.length;
                    }
                }
            }
            catch (e) {
                $.Toolbar.FlashMsg(e);
            }
        }
        function CreateitemdetailsGridTableRow(coll) {
            try {
                hdnquant = 0;
                statusflag = 0;
                $('#BTGrdTBody361').html("");
                var sl = _start_index + 1;
                var row = 0;
                totalPagesActvdet = coll.length
                var index = 0;
                if (totalPagesActvdet <= eval(_start_index + _rowPerPage)) {
                    index = eval(totalPagesActvdet - 1);
                } else {
                    index = eval(_start_index + _rowPerPage);
                }
                for (i = _start_index + 2; i <= index; i++) {
                    row++;
                    {
                        coll[i].sl = sl
                        if (i % 2 == 0) {
                            $("#BTGrdTBody361").append("<tr class='odd' ID=row" + i + "><td width='20px'><a href='#' onclick=gotoselect('" + i + "')>Select</a></td><td class='hidden-xs'>" + coll[i].sl + "</td><td class='hidden-xs'>" + coll[i].Scheme_Code + "</td><td class='hidden-xs'>" + coll[i].RITC_Code + "</td><td class='hidden-xs'>" + coll[i].Goods_Desc + "</td><td class='hidden-xs'>" + coll[i].Quantity + "</td><td class='hidden-xs'>" + coll[i].UOM + "</td><td class='hidden-xs'>" + coll[i].Unit_Price + "</td><td class='hidden-xs'>" + coll[i].Amount + "</td><td width='20px'><a href='#'ID='lblitem" + i + "'onclick=propgrid_gotoitemdetails('" + i + "')>Item</a></td><td width='20px'><a href='#'ID='lbldelete" + i + "'onclick=propgrid_gotodelete('" + i + "')>Delete</a></td></tr>");
                        } else {
                            $("#BTGrdTBody361").append("<tr class='odd' ID=row" + i + "><td width='20px'><a href='#' onclick=gotoselect('" + i + "')>Select</a></td><td class='hidden-xs'>" + coll[i].sl + "</td><td class='hidden-xs'>" + coll[i].Scheme_Code + "</td><td class='hidden-xs'>" + coll[i].RITC_Code + "</td><td class='hidden-xs'>" + coll[i].Goods_Desc + "</td><td class='hidden-xs'>" + coll[i].Quantity + "</td><td class='hidden-xs'>" + coll[i].UOM + "</td><td class='hidden-xs'>" + coll[i].Unit_Price + "</td><td class='hidden-xs'>" + coll[i].Amount + "</td><td width='20px'><a href='#'ID='lblitem" + i + "'onclick=propgrid_gotoitemdetails('" + i + "')>Item</a></td><td width='20px'><a href='#'ID='lbldelete" + i + "'onclick=propgrid_gotodelete('" + i + "')>Delete</a></td></tr>");
                        }
                        sl++;
                    }
                }
                hdnquant = i;
            } catch (e) {
            }
        }
        function invoicedetailsGridRow(i) {
            try {
                if (InvoiceGrid[i] == null) {
                    InvoiceGrid[i] = { sl: "", Invoice_No: "", Date: "", Currency: "", Invoice_Amt: "", Total_Amt_of_Items: "", row_stat: "I", old_row_stat: "I" }
                }
                InvoiceGrid[i].Invoice_No = "123";
                InvoiceGrid[i].Date = "12-01-2021";
                InvoiceGrid[i].Currency = "inr"
                InvoiceGrid[i].Invoice_Amt = "100"
                InvoiceGrid[i].Total_Amt_of_Items = "2"
                if (InvoiceGrid[i].sl == "") {
                    if (i - 1 != -1) {
                        InvoiceGrid[i].sl = "1"
                    } else {
                        InvoiceGrid[i].sl = InvoiceGrid.length;
                    }
                }
            }
            catch (e) {
                $.Toolbar.FlashMsg(e);
            }
        }
        function CreateinvoiceGridTableRow(coll) {
            try {
                hdnquant = 0;
                statusflag = 0;
                $('#BTGrdTBody23').html("");
                var sl = _start_index + 1;
                var row = 0;
                totalPagesActvdet = coll.length
                var index = 0;
                if (totalPagesActvdet <= eval(_start_index + _rowPerPage)) {
                    index = eval(totalPagesActvdet - 1);
                } else {
                    index = eval(_start_index + _rowPerPage);
                }
                for (i = _start_index + 1; i <= index; i++) {
                    row++;
                    {
                        coll[i].sl = sl
                        if (i % 2 == 0) {
                            $("#BTGrdTBody23").append("<tr class='odd' ID=row" + i + "><td width='20px'><a href='#' onclick=gotoselect('" + i + "')>Select</a></td><td class='hidden-xs'>" + coll[i].sl + "</td><td class='hidden-xs'>" + coll[i].Invoice_No + "</td><td class='hidden-xs'>" + coll[i].Date + "</td><td class='hidden-xs'>" + coll[i].Currency + "</td><td class='hidden-xs'>" + coll[i].Invoice_Amt + "</td><td class='hidden-xs'>" + coll[i].Total_Amt_of_Items + "</td><td width='20px'><a href='#'ID='lblitem" + i + "'onclick=propgrid_gotoitem('" + i + "')>Add Item</a></td><td width='20px'><a href='#'ID='lbldelete" + i + "'onclick=propgrid_gotodelete('" + i + "')>Delete</a></td></tr>");
                        } else {
                            $("#BTGrdTBody23").append("<tr class='odd' ID=row" + i + "><td width='20px'><a href='#' onclick=gotoselect('" + i + "')>Select</a></td><td class='hidden-xs'>" + coll[i].sl + "</td><td class='hidden-xs'>" + coll[i].Invoice_No + "</td><td class='hidden-xs'>" + coll[i].Date + "</td><td class='hidden-xs'>" + coll[i].Currency + "</td><td class='hidden-xs'>" + coll[i].Invoice_Amt + "</td><td class='hidden-xs'>" + coll[i].Total_Amt_of_Items + "</td><td width='20px'><a href='#'ID='lblitem" + i + "'onclick=propgrid_gotoitem('" + i + "')>Add Item</a></td><td width='20px'><a href='#'ID='lbldelete" + i + "'onclick=propgrid_gotodelete('" + i + "')>Delete</a></td></tr>");
                        }
                        sl++;
                    }
                }
                hdnquant = i;
            } catch (e) {
            }
        }
        function propgrid_gotoitemdetails(ret) {
            try {
                $('#additemtogrid').modal('hide');
                $('#itemdetailsgrid').modal('show');
            } catch (e) { }
        }
        function cancelitemdetailsgridCntrls() {
            try {
                $('#itemdetailsgrid').modal('hide');
                $('#additemtogrid').modal('show');
            } catch (e) { }

        }
        function propgrid_gotoitem(ret) {
            try {
                if (_ToolBarStatus == 'New' || _ToolBarStatus == 'Edit') {
                    InvoiceGrid[ret].row_stat = InvoiceGrid[ret].old_row_stat;
                    $("#row" + ret).css({ 'background-color': '' });
                    $('#additemtogrid').modal('show');
                } else {

                }
            }
            catch (e) { }
        }
        function gotoselect(ret) {
            try {
                if (InvoiceGrid[ret].row_stat != 'D') {
                    _txt_invno.value = InvoiceGrid[ret].Invoice_No;
                    _txt_invdate.value = InvoiceGrid[ret].Date;
                    _txt_invcurr.value = InvoiceGrid[ret].Currency;
                    _txt_invamt.value = InvoiceGrid[ret].Invoice_Amt;
                    _txt_invamtofitem.value = InvoiceGrid[ret].Total_Amt_of_Items;
                    selectFlag = 1;
                    $('#invoicedetailsgrid').modal('show');
                }
            } catch (e) { }
        }

        function NewButtonClick(sender, e, callback) {
            try {
                callback(true)

            }
            catch (e)
            { }
        }
        function Search(sender, e, mode) {
            try {
                var _param = "'" + _lblaeid.innerHTML + "'";
                CommonSearch("Fetch Document...", "SP_SEARCH" + _param + ", ", 'Doc. Upload Date-Time,Doc. Name ,Image Reference No.,Document Reference No,Document Type Code', '150,150,150,150,150', false, true, 'COMMON');
            } catch (e)
            { }
        }
        function Popupshowbtn_AddDoc() {
            try {
                $('#adddocgrid').modal('show');
            }
            catch (e) {
            }
        }
        function PopupshowDeclarationStat() {
            try {
                $('#Declarationstatgrid').modal('show');
            }
            catch (e) {
            }
        }
        function PopupshowControl() {
            try {
                $('#Controlgrid').modal('show');
            }
            catch (e) {
            }
        }

        function PopupshowProduction() {
            try {
                $('#productiongrid').modal('show');
            }
            catch (e) {
            }
        }
        function PopupshowConstituent() {
            try {
                $('#constituentgrid').modal('show');
            }
            catch (e) {
            }
        }

        function PopupshowInfo() {
            try {
                $('#infogrid').modal('show');
            }
            catch (e) {
            }
        }
        function PopupshowAddItemWiseDetailsToGrid() {
            try {
                $('#additemtogrid').modal('hide');
                $('#itemwisedetailsgrid').modal('show');
            }
            catch (e) {
            }
        }

        function canceladddocgridCntrls() {
            try {
                $('#adddocgrid').modal('hide');
            }
            catch (e) { }
        }
        function cancelDeclarationstatgridCntrls() {
            try {
                $('#Declarationstatgrid').modal('hide');
            }
            catch (e) { }
        }
        function cancelControlgridCntrls() {
            try {
                $('#Controlgrid').modal('hide');
            }
            catch (e) { }
        }
        function cancelitemwisedetailsgridCntrls() {
            try {
                $('#additemtogrid').modal('show');
                $('#itemwisedetailsgrid').modal('hide');
            }
            catch (e) { }
        }
        function PopupshowContainer() {
            try {
                $('#containergrid').modal('show');
            }
            catch (e) {
            }
        }
        function Popupshowlicence() {
            try {
                $('#licencegrid').modal('show');
            }
            catch (e) {
            }
        }
        function PopupshowCustomsDuty() {
            try {
                $('#customsdutygrid').modal('show');
            }
            catch (e) {
            }
        }
        function PopupshowExciseDuty() {
            try {
                $('#excisedutygrid').modal('show');
            }
            catch (e) {
            }
        }

        function PopupshowaddReimportgrid() {
            try {
                $('#reimportgrid').modal('show');
            }
            catch (e) {
            }
        }

        function Popupshowinvoicedet() {
            try {
                $('#invoicedetailsgrid').modal('show');
            }
            catch (e) {
            }
        }

        function PopupshowCertificate() {
            try {
                $('#certificategrid').modal('show');
            }
            catch (e) {
            }
        }

        function PopupshowBond() {
            try {
                $('#bondgrid').modal('show');
            }
            catch (e) {
            }
        }

        function PopupshowAddItemToGrid() {
            try {
                $('#additemtogrid').modal('show');
            }
            catch (e) {
            }
        }

        function cancelproductiongridCntrls() {
            try {
                $('#productiongrid').modal('hide');
            }
            catch (e) { }
        }
        function cancelconstituentgridCntrls() {
            try {
                $('#constituentgrid').modal('hide');
            }
            catch (e) { }
        }

        function cancelinfogridCntrls() {
            try {
                $('#infogrid').modal('hide');
            }
            catch (e) { }
        }
        function canceladditemtogridCntrls() {
            try {
                $('#additemtogrid').modal('hide');
            }
            catch (e) { }
        }
        function cancelbondgridCntrls() {
            try {
                $('#bondgrid').modal('hide');
            }
            catch (e) { }
        }
        function cancelcertificategridCntrls() {
            try {
                $('#certificategrid').modal('hide');
            }
            catch (e) { }
        }
        function cancelDetailsGridCntrls() {
            try {
                $('#containergrid').modal('hide');
            }
            catch (e) { }
        }
        function cancellicenceGridCntrls() {
            try {
                $('#licencegrid').modal('hide');
            }
            catch (e) { }
        }

        function cancelcustomsdutygridGridCntrls() {
            try {
                $('#customsdutygrid').modal('hide');
            }
            catch (e) { }
        }
        function cancelexcisedutygridGridCntrls() {
            try {
                $('#excisedutygrid').modal('hide');
            }
            catch (e) { }
        }

        function cancelreimportgridGridCntrls() {
            try {
                $('#reimportgrid').modal('hide');
            }
            catch (e) { }
        }

        function cancelinvoicedetailsgridCntrls() {
            try {
                $('#invoicedetailsgrid').modal('hide');
            }
            catch (e) { }
        }
    </script>
</asp:Content>

