void FigS4()
{
    TColor* col4 = gROOT->GetColor(95);
    col4->SetRGB(0.1725, 0.4824, 0.7137);
    TColor* col6 = gROOT->GetColor(97);
    col6->SetRGB(94/255., 186/255., 83/255.);

//=========Macro generated from canvas: cRK/cRK
//=========  (Fri Mar 19 08:25:15 2021) by ROOT version 6.18/04
   TCanvas *cRK = new TCanvas("cRK", "cRK",0,45,800,600);
   gStyle->SetOptStat(0);
   gStyle->SetOptTitle(0);
   cRK->Range(-4.065133,-0.4050633,24.97153,2.126582);
   cRK->SetFillColor(0);
   cRK->SetBorderMode(0);
   cRK->SetBorderSize(2);
   cRK->SetLeftMargin(0.14);
   cRK->SetRightMargin(0.05);
   cRK->SetTopMargin(0.05);
   cRK->SetBottomMargin(0.16);
   cRK->SetFrameLineWidth(2);
   cRK->SetFrameBorderMode(0);
   cRK->SetFrameLineWidth(2);
   cRK->SetFrameBorderMode(0);
   
   Double_t Graph0_fx3001[2] = {
   4.11,
   16.555};
   Double_t Graph0_fy3001[2] = {
   0.74,
   1.43};
   Double_t Graph0_felx3001[2] = {
   4.01,
   6.445};
   Double_t Graph0_fely3001[2] = {
   0.3157531,
   0.4560702};
   Double_t Graph0_fehx3001[2] = {
   4.01,
   6.445};
   Double_t Graph0_fehy3001[2] = {
   0.404475,
   0.6609841};
   TGraphAsymmErrors *grae = new TGraphAsymmErrors(2,Graph0_fx3001,Graph0_fy3001,Graph0_felx3001,Graph0_fehx3001,Graph0_fely3001,Graph0_fehy3001);
   grae->SetName("Graph0");
   grae->SetTitle("Graph");
   grae->SetFillStyle(1000);
   grae->SetLineColor(97);
   grae->SetLineWidth(2);
   grae->SetMarkerColor(97);
   grae->SetMarkerStyle(21);
   grae->SetMarkerSize(1.3);
   
   TH1F *Graph_Graph03001 = new TH1F("Graph_Graph03001","Graph",100,0,25.29);
   Graph_Graph03001->SetMinimum(0);
   Graph_Graph03001->SetMaximum(2);
   Graph_Graph03001->SetDirectory(0);
   Graph_Graph03001->SetStats(0);
   Graph_Graph03001->SetLineWidth(2);
   Graph_Graph03001->SetMarkerStyle(20);
   Graph_Graph03001->GetXaxis()->SetTitle("#it{q^{2}} [GeV^{2}/#it{c}^{4}]");
   Graph_Graph03001->GetXaxis()->SetRange(1,93);
   Graph_Graph03001->GetXaxis()->SetNdivisions(505);
   Graph_Graph03001->GetXaxis()->SetLabelFont(132);
   Graph_Graph03001->GetXaxis()->SetLabelOffset(0.01);
   Graph_Graph03001->GetXaxis()->SetLabelSize(0.06);
   Graph_Graph03001->GetXaxis()->SetTitleSize(0.072);
   Graph_Graph03001->GetXaxis()->SetTitleOffset(0.95);
   Graph_Graph03001->GetXaxis()->SetTitleFont(132);
   Graph_Graph03001->GetYaxis()->SetTitle("#it{R_{K}}");
   Graph_Graph03001->GetYaxis()->SetDecimals();
   Graph_Graph03001->GetYaxis()->SetNdivisions(505);
   Graph_Graph03001->GetYaxis()->SetLabelFont(132);
   Graph_Graph03001->GetYaxis()->SetLabelOffset(0.01);
   Graph_Graph03001->GetYaxis()->SetLabelSize(0.06);
   Graph_Graph03001->GetYaxis()->SetTitleSize(0.072);
   Graph_Graph03001->GetYaxis()->SetTitleOffset(0.95);
   Graph_Graph03001->GetYaxis()->SetTitleFont(132);
   Graph_Graph03001->GetZaxis()->SetLabelFont(132);
   Graph_Graph03001->GetZaxis()->SetLabelSize(0.06);
   Graph_Graph03001->GetZaxis()->SetTitleSize(0.072);
   Graph_Graph03001->GetZaxis()->SetTitleOffset(1.2);
   Graph_Graph03001->GetZaxis()->SetTitleFont(132);
   grae->SetHistogram(Graph_Graph03001);
   
   grae->Draw("ap");
   
   Double_t Graph1_fx3002[4] = {
   2.05,
   6.06,
   11.5,
   19.09};
   Double_t Graph1_fy3002[4] = {
   1.01,
   0.85,
   1.97,
   1.16};
   Double_t Graph1_felx3002[4] = {
   1.95,
   2.06,
   1.3,
   4.91};
   Double_t Graph1_fely3002[4] = {
   0.2507987,
   0.2402082,
   0.8902247,
   0.2701851};
   Double_t Graph1_fehx3002[4] = {
   1.95,
   2.06,
   1.3,
   4.91};
   Double_t Graph1_fehy3002[4] = {
   0.2807134,
   0.3001666,
   1.030194,
   0.3001666};
   grae = new TGraphAsymmErrors(4,Graph1_fx3002,Graph1_fy3002,Graph1_felx3002,Graph1_fehx3002,Graph1_fely3002,Graph1_fehy3002);
   grae->SetName("Graph1");
   grae->SetTitle("Graph");
   grae->SetFillStyle(1000);
   grae->SetLineColor(95);
   grae->SetLineWidth(2);
   grae->SetMarkerColor(95);
   grae->SetMarkerStyle(22);
   grae->SetMarkerSize(1.3);
   
   TH1F *Graph_Graph13002 = new TH1F("Graph_Graph13002","Graph",100,0,26.39);
   Graph_Graph13002->SetMinimum(0.3707515);
   Graph_Graph13002->SetMaximum(3.239234);
   Graph_Graph13002->SetDirectory(0);
   Graph_Graph13002->SetStats(0);
   Graph_Graph13002->SetLineWidth(2);
   Graph_Graph13002->SetMarkerStyle(20);
   Graph_Graph13002->GetXaxis()->SetNdivisions(505);
   Graph_Graph13002->GetXaxis()->SetLabelFont(132);
   Graph_Graph13002->GetXaxis()->SetLabelOffset(0.01);
   Graph_Graph13002->GetXaxis()->SetLabelSize(0.06);
   Graph_Graph13002->GetXaxis()->SetTitleSize(0.072);
   Graph_Graph13002->GetXaxis()->SetTitleOffset(0.95);
   Graph_Graph13002->GetXaxis()->SetTitleFont(132);
   Graph_Graph13002->GetYaxis()->SetLabelFont(132);
   Graph_Graph13002->GetYaxis()->SetLabelOffset(0.01);
   Graph_Graph13002->GetYaxis()->SetLabelSize(0.06);
   Graph_Graph13002->GetYaxis()->SetTitleSize(0.072);
   Graph_Graph13002->GetYaxis()->SetTitleOffset(0.95);
   Graph_Graph13002->GetYaxis()->SetTitleFont(132);
   Graph_Graph13002->GetZaxis()->SetLabelFont(132);
   Graph_Graph13002->GetZaxis()->SetLabelSize(0.06);
   Graph_Graph13002->GetZaxis()->SetTitleSize(0.072);
   Graph_Graph13002->GetZaxis()->SetTitleOffset(1.2);
   Graph_Graph13002->GetZaxis()->SetTitleFont(132);
   grae->SetHistogram(Graph_Graph13002);
   
   grae->Draw("p");
   
   Double_t Graph2_fx3003[1] = {
   3.55};
   Double_t Graph2_fy3003[1] = {
   0.846};
   Double_t Graph2_felx3003[1] = {
   2.45};
   Double_t Graph2_fely3003[1] = {
   0.0557853};
   Double_t Graph2_fehx3003[1] = {
   2.45};
   Double_t Graph2_fehy3003[1] = {
   0.0620967};
   grae = new TGraphAsymmErrors(1,Graph2_fx3003,Graph2_fy3003,Graph2_felx3003,Graph2_fehx3003,Graph2_fely3003,Graph2_fehy3003);
   grae->SetName("Graph2");
   grae->SetTitle("Graph");
   grae->SetFillStyle(1000);
   grae->SetLineColor(16);
   grae->SetLineWidth(2);
   grae->SetMarkerColor(16);
   grae->SetMarkerStyle(23);
   grae->SetMarkerSize(1.3);
   
   TH1F *Graph_Graph23003 = new TH1F("Graph_Graph23003","Graph",100,0.61,6.49);
   Graph_Graph23003->SetMinimum(0.7784265);
   Graph_Graph23003->SetMaximum(0.9198849);
   Graph_Graph23003->SetDirectory(0);
   Graph_Graph23003->SetStats(0);
   Graph_Graph23003->SetLineWidth(2);
   Graph_Graph23003->SetMarkerStyle(20);
   Graph_Graph23003->GetXaxis()->SetNdivisions(505);
   Graph_Graph23003->GetXaxis()->SetLabelFont(132);
   Graph_Graph23003->GetXaxis()->SetLabelOffset(0.01);
   Graph_Graph23003->GetXaxis()->SetLabelSize(0.06);
   Graph_Graph23003->GetXaxis()->SetTitleSize(0.072);
   Graph_Graph23003->GetXaxis()->SetTitleOffset(0.95);
   Graph_Graph23003->GetXaxis()->SetTitleFont(132);
   Graph_Graph23003->GetYaxis()->SetLabelFont(132);
   Graph_Graph23003->GetYaxis()->SetLabelOffset(0.01);
   Graph_Graph23003->GetYaxis()->SetLabelSize(0.06);
   Graph_Graph23003->GetYaxis()->SetTitleSize(0.072);
   Graph_Graph23003->GetYaxis()->SetTitleOffset(0.95);
   Graph_Graph23003->GetYaxis()->SetTitleFont(132);
   Graph_Graph23003->GetZaxis()->SetLabelFont(132);
   Graph_Graph23003->GetZaxis()->SetLabelSize(0.06);
   Graph_Graph23003->GetZaxis()->SetTitleSize(0.072);
   Graph_Graph23003->GetZaxis()->SetTitleOffset(1.2);
   Graph_Graph23003->GetZaxis()->SetTitleFont(132);
   grae->SetHistogram(Graph_Graph23003);
   
   grae->Draw("p");
   
   Double_t Graph3_fx3004[1] = {
   3.55};
   Double_t Graph3_fy3004[1] = {
   0.846};
   Double_t Graph3_felx3004[1] = {
   2.45};
   Double_t Graph3_fely3004[1] = {
   0.04080441};
   Double_t Graph3_fehx3004[1] = {
   2.45};
   Double_t Graph3_fehy3004[1] = {
   0.0439659};
   grae = new TGraphAsymmErrors(1,Graph3_fx3004,Graph3_fy3004,Graph3_felx3004,Graph3_fehx3004,Graph3_fely3004,Graph3_fehy3004);
   grae->SetName("Graph3");
   grae->SetTitle("Graph");
   grae->SetFillStyle(1000);
   grae->SetLineWidth(2);
   grae->SetMarkerStyle(20);
   grae->SetMarkerSize(1.3);
   
   TH1F *Graph_Graph33004 = new TH1F("Graph_Graph33004","Graph",100,0.61,6.49);
   Graph_Graph33004->SetMinimum(0.7967186);
   Graph_Graph33004->SetMaximum(0.8984429);
   Graph_Graph33004->SetDirectory(0);
   Graph_Graph33004->SetStats(0);
   Graph_Graph33004->SetLineWidth(2);
   Graph_Graph33004->SetMarkerStyle(20);
   Graph_Graph33004->GetXaxis()->SetNdivisions(505);
   Graph_Graph33004->GetXaxis()->SetLabelFont(132);
   Graph_Graph33004->GetXaxis()->SetLabelOffset(0.01);
   Graph_Graph33004->GetXaxis()->SetLabelSize(0.06);
   Graph_Graph33004->GetXaxis()->SetTitleSize(0.072);
   Graph_Graph33004->GetXaxis()->SetTitleOffset(0.95);
   Graph_Graph33004->GetXaxis()->SetTitleFont(132);
   Graph_Graph33004->GetYaxis()->SetLabelFont(132);
   Graph_Graph33004->GetYaxis()->SetLabelOffset(0.01);
   Graph_Graph33004->GetYaxis()->SetLabelSize(0.06);
   Graph_Graph33004->GetYaxis()->SetTitleSize(0.072);
   Graph_Graph33004->GetYaxis()->SetTitleOffset(0.95);
   Graph_Graph33004->GetYaxis()->SetTitleFont(132);
   Graph_Graph33004->GetZaxis()->SetLabelFont(132);
   Graph_Graph33004->GetZaxis()->SetLabelSize(0.06);
   Graph_Graph33004->GetZaxis()->SetTitleSize(0.072);
   Graph_Graph33004->GetZaxis()->SetTitleOffset(1.2);
   Graph_Graph33004->GetZaxis()->SetTitleFont(132);
   grae->SetHistogram(Graph_Graph33004);
   
   grae->Draw("p");
   TLine *line = new TLine(0,1,23.5,1);
   line->SetLineStyle(2);
   line->SetLineWidth(2);
   line->Draw();
   
   TLegend *leg = new TLegend(0.612782,0.252174,0.904762,0.464348,NULL,"brNDC");
   leg->SetBorderSize(0);
   leg->SetTextFont(132);
   leg->SetTextSize(0.0486957);
   leg->SetLineColor(1);
   leg->SetLineStyle(1);
   leg->SetLineWidth(2);
   leg->SetFillColor(0);
   leg->SetFillStyle(1001);
   TLegendEntry *entry=leg->AddEntry("Graph0","BaBar","p");
   entry->SetLineColor(1);
   entry->SetLineStyle(1);
   entry->SetLineWidth(1);
   entry->SetMarkerColor(97);
   entry->SetMarkerStyle(21);
   entry->SetMarkerSize(1.3);
   entry->SetTextFont(132);
   entry=leg->AddEntry("Graph1","Belle","p");
   entry->SetLineColor(1);
   entry->SetLineStyle(1);
   entry->SetLineWidth(1);
   entry->SetMarkerColor(95);
   entry->SetMarkerStyle(22);
   entry->SetMarkerSize(1.3);
   entry->SetTextFont(132);
   entry=leg->AddEntry("Graph2","#color[16]{LHCb 5 fb^{-1}}","p");
   entry->SetLineColor(1);
   entry->SetLineStyle(1);
   entry->SetLineWidth(1);
   entry->SetMarkerColor(16);
   entry->SetMarkerStyle(23);
   entry->SetMarkerSize(1.3);
   entry->SetTextFont(132);
   entry=leg->AddEntry("Graph3","LHCb 9 fb^{-1}","p");
   entry->SetLineColor(1);
   entry->SetLineStyle(1);
   entry->SetLineWidth(1);
   entry->SetMarkerColor(1);
   entry->SetMarkerStyle(20);
   entry->SetMarkerSize(1.3);
   entry->SetTextFont(132);
   leg->Draw();
   
   TPaveText *pt = new TPaveText(0.22,0.8,0.44,0.91,"BRNDC");
   pt->SetBorderSize(0);
   pt->SetFillColor(0);
   pt->SetLineWidth(2);
   pt->SetTextAlign(12);
   pt->SetTextFont(132);
   TText *pt_LaTex = pt->AddText("LHCb");
   pt->Draw();
   cRK->Modified();
   cRK->cd();
   cRK->SetSelected(cRK);
}
