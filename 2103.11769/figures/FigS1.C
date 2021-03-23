void FigS1()
{
//=========Macro generated from canvas: c1/c1
//=========  (Thu Mar 18 20:05:13 2021) by ROOT version 6.18/04
   TCanvas *c1 = new TCanvas("c1", "c1",10,45,700,500);
   gStyle->SetOptStat(0);
   gStyle->SetOptTitle(0);
   c1->SetHighLightColor(2);
   c1->Range(-3.975309,-1.113924,24.41975,5.848101);
   c1->SetFillColor(0);
   c1->SetBorderMode(0);
   c1->SetBorderSize(2);
   c1->SetTickx(1);
   c1->SetTicky(1);
   c1->SetLeftMargin(0.14);
   c1->SetRightMargin(0.05);
   c1->SetTopMargin(0.05);
   c1->SetBottomMargin(0.16);
   c1->SetFrameLineWidth(2);
   c1->SetFrameBorderMode(0);
   c1->SetFrameLineWidth(2);
   c1->SetFrameBorderMode(0);
   
   TH1D *hKmm__1 = new TH1D("hKmm__1","hKmm",1,0,23);
   hKmm__1->SetMaximum(5.5);
   hKmm__1->SetStats(0);
   hKmm__1->SetLineWidth(2);
   hKmm__1->SetMarkerStyle(20);
   hKmm__1->GetXaxis()->SetTitle("#font[12]{q}^{2} [GeV^{2}/#font[12]{c}^{4}]");
   hKmm__1->GetXaxis()->SetNdivisions(505);
   hKmm__1->GetXaxis()->SetLabelFont(132);
   hKmm__1->GetXaxis()->SetLabelOffset(0.01);
   hKmm__1->GetXaxis()->SetLabelSize(0.06);
   hKmm__1->GetXaxis()->SetTitleSize(0.072);
   hKmm__1->GetXaxis()->SetTitleOffset(0.95);
   hKmm__1->GetXaxis()->SetTitleFont(132);
   hKmm__1->GetYaxis()->SetTitle("Decay prob. [10^{-8} #times #font[12]{c}^{4}/GeV^{2}]");
   hKmm__1->GetYaxis()->SetLabelFont(132);
   hKmm__1->GetYaxis()->SetLabelOffset(0.01);
   hKmm__1->GetYaxis()->SetLabelSize(0.06);
   hKmm__1->GetYaxis()->SetTitleSize(0.072);
   hKmm__1->GetYaxis()->SetTitleOffset(0.8);
   hKmm__1->GetYaxis()->SetTitleFont(132);
   hKmm__1->GetZaxis()->SetLabelFont(132);
   hKmm__1->GetZaxis()->SetLabelSize(0.06);
   hKmm__1->GetZaxis()->SetTitleSize(0.072);
   hKmm__1->GetZaxis()->SetTitleOffset(1.2);
   hKmm__1->GetZaxis()->SetTitleFont(132);
   hKmm__1->Draw("");
   
   TH1D *kmm_pred_low__2 = new TH1D("kmm_pred_low__2","kmm_pred_low",1,1.1,6);
   kmm_pred_low__2->SetBinContent(1,3.565306);
   kmm_pred_low__2->SetBinError(1,0.6244898);
   kmm_pred_low__2->SetEntries(1);
   kmm_pred_low__2->SetStats(0);

   Int_t ci;      // for color index setting
   TColor *color; // for color definition with alpha
   ci = TColor::GetColor("#ff0000");
   kmm_pred_low__2->SetFillColor(ci);

   ci = TColor::GetColor("#ff0000");
   kmm_pred_low__2->SetLineColor(ci);
   kmm_pred_low__2->SetLineWidth(2);

   ci = TColor::GetColor("#ff0000");
   kmm_pred_low__2->SetMarkerColor(ci);
   kmm_pred_low__2->SetMarkerStyle(20);
   kmm_pred_low__2->GetXaxis()->SetNdivisions(505);
   kmm_pred_low__2->GetXaxis()->SetLabelFont(132);
   kmm_pred_low__2->GetXaxis()->SetLabelOffset(0.01);
   kmm_pred_low__2->GetXaxis()->SetLabelSize(0.06);
   kmm_pred_low__2->GetXaxis()->SetTitleSize(0.072);
   kmm_pred_low__2->GetXaxis()->SetTitleOffset(0.95);
   kmm_pred_low__2->GetXaxis()->SetTitleFont(132);
   kmm_pred_low__2->GetYaxis()->SetLabelFont(132);
   kmm_pred_low__2->GetYaxis()->SetLabelOffset(0.01);
   kmm_pred_low__2->GetYaxis()->SetLabelSize(0.06);
   kmm_pred_low__2->GetYaxis()->SetTitleSize(0.072);
   kmm_pred_low__2->GetYaxis()->SetTitleOffset(0.95);
   kmm_pred_low__2->GetYaxis()->SetTitleFont(132);
   kmm_pred_low__2->GetZaxis()->SetLabelFont(132);
   kmm_pred_low__2->GetZaxis()->SetLabelSize(0.06);
   kmm_pred_low__2->GetZaxis()->SetTitleSize(0.072);
   kmm_pred_low__2->GetZaxis()->SetTitleOffset(1.2);
   kmm_pred_low__2->GetZaxis()->SetTitleFont(132);
   kmm_pred_low__2->Draw("sameE2");
   
   TH1D *kmm_pred_high__3 = new TH1D("kmm_pred_high__3","kmm_pred_high",1,15,22);
   kmm_pred_high__3->SetBinContent(1,1.525714);
   kmm_pred_high__3->SetBinError(1,0.1214286);
   kmm_pred_high__3->SetEntries(1);
   kmm_pred_high__3->SetStats(0);

   ci = TColor::GetColor("#ff0000");
   kmm_pred_high__3->SetFillColor(ci);

   ci = TColor::GetColor("#ff0000");
   kmm_pred_high__3->SetLineColor(ci);
   kmm_pred_high__3->SetLineWidth(2);

   ci = TColor::GetColor("#ff0000");
   kmm_pred_high__3->SetMarkerColor(ci);
   kmm_pred_high__3->SetMarkerStyle(20);
   kmm_pred_high__3->GetXaxis()->SetNdivisions(505);
   kmm_pred_high__3->GetXaxis()->SetLabelFont(132);
   kmm_pred_high__3->GetXaxis()->SetLabelOffset(0.01);
   kmm_pred_high__3->GetXaxis()->SetLabelSize(0.06);
   kmm_pred_high__3->GetXaxis()->SetTitleSize(0.072);
   kmm_pred_high__3->GetXaxis()->SetTitleOffset(0.95);
   kmm_pred_high__3->GetXaxis()->SetTitleFont(132);
   kmm_pred_high__3->GetYaxis()->SetLabelFont(132);
   kmm_pred_high__3->GetYaxis()->SetLabelOffset(0.01);
   kmm_pred_high__3->GetYaxis()->SetLabelSize(0.06);
   kmm_pred_high__3->GetYaxis()->SetTitleSize(0.072);
   kmm_pred_high__3->GetYaxis()->SetTitleOffset(0.95);
   kmm_pred_high__3->GetYaxis()->SetTitleFont(132);
   kmm_pred_high__3->GetZaxis()->SetLabelFont(132);
   kmm_pred_high__3->GetZaxis()->SetLabelSize(0.06);
   kmm_pred_high__3->GetZaxis()->SetTitleSize(0.072);
   kmm_pred_high__3->GetZaxis()->SetTitleOffset(1.2);
   kmm_pred_high__3->GetZaxis()->SetTitleFont(132);
   kmm_pred_high__3->Draw("sameE2");
   
   TH1D *kmm_exp_low__4 = new TH1D("kmm_exp_low__4","kmm_exp_low",1,1.1,6);
   kmm_exp_low__4->SetBinContent(1,2.420408);
   kmm_exp_low__4->SetBinError(1,0.1389796);
   kmm_exp_low__4->SetEntries(1);
   kmm_exp_low__4->SetStats(0);
   kmm_exp_low__4->SetLineWidth(2);
   kmm_exp_low__4->SetMarkerStyle(20);
   kmm_exp_low__4->GetXaxis()->SetNdivisions(505);
   kmm_exp_low__4->GetXaxis()->SetLabelFont(132);
   kmm_exp_low__4->GetXaxis()->SetLabelOffset(0.01);
   kmm_exp_low__4->GetXaxis()->SetLabelSize(0.06);
   kmm_exp_low__4->GetXaxis()->SetTitleSize(0.072);
   kmm_exp_low__4->GetXaxis()->SetTitleOffset(0.95);
   kmm_exp_low__4->GetXaxis()->SetTitleFont(132);
   kmm_exp_low__4->GetYaxis()->SetLabelFont(132);
   kmm_exp_low__4->GetYaxis()->SetLabelOffset(0.01);
   kmm_exp_low__4->GetYaxis()->SetLabelSize(0.06);
   kmm_exp_low__4->GetYaxis()->SetTitleSize(0.072);
   kmm_exp_low__4->GetYaxis()->SetTitleOffset(0.95);
   kmm_exp_low__4->GetYaxis()->SetTitleFont(132);
   kmm_exp_low__4->GetZaxis()->SetLabelFont(132);
   kmm_exp_low__4->GetZaxis()->SetLabelSize(0.06);
   kmm_exp_low__4->GetZaxis()->SetTitleSize(0.072);
   kmm_exp_low__4->GetZaxis()->SetTitleOffset(1.2);
   kmm_exp_low__4->GetZaxis()->SetTitleFont(132);
   kmm_exp_low__4->Draw("same");
   
   TH1D *kmm_ee_low__5 = new TH1D("kmm_ee_low__5","kmm_ee_low",1,1.1,6);
   kmm_ee_low__5->SetBinContent(1,2.86);
   kmm_ee_low__5->SetBinError(1,0.198);
   kmm_ee_low__5->SetEntries(1);
   kmm_ee_low__5->SetStats(0);

   ci = TColor::GetColor("#0000ff");
   kmm_ee_low__5->SetLineColor(ci);
   kmm_ee_low__5->SetLineWidth(2);

   ci = TColor::GetColor("#0000ff");
   kmm_ee_low__5->SetMarkerColor(ci);
   kmm_ee_low__5->SetMarkerStyle(21);
   kmm_ee_low__5->GetXaxis()->SetNdivisions(505);
   kmm_ee_low__5->GetXaxis()->SetLabelFont(132);
   kmm_ee_low__5->GetXaxis()->SetLabelOffset(0.01);
   kmm_ee_low__5->GetXaxis()->SetLabelSize(0.06);
   kmm_ee_low__5->GetXaxis()->SetTitleSize(0.072);
   kmm_ee_low__5->GetXaxis()->SetTitleOffset(0.95);
   kmm_ee_low__5->GetXaxis()->SetTitleFont(132);
   kmm_ee_low__5->GetYaxis()->SetLabelFont(132);
   kmm_ee_low__5->GetYaxis()->SetLabelOffset(0.01);
   kmm_ee_low__5->GetYaxis()->SetLabelSize(0.06);
   kmm_ee_low__5->GetYaxis()->SetTitleSize(0.072);
   kmm_ee_low__5->GetYaxis()->SetTitleOffset(0.95);
   kmm_ee_low__5->GetYaxis()->SetTitleFont(132);
   kmm_ee_low__5->GetZaxis()->SetLabelFont(132);
   kmm_ee_low__5->GetZaxis()->SetLabelSize(0.06);
   kmm_ee_low__5->GetZaxis()->SetTitleSize(0.072);
   kmm_ee_low__5->GetZaxis()->SetTitleOffset(1.2);
   kmm_ee_low__5->GetZaxis()->SetTitleFont(132);
   kmm_ee_low__5->Draw("same");
   
   TH1D *kmm_exp_high__6 = new TH1D("kmm_exp_high__6","kmm_exp_high",1,15,22);
   kmm_exp_high__6->SetBinContent(1,1.21);
   kmm_exp_high__6->SetBinError(1,0.07214286);
   kmm_exp_high__6->SetEntries(1);
   kmm_exp_high__6->SetStats(0);
   kmm_exp_high__6->SetLineWidth(2);
   kmm_exp_high__6->SetMarkerStyle(20);
   kmm_exp_high__6->GetXaxis()->SetNdivisions(505);
   kmm_exp_high__6->GetXaxis()->SetLabelFont(132);
   kmm_exp_high__6->GetXaxis()->SetLabelOffset(0.01);
   kmm_exp_high__6->GetXaxis()->SetLabelSize(0.06);
   kmm_exp_high__6->GetXaxis()->SetTitleSize(0.072);
   kmm_exp_high__6->GetXaxis()->SetTitleOffset(0.95);
   kmm_exp_high__6->GetXaxis()->SetTitleFont(132);
   kmm_exp_high__6->GetYaxis()->SetLabelFont(132);
   kmm_exp_high__6->GetYaxis()->SetLabelOffset(0.01);
   kmm_exp_high__6->GetYaxis()->SetLabelSize(0.06);
   kmm_exp_high__6->GetYaxis()->SetTitleSize(0.072);
   kmm_exp_high__6->GetYaxis()->SetTitleOffset(0.95);
   kmm_exp_high__6->GetYaxis()->SetTitleFont(132);
   kmm_exp_high__6->GetZaxis()->SetLabelFont(132);
   kmm_exp_high__6->GetZaxis()->SetLabelSize(0.06);
   kmm_exp_high__6->GetZaxis()->SetTitleSize(0.072);
   kmm_exp_high__6->GetZaxis()->SetTitleOffset(1.2);
   kmm_exp_high__6->GetZaxis()->SetTitleFont(132);
   kmm_exp_high__6->Draw("same");
   TLatex *   tex = new TLatex(1.2,4.75,"LHCb");
   tex->SetTextFont(132);
   tex->SetTextSize(0.08);
   tex->SetLineWidth(2);
   tex->Draw();
   
   TLegend *leg = new TLegend(0.63,0.7,0.93,0.9,NULL,"brNDC");
   leg->SetBorderSize(0);
   leg->SetTextFont(132);
   leg->SetLineColor(1);
   leg->SetLineStyle(1);
   leg->SetLineWidth(2);
   leg->SetFillColor(0);
   leg->SetFillStyle(1001);
   TLegendEntry *entry=leg->AddEntry("kmm_pred_low","SM prediction","f");

   ci = TColor::GetColor("#ff0000");
   entry->SetFillColor(ci);
   entry->SetFillStyle(1001);

   ci = TColor::GetColor("#ff0000");
   entry->SetLineColor(ci);
   entry->SetLineStyle(1);
   entry->SetLineWidth(2);
   entry->SetMarkerColor(1);
   entry->SetMarkerStyle(21);
   entry->SetMarkerSize(1);
   entry->SetTextFont(132);
   entry=leg->AddEntry("kmm_ee_low","electrons  9fb^{-1}","lp");

   ci = TColor::GetColor("#0000ff");
   entry->SetLineColor(ci);
   entry->SetLineStyle(1);
   entry->SetLineWidth(2);

   ci = TColor::GetColor("#0000ff");
   entry->SetMarkerColor(ci);
   entry->SetMarkerStyle(21);
   entry->SetMarkerSize(1);
   entry->SetTextFont(132);
   entry=leg->AddEntry("kmm_exp_low","muons      3fb^{-1}","lp");
   entry->SetLineColor(1);
   entry->SetLineStyle(1);
   entry->SetLineWidth(2);
   entry->SetMarkerColor(1);
   entry->SetMarkerStyle(20);
   entry->SetMarkerSize(1);
   entry->SetTextFont(132);
   leg->Draw();
   c1->Modified();
   c1->cd();
   c1->SetSelected(c1);
}
