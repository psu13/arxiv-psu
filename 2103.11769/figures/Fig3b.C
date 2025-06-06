void 1B_plus_PTTrig0()
{
//=========Macro generated from canvas: canv/canv
//=========  (Thu Mar 18 17:20:52 2021) by ROOT version6.08/06
   TCanvas *canv = new TCanvas("canv", "canv",0,0,800,600);
   gStyle->SetOptStat(0);
   gStyle->SetOptTitle(0);
   canv->SetHighLightColor(2);
   canv->Range(-3197.531,0.8594937,19641.98,1.112658);
   canv->SetFillColor(0);
   canv->SetBorderMode(0);
   canv->SetBorderSize(2);
   canv->SetLeftMargin(0.14);
   canv->SetRightMargin(0.05);
   canv->SetTopMargin(0.05);
   canv->SetBottomMargin(0.16);
   canv->SetFrameLineWidth(2);
   canv->SetFrameBorderMode(0);
   canv->SetFrameLineWidth(2);
   canv->SetFrameBorderMode(0);
   Double_t xAxis1[9] = {0, 4250, 5750, 7000, 8259, 9500, 11500, 14500, 18500}; 
   
   TH1F *rJPsi0__1 = new TH1F("rJPsi0__1","eeYield",8, xAxis1);
   rJPsi0__1->SetBinContent(1,0.9980066);
   rJPsi0__1->SetBinContent(2,0.9863059);
   rJPsi0__1->SetBinContent(3,0.9832442);
   rJPsi0__1->SetBinContent(4,0.9962067);
   rJPsi0__1->SetBinContent(5,0.9902318);
   rJPsi0__1->SetBinContent(6,1.002854);
   rJPsi0__1->SetBinContent(7,1.001191);
   rJPsi0__1->SetBinContent(8,1.011465);
   rJPsi0__1->SetBinError(1,0.01483643);
   rJPsi0__1->SetBinError(2,0.01132763);
   rJPsi0__1->SetBinError(3,0.01095025);
   rJPsi0__1->SetBinError(4,0.01084454);
   rJPsi0__1->SetBinError(5,0.01137442);
   rJPsi0__1->SetBinError(6,0.01033269);
   rJPsi0__1->SetBinError(7,0.01053535);
   rJPsi0__1->SetBinError(8,0.01293311);
   rJPsi0__1->SetMinimum(0.9);
   rJPsi0__1->SetMaximum(1.1);
   rJPsi0__1->SetEntries(57720.87);
   rJPsi0__1->SetStats(0);
   rJPsi0__1->SetLineWidth(2);
   rJPsi0__1->SetMarkerStyle(20);
   rJPsi0__1->GetXaxis()->SetTitle("#it{p}_{T}(#it{B^{+}}) [MeV/#it{c}]");
   rJPsi0__1->GetXaxis()->SetNdivisions(505);
   rJPsi0__1->GetXaxis()->SetLabelFont(132);
   rJPsi0__1->GetXaxis()->SetLabelOffset(0.01);
   rJPsi0__1->GetXaxis()->SetLabelSize(0.057);
   rJPsi0__1->GetXaxis()->SetTitleSize(0.0684);
   rJPsi0__1->GetXaxis()->SetTitleOffset(0.95);
   rJPsi0__1->GetXaxis()->SetTitleFont(132);
   rJPsi0__1->GetYaxis()->SetTitle("r_{J/#psi} / #LT r_{J/#psi} #GT");
   rJPsi0__1->GetYaxis()->SetNdivisions(505);
   rJPsi0__1->GetYaxis()->SetLabelFont(132);
   rJPsi0__1->GetYaxis()->SetLabelOffset(0.01);
   rJPsi0__1->GetYaxis()->SetLabelSize(0.057);
   rJPsi0__1->GetYaxis()->SetTitleSize(0.0684);
   rJPsi0__1->GetYaxis()->SetTitleOffset(0.95);
   rJPsi0__1->GetYaxis()->SetTitleFont(132);
   rJPsi0__1->GetZaxis()->SetLabelFont(132);
   rJPsi0__1->GetZaxis()->SetLabelSize(0.057);
   rJPsi0__1->GetZaxis()->SetTitleSize(0.0684);
   rJPsi0__1->GetZaxis()->SetTitleOffset(1.2);
   rJPsi0__1->GetZaxis()->SetTitleFont(132);
   rJPsi0__1->Draw("E1");
   TLine *line = new TLine(0,1,18500,1);
   line->SetLineStyle(3);
   line->SetLineWidth(2);
   line->Draw();
   
   TPaveText *pt = new TPaveText(0.2,0.8,0.38,0.91,"BRNDC");
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
