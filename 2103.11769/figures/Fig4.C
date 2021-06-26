void RK2021_column()
{
//=========Macro generated from canvas: cRKp/cRKp
//=========  (Thu Mar 18 18:28:15 2021) by ROOT version 6.22/06
   TCanvas *cRKp = new TCanvas("cRKp", "cRKp",2240,45,800,600);
   gStyle->SetOptFit(1);
   gStyle->SetOptStat(0);
   gStyle->SetOptTitle(0);
   cRKp->Range(0.3756122,-1.248101,1.814388,2.802532);
   cRKp->SetFillColor(0);
   cRKp->SetBorderMode(0);
   cRKp->SetBorderSize(2);
   cRKp->SetTickx(1);
   cRKp->SetTicky(1);
   cRKp->SetLeftMargin(0.01);
   cRKp->SetRightMargin(0.01);
   cRKp->SetTopMargin(0.05);
   cRKp->SetBottomMargin(0.16);
   cRKp->SetFrameLineWidth(3);
   cRKp->SetFrameBorderMode(0);
   cRKp->SetFrameLineWidth(3);
   cRKp->SetFrameBorderMode(0);
   
   TH2D *foo__1 = new TH2D("foo__1","foo",1,0.39,1.8,4,-0.6,2.6);
   foo__1->SetLineWidth(3);
   foo__1->SetMarkerStyle(8);
   foo__1->SetMarkerSize(1.2);
   foo__1->GetXaxis()->SetTitle("#it{R_{K}}");
   foo__1->GetXaxis()->SetNdivisions(505);
   foo__1->GetXaxis()->SetLabelFont(133);
   foo__1->GetXaxis()->SetLabelOffset(0.015);
   foo__1->GetXaxis()->SetLabelSize(33);
   foo__1->GetXaxis()->SetTitleSize(33);
   foo__1->GetXaxis()->SetTitleOffset(1);
   foo__1->GetXaxis()->SetTitleFont(133);
   foo__1->GetYaxis()->SetNdivisions(505);
   foo__1->GetYaxis()->SetLabelFont(133);
   foo__1->GetYaxis()->SetLabelSize(0);
   foo__1->GetYaxis()->SetTitleSize(33);
   foo__1->GetYaxis()->SetTickLength(0);
   foo__1->GetYaxis()->SetTitleFont(133);
   foo__1->GetZaxis()->SetLabelFont(133);
   foo__1->GetZaxis()->SetLabelSize(33);
   foo__1->GetZaxis()->SetTitleSize(33);
   foo__1->GetZaxis()->SetTitleOffset(1);
   foo__1->GetZaxis()->SetTitleFont(133);
   foo__1->Draw("");
   TLine *line = new TLine(1,-0.6,1,2.6);
   line->SetLineStyle(2);
   line->SetLineWidth(3);
   line->Draw();
   
   Double_t p_oldRK_fx3001[1] = {
   0.846};
   Double_t p_oldRK_fy3001[1] = {
   0};
   Double_t p_oldRK_felx3001[1] = {
   0.04080441};
   Double_t p_oldRK_fely3001[1] = {
   0};
   Double_t p_oldRK_fehx3001[1] = {
   0.0439659};
   Double_t p_oldRK_fehy3001[1] = {
   0};
   TGraphAsymmErrors *grae = new TGraphAsymmErrors(1,p_oldRK_fx3001,p_oldRK_fy3001,p_oldRK_felx3001,p_oldRK_fehx3001,p_oldRK_fely3001,p_oldRK_fehy3001);
   grae->SetName("p_oldRK");
   grae->SetTitle("Graph");
   grae->SetFillStyle(1000);
   grae->SetLineWidth(3);
   grae->SetMarkerStyle(8);
   grae->SetMarkerSize(1.5);
   
   TH1F *Graph_p_oldRK3001 = new TH1F("Graph_p_oldRK3001","Graph",100,0.7967186,0.8984429);
   Graph_p_oldRK3001->SetMinimum(0);
   Graph_p_oldRK3001->SetMaximum(1.1);
   Graph_p_oldRK3001->SetDirectory(0);
   Graph_p_oldRK3001->SetStats(0);
   Graph_p_oldRK3001->SetLineWidth(3);
   Graph_p_oldRK3001->SetMarkerStyle(8);
   Graph_p_oldRK3001->SetMarkerSize(1.2);
   Graph_p_oldRK3001->GetXaxis()->SetNdivisions(505);
   Graph_p_oldRK3001->GetXaxis()->SetLabelFont(133);
   Graph_p_oldRK3001->GetXaxis()->SetLabelOffset(0.015);
   Graph_p_oldRK3001->GetXaxis()->SetLabelSize(33);
   Graph_p_oldRK3001->GetXaxis()->SetTitleSize(33);
   Graph_p_oldRK3001->GetXaxis()->SetTitleOffset(1);
   Graph_p_oldRK3001->GetXaxis()->SetTitleFont(133);
   Graph_p_oldRK3001->GetYaxis()->SetNdivisions(505);
   Graph_p_oldRK3001->GetYaxis()->SetLabelFont(133);
   Graph_p_oldRK3001->GetYaxis()->SetLabelSize(33);
   Graph_p_oldRK3001->GetYaxis()->SetTitleSize(33);
   Graph_p_oldRK3001->GetYaxis()->SetTitleFont(133);
   Graph_p_oldRK3001->GetZaxis()->SetLabelFont(133);
   Graph_p_oldRK3001->GetZaxis()->SetLabelSize(33);
   Graph_p_oldRK3001->GetZaxis()->SetTitleSize(33);
   Graph_p_oldRK3001->GetZaxis()->SetTitleOffset(1);
   Graph_p_oldRK3001->GetZaxis()->SetTitleFont(133);
   grae->SetHistogram(Graph_p_oldRK3001);
   
   grae->Draw("p");
   
   Double_t p_belleRK_fx3002[2] = {
   6.953128e-310,
   1.03};
   Double_t p_belleRK_fy3002[2] = {
   6.953128e-310,
   1};
   Double_t p_belleRK_felx3002[2] = {
   6.953128e-310,
   0.2402082};
   Double_t p_belleRK_fely3002[2] = {
   6.953128e-310,
   0};
   Double_t p_belleRK_fehx3002[2] = {
   6.931795e-310,
   0.2801785};
   Double_t p_belleRK_fehy3002[2] = {
   6.931795e-310,
   0};
   grae = new TGraphAsymmErrors(2,p_belleRK_fx3002,p_belleRK_fy3002,p_belleRK_felx3002,p_belleRK_fehx3002,p_belleRK_fely3002,p_belleRK_fehy3002);
   grae->SetName("p_belleRK");
   grae->SetTitle("Graph");
   grae->SetFillStyle(1000);

   Int_t ci;      // for color index setting
   TColor *color; // for color definition with alpha
   ci = TColor::GetColor("#3366ff");
   grae->SetLineColor(ci);
   grae->SetLineWidth(3);

   ci = TColor::GetColor("#3366ff");
   grae->SetMarkerColor(ci);
   grae->SetMarkerStyle(22);
   grae->SetMarkerSize(1.5);
   
   TH1F *Graph_p_belleRK3002 = new TH1F("Graph_p_belleRK3002","Graph",100,0,1.441196);
   Graph_p_belleRK3002->SetMinimum(2.124482e-322);
   Graph_p_belleRK3002->SetMaximum(1.1);
   Graph_p_belleRK3002->SetDirectory(0);
   Graph_p_belleRK3002->SetStats(0);
   Graph_p_belleRK3002->SetLineWidth(3);
   Graph_p_belleRK3002->SetMarkerStyle(8);
   Graph_p_belleRK3002->SetMarkerSize(1.2);
   Graph_p_belleRK3002->GetXaxis()->SetNdivisions(505);
   Graph_p_belleRK3002->GetXaxis()->SetLabelFont(133);
   Graph_p_belleRK3002->GetXaxis()->SetLabelOffset(0.015);
   Graph_p_belleRK3002->GetXaxis()->SetLabelSize(33);
   Graph_p_belleRK3002->GetXaxis()->SetTitleSize(33);
   Graph_p_belleRK3002->GetXaxis()->SetTitleOffset(1);
   Graph_p_belleRK3002->GetXaxis()->SetTitleFont(133);
   Graph_p_belleRK3002->GetYaxis()->SetNdivisions(505);
   Graph_p_belleRK3002->GetYaxis()->SetLabelFont(133);
   Graph_p_belleRK3002->GetYaxis()->SetLabelSize(33);
   Graph_p_belleRK3002->GetYaxis()->SetTitleSize(33);
   Graph_p_belleRK3002->GetYaxis()->SetTitleFont(133);
   Graph_p_belleRK3002->GetZaxis()->SetLabelFont(133);
   Graph_p_belleRK3002->GetZaxis()->SetLabelSize(33);
   Graph_p_belleRK3002->GetZaxis()->SetTitleSize(33);
   Graph_p_belleRK3002->GetZaxis()->SetTitleOffset(1);
   Graph_p_belleRK3002->GetZaxis()->SetTitleFont(133);
   grae->SetHistogram(Graph_p_belleRK3002);
   
   grae->Draw("p");
   
   Double_t p_babarRK_fx3003[3] = {
   6.953128e-310,
   2.003894,
   0.74};
   Double_t p_babarRK_fy3003[3] = {
   6.953128e-310,
   -2.320351e+77,
   2};
   Double_t p_babarRK_felx3003[3] = {
   6.953128e-310,
   0,
   0.3157531};
   Double_t p_babarRK_fely3003[3] = {
   6.953128e-310,
   0,
   0};
   Double_t p_babarRK_fehx3003[3] = {
   6.931795e-310,
   0,
   0.404475};
   Double_t p_babarRK_fehy3003[3] = {
   6.931795e-310,
   0,
   0};
   grae = new TGraphAsymmErrors(3,p_babarRK_fx3003,p_babarRK_fy3003,p_babarRK_felx3003,p_babarRK_fehx3003,p_babarRK_fely3003,p_babarRK_fehy3003);
   grae->SetName("p_babarRK");
   grae->SetTitle("Graph");
   grae->SetFillStyle(1000);

   ci = TColor::GetColor("#009900");
   grae->SetLineColor(ci);
   grae->SetLineWidth(3);

   ci = TColor::GetColor("#009900");
   grae->SetMarkerColor(ci);
   grae->SetMarkerStyle(21);
   grae->SetMarkerSize(1.5);
   
   TH1F *Graph_p_babarRK3003 = new TH1F("Graph_p_babarRK3003","Graph",100,0,2.204284);
   Graph_p_babarRK3003->SetMinimum(-2.552386e+77);
   Graph_p_babarRK3003->SetMaximum(2.320351e+76);
   Graph_p_babarRK3003->SetDirectory(0);
   Graph_p_babarRK3003->SetStats(0);
   Graph_p_babarRK3003->SetLineWidth(3);
   Graph_p_babarRK3003->SetMarkerStyle(8);
   Graph_p_babarRK3003->SetMarkerSize(1.2);
   Graph_p_babarRK3003->GetXaxis()->SetNdivisions(505);
   Graph_p_babarRK3003->GetXaxis()->SetLabelFont(133);
   Graph_p_babarRK3003->GetXaxis()->SetLabelOffset(0.015);
   Graph_p_babarRK3003->GetXaxis()->SetLabelSize(33);
   Graph_p_babarRK3003->GetXaxis()->SetTitleSize(33);
   Graph_p_babarRK3003->GetXaxis()->SetTitleOffset(1);
   Graph_p_babarRK3003->GetXaxis()->SetTitleFont(133);
   Graph_p_babarRK3003->GetYaxis()->SetNdivisions(505);
   Graph_p_babarRK3003->GetYaxis()->SetLabelFont(133);
   Graph_p_babarRK3003->GetYaxis()->SetLabelSize(33);
   Graph_p_babarRK3003->GetYaxis()->SetTitleSize(33);
   Graph_p_babarRK3003->GetYaxis()->SetTitleFont(133);
   Graph_p_babarRK3003->GetZaxis()->SetLabelFont(133);
   Graph_p_babarRK3003->GetZaxis()->SetLabelSize(33);
   Graph_p_babarRK3003->GetZaxis()->SetTitleSize(33);
   Graph_p_babarRK3003->GetZaxis()->SetTitleOffset(1);
   Graph_p_babarRK3003->GetZaxis()->SetTitleFont(133);
   grae->SetHistogram(Graph_p_babarRK3003);
   
   grae->Draw("p");
   TLatex *   tex = new TLatex(1.36,0,"LHCb 9 fb^{-1}");
   tex->SetTextFont(133);
   tex->SetTextSize(35);
   tex->SetLineWidth(2);
   tex->Draw();
      tex = new TLatex(1.36,-0.2,"1.1 < #it{q}^{2} < 6.0 GeV^{2}/#it{c}^{4}");
   tex->SetTextFont(133);
   tex->SetTextSize(26);
   tex->SetLineWidth(2);
   tex->Draw();
      tex = new TLatex(1.36,1,"Belle");
   tex->SetTextFont(133);
   tex->SetTextSize(35);
   tex->SetLineWidth(2);
   tex->Draw();
      tex = new TLatex(1.36,0.8,"1.0 < #it{q}^{2} < 6.0 GeV^{2}/#it{c}^{4}");
   tex->SetTextFont(133);
   tex->SetTextSize(26);
   tex->SetLineWidth(2);
   tex->Draw();
      tex = new TLatex(1.36,2,"BaBar");
   tex->SetTextFont(133);
   tex->SetTextSize(35);
   tex->SetLineWidth(2);
   tex->Draw();
      tex = new TLatex(1.36,1.8,"0.1 < #it{q}^{2} < 8.12 GeV^{2}/#it{c}^{4}");
   tex->SetTextFont(133);
   tex->SetTextSize(26);
   tex->SetLineWidth(2);
   tex->Draw();
   cRKp->Modified();
   cRKp->cd();
   cRKp->SetSelected(cRKp);
}
