void Fig10a()
{
//=========Macro generated from canvas: canv/canv
//=========  (Thu Mar 18 18:18:28 2021) by ROOT version6.08/06
   TCanvas *canv = new TCanvas("canv", "canv",0,0,800,600);
   gStyle->SetOptStat(0);
   gStyle->SetOptTitle(0);
   canv->SetHighLightColor(2);
   canv->Range(0,0,1,1);
   canv->SetFillColor(0);
   canv->SetBorderMode(0);
   canv->SetBorderSize(2);
   canv->SetLeftMargin(0.14);
   canv->SetRightMargin(0.05);
   canv->SetTopMargin(0.05);
   canv->SetBottomMargin(0.16);
   canv->SetFrameLineWidth(2);
   canv->SetFrameBorderMode(0);
   
   TH1F *hRatio2__1 = new TH1F("hRatio2__1","rJPsiHisto2",17,0,17);
   hRatio2__1->SetBinContent(1,1);
   hRatio2__1->SetBinContent(2,0.968769);
   hRatio2__1->SetBinContent(3,0.9702156);
   hRatio2__1->SetBinContent(4,1.002696);
   hRatio2__1->SetBinContent(5,1.016887);
   hRatio2__1->SetBinContent(6,0.9539001);
   hRatio2__1->SetBinContent(7,0.9949061);
   hRatio2__1->SetBinContent(8,0.9977497);
   hRatio2__1->SetBinContent(9,1.037535);
   hRatio2__1->SetBinContent(10,0.9809372);
   hRatio2__1->SetBinContent(11,1.01802);
   hRatio2__1->SetBinContent(12,1.001136);
   hRatio2__1->SetBinContent(13,1.003585);
   hRatio2__1->SetBinContent(14,1.02726);
   hRatio2__1->SetBinContent(15,1.008624);
   hRatio2__1->SetBinContent(16,1.003547);
   hRatio2__1->SetBinContent(17,0.9876725);
   hRatio2__1->SetBinError(1,0.004415379);
   hRatio2__1->SetBinError(2,0.02741599);
   hRatio2__1->SetBinError(3,0.01605673);
   hRatio2__1->SetBinError(4,0.01422576);
   hRatio2__1->SetBinError(5,0.01330264);
   hRatio2__1->SetBinError(6,0.02507219);
   hRatio2__1->SetBinError(7,0.01280528);
   hRatio2__1->SetBinError(8,0.01356211);
   hRatio2__1->SetBinError(9,0.01579135);
   hRatio2__1->SetBinError(10,0.02132543);
   hRatio2__1->SetBinError(11,0.01300916);
   hRatio2__1->SetBinError(12,0.01407952);
   hRatio2__1->SetBinError(13,0.01561212);
   hRatio2__1->SetBinError(14,0.01529936);
   hRatio2__1->SetBinError(15,0.01398702);
   hRatio2__1->SetBinError(16,0.01523136);
   hRatio2__1->SetBinError(17,0.01510406);
   hRatio2__1->SetMinimum(0.85);
   hRatio2__1->SetMaximum(1.15);
   hRatio2__1->SetStats(0);
   hRatio2__1->SetLineWidth(2);
   hRatio2__1->SetMarkerStyle(20);
   hRatio2__1->GetXaxis()->SetTitle("max(#it{p}(#it{l^{+}})), #it{p}(#it{l^{#minus}})) #times #alpha(#it{l^{+}}, #it{l^{#minus}}) bin number");
   hRatio2__1->GetXaxis()->SetBinLabel(1,"0");
   hRatio2__1->GetXaxis()->SetBinLabel(2,"1");
   hRatio2__1->GetXaxis()->SetBinLabel(3,"2");
   hRatio2__1->GetXaxis()->SetBinLabel(4,"3");
   hRatio2__1->GetXaxis()->SetBinLabel(5,"4");
   hRatio2__1->GetXaxis()->SetBinLabel(6,"5");
   hRatio2__1->GetXaxis()->SetBinLabel(7,"6");
   hRatio2__1->GetXaxis()->SetBinLabel(8,"7");
   hRatio2__1->GetXaxis()->SetBinLabel(9,"8");
   hRatio2__1->GetXaxis()->SetBinLabel(10,"9");
   hRatio2__1->GetXaxis()->SetBinLabel(11,"10");
   hRatio2__1->GetXaxis()->SetBinLabel(12,"11");
   hRatio2__1->GetXaxis()->SetBinLabel(13,"12");
   hRatio2__1->GetXaxis()->SetBinLabel(14,"13");
   hRatio2__1->GetXaxis()->SetBinLabel(15,"14");
   hRatio2__1->GetXaxis()->SetBinLabel(16,"15");
   hRatio2__1->GetXaxis()->SetBinLabel(17,"16");
   hRatio2__1->GetXaxis()->SetRange(2,17);
   hRatio2__1->GetXaxis()->SetNdivisions(505);
   hRatio2__1->GetXaxis()->SetLabelFont(132);
   hRatio2__1->GetXaxis()->SetLabelOffset(0.01);
   hRatio2__1->GetXaxis()->SetLabelSize(0.057);
   hRatio2__1->GetXaxis()->SetTitleSize(0.0684);
   hRatio2__1->GetXaxis()->SetTitleOffset(0.95);
   hRatio2__1->GetXaxis()->SetTitleFont(132);
   hRatio2__1->GetYaxis()->SetTitle("r_{J/#psi} / #LT r_{J/#psi} #GT");
   hRatio2__1->GetYaxis()->SetNdivisions(505);
   hRatio2__1->GetYaxis()->SetLabelFont(132);
   hRatio2__1->GetYaxis()->SetLabelOffset(0.01);
   hRatio2__1->GetYaxis()->SetLabelSize(0.057);
   hRatio2__1->GetYaxis()->SetTitleSize(0.0684);
   hRatio2__1->GetYaxis()->SetTitleOffset(0.95);
   hRatio2__1->GetYaxis()->SetTitleFont(132);
   hRatio2__1->GetZaxis()->SetLabelFont(132);
   hRatio2__1->GetZaxis()->SetLabelSize(0.057);
   hRatio2__1->GetZaxis()->SetTitleSize(0.0684);
   hRatio2__1->GetZaxis()->SetTitleOffset(1.2);
   hRatio2__1->GetZaxis()->SetTitleFont(132);
   hRatio2__1->Draw("E1");
   TLine *line = new TLine(1,1,17,1);
   line->SetLineStyle(3);
   line->SetLineWidth(2);
   line->Draw();
   
   TPaveText *pt = new TPaveText(-2.353437e-185,-2.353437e-185,-2.353437e-185,-2.353437e-185,"BRNDC");
   pt->SetBorderSize(0);
   pt->SetFillColor(0);
   pt->SetLineWidth(2);
   pt->SetTextAlign(12);
   pt->SetTextFont(132);
   TText *AText = pt->AddText("LHCb");
   pt->Draw();
   canv->Modified();
   canv->cd();
   canv->SetSelected(canv);
}
