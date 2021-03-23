void legend_1DrJpsi()
{
//=========Macro generated from canvas: canvLeg/canvLeg
//=========  (Thu Mar 18 17:20:55 2021) by ROOT version6.08/06
   TCanvas *canvLeg = new TCanvas("canvLeg", "canvLeg",0,0,800,600);
   gStyle->SetOptStat(0);
   gStyle->SetOptTitle(0);
   canvLeg->SetHighLightColor(2);
   canvLeg->Range(0,0,1,1);
   canvLeg->SetFillColor(0);
   canvLeg->SetBorderMode(0);
   canvLeg->SetBorderSize(2);
   canvLeg->SetLeftMargin(0.14);
   canvLeg->SetRightMargin(0.05);
   canvLeg->SetTopMargin(0.05);
   canvLeg->SetBottomMargin(0.16);
   canvLeg->SetFrameLineWidth(2);
   canvLeg->SetFrameBorderMode(0);
   
   TLegend *leg = new TLegend(0,0,1,1,NULL,"brNDC");
   leg->SetBorderSize(0);
   leg->SetTextFont(132);
   leg->SetLineColor(1);
   leg->SetLineStyle(1);
   leg->SetLineWidth(2);
   leg->SetFillColor(0);
   leg->SetFillStyle(1001);
   TLegendEntry *entry=leg->AddEntry("heeRareEff_thinBins","#it{B^{+}#rightarrow K^{+}e^{+}e^{#minus}}","l");
   entry->SetLineColor(38);
   entry->SetLineStyle(2);
   entry->SetLineWidth(2);
   entry->SetMarkerColor(1);
   entry->SetMarkerStyle(21);
   entry->SetMarkerSize(1);
   entry->SetTextFont(132);
   entry=leg->AddEntry("hmumuRareEff_thinBins","#it{B^{+}#rightarrow K^{+}#mu^{+}#mu^{#minus}}","l");
   entry->SetLineColor(94);
   entry->SetLineStyle(2);
   entry->SetLineWidth(2);
   entry->SetMarkerColor(1);
   entry->SetMarkerStyle(21);
   entry->SetMarkerSize(1);
   entry->SetTextFont(132);
   entry=leg->AddEntry("heeEff_thinBins","#it{B^{+}#rightarrow J/#kern[-.3pt]{#psi}(e^{+}e^{#minus})K^{+}}","l");
   entry->SetLineColor(38);
   entry->SetLineStyle(1);
   entry->SetLineWidth(2);
   entry->SetMarkerColor(1);
   entry->SetMarkerStyle(21);
   entry->SetMarkerSize(1);
   entry->SetTextFont(132);
   entry=leg->AddEntry("hmumuEff_thinBins","#it{B^{+}#rightarrow J/#kern[-.3pt]{#psi}(#mu^{+}#mu^{#minus})K^{+}}","l");
   entry->SetLineColor(94);
   entry->SetLineStyle(1);
   entry->SetLineWidth(2);
   entry->SetMarkerColor(1);
   entry->SetMarkerStyle(21);
   entry->SetMarkerSize(1);
   entry->SetTextFont(132);
   leg->Draw();
   canvLeg->Modified();
   canvLeg->cd();
   canvLeg->SetSelected(canvLeg);
}
