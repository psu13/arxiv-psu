void Fig6h()
{
    TColor* col1 = gROOT->GetColor(92);
    col1->SetRGB(0.992, 0.6823, 0.3804);
    TColor* col2 = gROOT->GetColor(93);
    col2->SetRGB(0.6706, 0.8510, 0.9137);
    TColor* col3 = gROOT->GetColor(94);
    col3->SetRGB(0.8431, 0.098, 0.1098);
    TColor* col4 = gROOT->GetColor(95);
    col4->SetRGB(0.1725, 0.4824, 0.7137);

//=========Macro generated from canvas: cFit/cFit
//=========  (Thu Mar 18 17:46:17 2021) by ROOT version6.08/06
   TCanvas *cFit = new TCanvas("cFit", "cFit",0,0,800,600);
   gStyle->SetOptStat(0);
   gStyle->SetOptTitle(0);
   cFit->SetHighLightColor(2);
   cFit->Range(0,0,1,1);
   cFit->SetFillColor(0);
   cFit->SetBorderMode(0);
   cFit->SetBorderSize(2);
   cFit->SetLeftMargin(0.14);
   cFit->SetRightMargin(0.05);
   cFit->SetTopMargin(0.0625);
   cFit->SetBottomMargin(0.16);
   cFit->SetFrameLineWidth(2);
   cFit->SetFrameBorderMode(0);
   
   TH1D *frame_b9d0be0__19 = new TH1D("frame_b9d0be0__19","A RooPlot of \"#it{m(K^{#plus}e^{#plus}e^{#minus})} [MeV/#it{c}^{2}]\"",55,4880,6200);
   frame_b9d0be0__19->SetBinContent(1,34.92326);
   frame_b9d0be0__19->SetMaximum(34.92326);
   frame_b9d0be0__19->SetEntries(1);
   frame_b9d0be0__19->SetDirectory(0);
   frame_b9d0be0__19->SetStats(0);
   frame_b9d0be0__19->SetLineWidth(2);
   frame_b9d0be0__19->SetMarkerStyle(20);
   frame_b9d0be0__19->GetXaxis()->SetTitle("#it{m(K^{#plus}e^{#plus}e^{#minus})} [MeV/#it{c}^{2}]");
   frame_b9d0be0__19->GetXaxis()->SetNdivisions(505);
   frame_b9d0be0__19->GetXaxis()->SetLabelFont(132);
   frame_b9d0be0__19->GetXaxis()->SetLabelOffset(0.01);
   frame_b9d0be0__19->GetXaxis()->SetLabelSize(0.06);
   frame_b9d0be0__19->GetXaxis()->SetTitleSize(0.072);
   frame_b9d0be0__19->GetXaxis()->SetTitleOffset(0.95);
   frame_b9d0be0__19->GetXaxis()->SetTitleFont(132);
   frame_b9d0be0__19->GetYaxis()->SetTitle("Candidates / (24 MeV/#it{c}^{2})");
   frame_b9d0be0__19->GetYaxis()->SetLabelFont(132);
   frame_b9d0be0__19->GetYaxis()->SetLabelOffset(0.01);
   frame_b9d0be0__19->GetYaxis()->SetLabelSize(0.06);
   frame_b9d0be0__19->GetYaxis()->SetTitleSize(0.072);
   frame_b9d0be0__19->GetYaxis()->SetTitleOffset(0.95);
   frame_b9d0be0__19->GetYaxis()->SetTitleFont(132);
   frame_b9d0be0__19->GetZaxis()->SetLabelFont(132);
   frame_b9d0be0__19->GetZaxis()->SetLabelSize(0.06);
   frame_b9d0be0__19->GetZaxis()->SetTitleSize(0.072);
   frame_b9d0be0__19->GetZaxis()->SetTitleOffset(1.2);
   frame_b9d0be0__19->GetZaxis()->SetTitleFont(132);
   frame_b9d0be0__19->Draw("FUNC");
   
   Double_t Data_fx3019[55] = {
   4892,
   4916,
   4940,
   4964,
   4988,
   5012,
   5036,
   5060,
   5084,
   5108,
   5132,
   5156,
   5180,
   5204,
   5228,
   5252,
   5276,
   5300,
   5324,
   5348,
   5372,
   5396,
   5420,
   5444,
   5468,
   5492,
   5516,
   5540,
   5564,
   5588,
   5612,
   5636,
   5660,
   5684,
   5708,
   5732,
   5756,
   5780,
   5804,
   5828,
   5852,
   5876,
   5900,
   5924,
   5948,
   5972,
   5996,
   6020,
   6044,
   6068,
   6092,
   6116,
   6140,
   6164,
   6188};
   Double_t Data_fy3019[55] = {
   27,
   21,
   19,
   13,
   18,
   20,
   19,
   20,
   17,
   10,
   15,
   13,
   15,
   17,
   15,
   13,
   17,
   13,
   5,
   5,
   8,
   6,
   4,
   7,
   1,
   1,
   3,
   2,
   0,
   1,
   3,
   2,
   1,
   2,
   0,
   2,
   1,
   0,
   1,
   0,
   0,
   0,
   0,
   0,
   1,
   0,
   2,
   1,
   0,
   0,
   0,
   0,
   1,
   0,
   0};
   Double_t Data_felx3019[55] = {
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12};
   Double_t Data_fely3019[55] = {
   5.163771,
   4.545807,
   4.320219,
   3.558662,
   4.202887,
   4.434448,
   4.320219,
   4.434448,
   4.082184,
   3.108694,
   3.82938,
   3.558662,
   3.82938,
   4.082184,
   3.82938,
   3.558662,
   4.082184,
   3.558662,
   2.159691,
   2.159691,
   2.768386,
   2.379931,
   1.914339,
   2.58147,
   0.8272462,
   0.8272462,
   1.632705,
   1.291815,
   0,
   0.8272462,
   1.632705,
   1.291815,
   0.8272462,
   1.291815,
   0,
   1.291815,
   0.8272462,
   0,
   0.8272462,
   0,
   0,
   0,
   0,
   0,
   0.8272462,
   0,
   1.291815,
   0.8272462,
   0,
   0,
   0,
   0,
   0.8272462,
   0,
   0};
   Double_t Data_fehx3019[55] = {
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12};
   Double_t Data_fehy3019[55] = {
   6.260244,
   5.655182,
   5.435196,
   4.697573,
   5.321007,
   5.546519,
   5.435196,
   5.546519,
   5.203719,
   4.26695,
   4.958738,
   4.697573,
   4.958738,
   5.203719,
   4.958738,
   4.697573,
   5.203719,
   4.697573,
   3.382473,
   3.382473,
   3.945142,
   3.583642,
   3.162753,
   3.770281,
   2.299527,
   2.299527,
   2.918186,
   2.63786,
   1.147874,
   2.299527,
   2.918186,
   2.63786,
   2.299527,
   2.63786,
   1.147874,
   2.63786,
   2.299527,
   1.147874,
   2.299527,
   1.147874,
   1.147874,
   1.147874,
   1.147874,
   1.147874,
   2.299527,
   1.147874,
   2.63786,
   2.299527,
   1.147874,
   1.147874,
   1.147874,
   1.147874,
   2.299527,
   1.147874,
   1.147874};
   TGraphAsymmErrors *grae = new TGraphAsymmErrors(55,Data_fx3019,Data_fy3019,Data_felx3019,Data_fehx3019,Data_fely3019,Data_fehy3019);
   grae->SetName("Data");
   grae->SetTitle("Histogram of dataKeeRun3Trig2PhotAll_plot__B_plus_M");
   grae->SetFillColor(1);
   grae->SetLineWidth(2);
   grae->SetMarkerStyle(8);
   grae->Draw("p");
   
   Double_t modelTot_Norm_B_plus_M__fx55[132] = {
   4856,
   4856,
   4880,
   4883,
   4886,
   4892,
   4895,
   4898,
   4901,
   4904,
   4910,
   4916,
   4922,
   4928,
   4931,
   4934,
   4940,
   4946,
   4949,
   4952,
   4955,
   4958,
   4964,
   4970,
   4973,
   4976,
   4979,
   4982,
   4985,
   4988,
   4991,
   4994,
   5000,
   5003,
   5006,
   5009,
   5012,
   5015,
   5018,
   5021,
   5024,
   5030,
   5033,
   5036,
   5039,
   5042,
   5045,
   5048,
   5060,
   5072,
   5096,
   5108,
   5120,
   5132,
   5138,
   5144,
   5150,
   5156,
   5162,
   5168,
   5180,
   5192,
   5204,
   5216,
   5222,
   5228,
   5234,
   5240,
   5243,
   5246,
   5249,
   5252,
   5255,
   5258,
   5261,
   5264,
   5270,
   5276,
   5288,
   5294,
   5300,
   5306,
   5312,
   5318,
   5324,
   5330,
   5336,
   5342,
   5348,
   5354,
   5360,
   5372,
   5384,
   5396,
   5408,
   5420,
   5432,
   5456,
   5480,
   5504,
   5528,
   5552,
   5576,
   5600,
   5624,
   5648,
   5672,
   5696,
   5720,
   5744,
   5768,
   5792,
   5816,
   5840,
   5864,
   5888,
   5912,
   5936,
   5960,
   5984,
   6008,
   6032,
   6056,
   6080,
   6104,
   6128,
   6152,
   6176,
   6200,
   6200,
   6224,
   6224};
   Double_t modelTot_Norm_B_plus_M__fy55[132] = {
   0,
   19.9488,
   19.9488,
   19.95049,
   20.03919,
   20.32232,
   20.42133,
   20.4463,
   20.38631,
   20.24649,
   19.81875,
   19.33414,
   18.87288,
   18.48019,
   18.33346,
   18.22967,
   18.14044,
   18.09947,
   18.03987,
   17.93092,
   17.76937,
   17.56425,
   17.10719,
   16.73632,
   16.61879,
   16.55064,
   16.53141,
   16.563,
   16.64704,
   16.78677,
   16.98298,
   17.22945,
   17.77707,
   18.02141,
   18.21156,
   18.33438,
   18.38029,
   18.3384,
   18.20428,
   17.98155,
   17.68374,
   16.97458,
   16.63308,
   16.33648,
   16.10074,
   15.92707,
   15.81112,
   15.74395,
   15.65057,
   15.42044,
   14.9222,
   14.67402,
   14.53517,
   14.5307,
   14.59701,
   14.71784,
   14.89621,
   15.13349,
   15.43144,
   15.78982,
   16.62007,
   17.54007,
   18.48754,
   19.37981,
   19.76521,
   20.07196,
   20.28423,
   20.38176,
   20.35178,
   20.25684,
   20.09857,
   19.88277,
   19.61274,
   19.2919,
   18.92447,
   18.51526,
   17.593,
   16.57014,
   14.40004,
   13.32914,
   12.30549,
   11.34616,
   10.45973,
   9.647961,
   8.907835,
   8.233867,
   7.619789,
   7.059828,
   6.549198,
   6.084193,
   5.661918,
   4.936061,
   4.353003,
   3.892186,
   3.531116,
   3.247758,
   3.025647,
   2.694747,
   2.441468,
   2.223394,
   2.024248,
   1.838606,
   1.665047,
   1.503472,
   1.354126,
   1.217233,
   1.092837,
   0.9807323,
   0.8804512,
   0.7913005,
   0.7124169,
   0.6428343,
   0.5815478,
   0.5275671,
   0.4801829,
   0.4388891,
   0.4024094,
   0.3701554,
   0.3414191,
   0.3155479,
   0.2920871,
   0.2706993,
   0.2511233,
   0.2331505,
   0.2166104,
   0.2013608,
   0.1872811,
   0.1742676,
   0.1622298,
   0.1622298,
   0.1622298,
   0};
   TGraph *graph = new TGraph(132,modelTot_Norm_B_plus_M__fx55,modelTot_Norm_B_plus_M__fy55);
   graph->SetName("modelTot_Norm_B_plus_M_");
   graph->SetTitle("Projection of modelTot");
   graph->SetFillColor(1);

   Int_t ci;      // for color index setting
   TColor *color; // for color definition with alpha
   ci = TColor::GetColor("#0000ff");
   graph->SetLineColor(ci);
   graph->SetLineWidth(3);
   graph->SetMarkerStyle(20);
   graph->Draw("l");
   
   Double_t Charm_fx56[107] = {
   4856,
   4856,
   4880,
   4883,
   4886,
   4892,
   4895,
   4898,
   4901,
   4904,
   4910,
   4916,
   4922,
   4928,
   4931,
   4934,
   4940,
   4946,
   4949,
   4952,
   4955,
   4958,
   4964,
   4967,
   4970,
   4973,
   4976,
   4979,
   4982,
   4985,
   4988,
   4991,
   4994,
   5000,
   5003,
   5006,
   5009,
   5012,
   5015,
   5018,
   5021,
   5024,
   5030,
   5033,
   5036,
   5039,
   5042,
   5045,
   5048,
   5060,
   5066,
   5072,
   5084,
   5096,
   5108,
   5120,
   5132,
   5144,
   5156,
   5168,
   5180,
   5192,
   5216,
   5240,
   5264,
   5288,
   5312,
   5336,
   5360,
   5384,
   5408,
   5432,
   5456,
   5480,
   5504,
   5528,
   5552,
   5576,
   5600,
   5624,
   5648,
   5672,
   5696,
   5720,
   5744,
   5768,
   5792,
   5816,
   5840,
   5864,
   5888,
   5912,
   5936,
   5960,
   5984,
   6008,
   6032,
   6056,
   6080,
   6104,
   6128,
   6152,
   6176,
   6200,
   6200,
   6224,
   6224};
   Double_t Charm_fy56[107] = {
   0,
   17.49042,
   17.49042,
   17.46021,
   17.51655,
   17.73348,
   17.79866,
   17.78929,
   17.69445,
   17.51924,
   17.01914,
   16.45996,
   15.92183,
   15.4499,
   15.26263,
   15.11765,
   14.94413,
   14.81616,
   14.71201,
   14.55779,
   14.35024,
   14.09836,
   13.54544,
   13.29127,
   13.07548,
   12.90713,
   12.78728,
   12.71546,
   12.69353,
   12.72309,
   12.80736,
   12.94712,
   13.13609,
   13.56549,
   13.74903,
   13.87723,
   13.93688,
   13.91838,
   13.8108,
   13.60968,
   13.31863,
   12.95119,
   12.09871,
   11.68343,
   11.31156,
   10.99902,
   10.74699,
   10.55104,
   10.40219,
   9.964086,
   9.680505,
   9.357321,
   8.712612,
   7.989774,
   7.235476,
   6.530369,
   5.885848,
   5.340455,
   4.906803,
   4.570326,
   4.309884,
   4.095521,
   3.717652,
   3.38145,
   3.08679,
   2.815457,
   2.567258,
   2.349973,
   2.160831,
   1.991697,
   1.836998,
   1.69467,
   1.564063,
   1.44445,
   1.334792,
   1.23401,
   1.141178,
   1.055561,
   0.976572,
   0.9037274,
   0.8365995,
   0.7747824,
   0.7178735,
   0.6654705,
   0.6171793,
   0.5726274,
   0.531473,
   0.4934108,
   0.4581725,
   0.4255222,
   0.3952523,
   0.3671775,
   0.3411309,
   0.3169607,
   0.2945282,
   0.2737058,
   0.2543762,
   0.2364312,
   0.2197711,
   0.204304,
   0.189945,
   0.1766154,
   0.1642428,
   0.15276,
   0.15276,
   0.15276,
   0};
   graph = new TGraph(107,Charm_fx56,Charm_fy56);
   graph->SetName("Charm");
   graph->SetTitle("Projection of modelTot");
   graph->SetFillColor(94);
   graph->SetLineColor(94);
   graph->SetLineWidth(3);
   graph->SetMarkerStyle(20);
   graph->Draw("f");
   
   Double_t Prc_fx57[105] = {
   4856,
   4856,
   4880,
   4881.5,
   4883,
   4886,
   4892,
   4895,
   4898,
   4901,
   4904,
   4928,
   4931,
   4934,
   4940,
   4946,
   4949,
   4952,
   4955,
   4958,
   4964,
   4967,
   4970,
   4973,
   4976,
   4979,
   4982,
   4985,
   4988,
   4991,
   4994,
   5000,
   5003,
   5006,
   5009,
   5012,
   5015,
   5018,
   5021,
   5024,
   5030,
   5033,
   5036,
   5039,
   5042,
   5045,
   5048,
   5060,
   5066,
   5072,
   5084,
   5096,
   5108,
   5120,
   5132,
   5144,
   5156,
   5168,
   5180,
   5192,
   5216,
   5240,
   5264,
   5288,
   5312,
   5336,
   5360,
   5384,
   5408,
   5432,
   5456,
   5480,
   5504,
   5528,
   5552,
   5576,
   5600,
   5624,
   5648,
   5672,
   5696,
   5720,
   5744,
   5768,
   5792,
   5816,
   5840,
   5864,
   5888,
   5912,
   5936,
   5960,
   5984,
   6008,
   6032,
   6056,
   6080,
   6104,
   6128,
   6152,
   6176,
   6200,
   6200,
   6224,
   6224};
   Double_t Prc_fy57[105] = {
   0,
   14.26806,
   14.26806,
   14.24359,
   14.24909,
   14.33785,
   14.68097,
   14.8384,
   14.93806,
   14.96708,
   14.9286,
   14.07178,
   14.01266,
   13.98517,
   14.01215,
   14.0406,
   13.99914,
   13.89848,
   13.73628,
   13.52235,
   13.02598,
   12.79224,
   12.59249,
   12.43642,
   12.32577,
   12.2606,
   12.24318,
   12.27562,
   12.36156,
   12.5021,
   12.69126,
   13.12035,
   13.30378,
   13.4321,
   13.4922,
   13.47456,
   13.3683,
   13.16897,
   12.8802,
   12.5155,
   11.66989,
   11.25866,
   10.89122,
   10.58345,
   10.3365,
   10.14592,
   10.00269,
   9.589309,
   9.319222,
   9.010201,
   8.395658,
   7.705117,
   6.984578,
   6.31365,
   5.702458,
   5.188293,
   4.782773,
   4.470735,
   4.230862,
   4.033371,
   3.679887,
   3.358964,
   3.073812,
   2.808336,
   2.563608,
   2.348246,
   2.160082,
   1.9914,
   1.836891,
   1.694634,
   1.564052,
   1.444447,
   1.334792,
   1.234009,
   1.141178,
   1.055561,
   0.976572,
   0.9037274,
   0.8365995,
   0.7747824,
   0.7178735,
   0.6654705,
   0.6171793,
   0.5726274,
   0.531473,
   0.4934108,
   0.4581725,
   0.4255222,
   0.3952523,
   0.3671775,
   0.3411309,
   0.3169607,
   0.2945282,
   0.2737058,
   0.2543762,
   0.2364312,
   0.2197711,
   0.204304,
   0.189945,
   0.1766154,
   0.1642428,
   0.15276,
   0.15276,
   0.15276,
   0};
   graph = new TGraph(105,Prc_fx57,Prc_fy57);
   graph->SetName("Prc");
   graph->SetTitle("Projection of modelTot");
   graph->SetFillColor(95);
   graph->SetLineColor(95);
   graph->SetLineWidth(3);
   graph->SetMarkerStyle(20);
   graph->Draw("f");
   
   Double_t Comb_fx58[61] = {
   4856,
   4856,
   4880,
   4904,
   4928,
   4952,
   4976,
   5000,
   5024,
   5048,
   5072,
   5096,
   5120,
   5144,
   5168,
   5192,
   5216,
   5240,
   5264,
   5288,
   5312,
   5336,
   5360,
   5384,
   5408,
   5432,
   5456,
   5480,
   5504,
   5528,
   5552,
   5576,
   5600,
   5624,
   5648,
   5672,
   5696,
   5720,
   5744,
   5768,
   5792,
   5816,
   5840,
   5864,
   5888,
   5912,
   5936,
   5960,
   5984,
   6008,
   6032,
   6056,
   6080,
   6104,
   6128,
   6152,
   6176,
   6200,
   6200,
   6224,
   6224};
   Double_t Comb_fy58[61] = {
   0,
   8.851877,
   8.851877,
   8.210867,
   7.61666,
   7.065812,
   6.555131,
   6.081664,
   5.642679,
   5.235642,
   4.85821,
   4.508212,
   4.183636,
   3.882622,
   3.603444,
   3.344506,
   3.104329,
   2.88154,
   2.674872,
   2.483148,
   2.305279,
   2.140255,
   1.98714,
   1.845069,
   1.713238,
   1.590902,
   1.477373,
   1.372012,
   1.274224,
   1.183463,
   1.099218,
   1.021019,
   0.9484269,
   0.8810372,
   0.8184739,
   0.7603885,
   0.7064579,
   0.6563825,
   0.6098844,
   0.566706,
   0.5266085,
   0.4893701,
   0.4547853,
   0.4226637,
   0.3928282,
   0.3651149,
   0.3393717,
   0.3154574,
   0.293241,
   0.272601,
   0.2534246,
   0.2356073,
   0.219052,
   0.2036686,
   0.1893735,
   0.1760891,
   0.1637434,
   0.1522696,
   0.1522696,
   0.1522696,
   0};
   graph = new TGraph(61,Comb_fx58,Comb_fy58);
   graph->SetName("Comb");
   graph->SetTitle("Projection of modelTot");
   graph->SetFillColor(92);
   graph->SetLineColor(92);
   graph->SetLineWidth(3);
   graph->SetMarkerStyle(20);
   graph->Draw("f");
   
   Double_t Signal_fx59[95] = {
   4856,
   4856,
   4880,
   4904,
   4928,
   4952,
   4976,
   5000,
   5024,
   5048,
   5072,
   5084,
   5096,
   5108,
   5120,
   5132,
   5144,
   5156,
   5162,
   5168,
   5180,
   5192,
   5204,
   5210,
   5216,
   5222,
   5228,
   5234,
   5237,
   5240,
   5243,
   5246,
   5249,
   5252,
   5255,
   5258,
   5261,
   5264,
   5270,
   5276,
   5288,
   5294,
   5300,
   5306,
   5312,
   5318,
   5324,
   5330,
   5336,
   5342,
   5348,
   5354,
   5360,
   5366,
   5372,
   5384,
   5396,
   5408,
   5420,
   5432,
   5456,
   5480,
   5504,
   5528,
   5552,
   5576,
   5600,
   5624,
   5648,
   5672,
   5696,
   5720,
   5744,
   5768,
   5792,
   5816,
   5840,
   5864,
   5888,
   5912,
   5936,
   5960,
   5984,
   6008,
   6032,
   6056,
   6080,
   6104,
   6128,
   6152,
   6176,
   6200,
   6200,
   6224,
   6224};
   Double_t Signal_fy59[95] = {
   0,
   2.458381,
   2.458381,
   2.727245,
   3.030288,
   3.373127,
   3.763357,
   4.211582,
   4.732546,
   5.341764,
   6.063116,
   6.476459,
   6.932425,
   7.438545,
   8.004803,
   8.644854,
   9.377389,
   10.22669,
   10.70383,
   11.2195,
   12.31018,
   13.44455,
   14.58591,
   15.14197,
   15.66215,
   16.13597,
   16.52831,
   16.82318,
   16.93195,
   17.00031,
   17.00908,
   16.95224,
   16.83146,
   16.65261,
   16.41904,
   16.13422,
   15.80241,
   15.42847,
   14.57579,
   13.62136,
   11.58459,
   10.57831,
   9.617676,
   8.71958,
   7.892474,
   7.138005,
   6.45317,
   5.832494,
   5.269815,
   4.759465,
   4.296802,
   3.87826,
   3.501087,
   3.162998,
   2.86185,
   2.361305,
   1.979453,
   1.694118,
   1.483421,
   1.330977,
   1.130684,
   0.9970175,
   0.8886021,
   0.7902386,
   0.6974285,
   0.6094864,
   0.5269001,
   0.4503983,
   0.3806335,
   0.318055,
   0.2628588,
   0.2149808,
   0.1741212,
   0.1397895,
   0.1113613,
   0.08813697,
   0.0693946,
   0.05466062,
   0.0436368,
   0.03523196,
   0.02902452,
   0.02445839,
   0.02101967,
   0.01838128,
   0.01632314,
   0.01469212,
   0.01337936,
   0.01230634,
   0.01141582,
   0.0106657,
   0.01002479,
   0.009469839,
   0.009469839,
   0.009469839,
   0};
   graph = new TGraph(95,Signal_fx59,Signal_fy59);
   graph->SetName("Signal");
   graph->SetTitle("Projection of modelTot");
   graph->SetFillColor(1);
   graph->SetLineStyle(2);
   graph->SetLineWidth(3);
   graph->SetMarkerStyle(20);
   graph->Draw("l");
   
   Double_t ModelTot_fx60[132] = {
   4856,
   4856,
   4880,
   4883,
   4886,
   4892,
   4895,
   4898,
   4901,
   4904,
   4910,
   4916,
   4922,
   4928,
   4931,
   4934,
   4940,
   4946,
   4949,
   4952,
   4955,
   4958,
   4964,
   4970,
   4973,
   4976,
   4979,
   4982,
   4985,
   4988,
   4991,
   4994,
   5000,
   5003,
   5006,
   5009,
   5012,
   5015,
   5018,
   5021,
   5024,
   5030,
   5033,
   5036,
   5039,
   5042,
   5045,
   5048,
   5060,
   5072,
   5096,
   5108,
   5120,
   5132,
   5138,
   5144,
   5150,
   5156,
   5162,
   5168,
   5180,
   5192,
   5204,
   5216,
   5222,
   5228,
   5234,
   5240,
   5243,
   5246,
   5249,
   5252,
   5255,
   5258,
   5261,
   5264,
   5270,
   5276,
   5288,
   5294,
   5300,
   5306,
   5312,
   5318,
   5324,
   5330,
   5336,
   5342,
   5348,
   5354,
   5360,
   5372,
   5384,
   5396,
   5408,
   5420,
   5432,
   5456,
   5480,
   5504,
   5528,
   5552,
   5576,
   5600,
   5624,
   5648,
   5672,
   5696,
   5720,
   5744,
   5768,
   5792,
   5816,
   5840,
   5864,
   5888,
   5912,
   5936,
   5960,
   5984,
   6008,
   6032,
   6056,
   6080,
   6104,
   6128,
   6152,
   6176,
   6200,
   6200,
   6224,
   6224};
   Double_t ModelTot_fy60[132] = {
   0,
   19.9488,
   19.9488,
   19.95049,
   20.03919,
   20.32232,
   20.42133,
   20.4463,
   20.38631,
   20.24649,
   19.81875,
   19.33414,
   18.87288,
   18.48019,
   18.33346,
   18.22967,
   18.14044,
   18.09947,
   18.03987,
   17.93092,
   17.76937,
   17.56425,
   17.10719,
   16.73632,
   16.61879,
   16.55064,
   16.53141,
   16.563,
   16.64704,
   16.78677,
   16.98298,
   17.22945,
   17.77707,
   18.02141,
   18.21156,
   18.33438,
   18.38029,
   18.3384,
   18.20428,
   17.98155,
   17.68374,
   16.97458,
   16.63308,
   16.33648,
   16.10074,
   15.92707,
   15.81112,
   15.74395,
   15.65057,
   15.42044,
   14.9222,
   14.67402,
   14.53517,
   14.5307,
   14.59701,
   14.71784,
   14.89621,
   15.13349,
   15.43144,
   15.78982,
   16.62007,
   17.54007,
   18.48754,
   19.37981,
   19.76521,
   20.07196,
   20.28423,
   20.38176,
   20.35178,
   20.25684,
   20.09857,
   19.88277,
   19.61274,
   19.2919,
   18.92447,
   18.51526,
   17.593,
   16.57014,
   14.40004,
   13.32914,
   12.30549,
   11.34616,
   10.45973,
   9.647961,
   8.907835,
   8.233867,
   7.619789,
   7.059828,
   6.549198,
   6.084193,
   5.661918,
   4.936061,
   4.353003,
   3.892186,
   3.531116,
   3.247758,
   3.025647,
   2.694747,
   2.441468,
   2.223394,
   2.024248,
   1.838606,
   1.665047,
   1.503472,
   1.354126,
   1.217233,
   1.092837,
   0.9807323,
   0.8804512,
   0.7913005,
   0.7124169,
   0.6428343,
   0.5815478,
   0.5275671,
   0.4801829,
   0.4388891,
   0.4024094,
   0.3701554,
   0.3414191,
   0.3155479,
   0.2920871,
   0.2706993,
   0.2511233,
   0.2331505,
   0.2166104,
   0.2013608,
   0.1872811,
   0.1742676,
   0.1622298,
   0.1622298,
   0.1622298,
   0};
   graph = new TGraph(132,ModelTot_fx60,ModelTot_fy60);
   graph->SetName("ModelTot");
   graph->SetTitle("Projection of modelTot");
   graph->SetFillColor(1);

   ci = TColor::GetColor("#ff0000");
   graph->SetLineColor(ci);
   graph->SetLineWidth(3);
   graph->SetMarkerStyle(20);
   graph->Draw("l");
   
   Double_t h_dataKeeRun3Trig2PhotAll_fx3020[55] = {
   4892,
   4916,
   4940,
   4964,
   4988,
   5012,
   5036,
   5060,
   5084,
   5108,
   5132,
   5156,
   5180,
   5204,
   5228,
   5252,
   5276,
   5300,
   5324,
   5348,
   5372,
   5396,
   5420,
   5444,
   5468,
   5492,
   5516,
   5540,
   5564,
   5588,
   5612,
   5636,
   5660,
   5684,
   5708,
   5732,
   5756,
   5780,
   5804,
   5828,
   5852,
   5876,
   5900,
   5924,
   5948,
   5972,
   5996,
   6020,
   6044,
   6068,
   6092,
   6116,
   6140,
   6164,
   6188};
   Double_t h_dataKeeRun3Trig2PhotAll_fy3020[55] = {
   27,
   21,
   19,
   13,
   18,
   20,
   19,
   20,
   17,
   10,
   15,
   13,
   15,
   17,
   15,
   13,
   17,
   13,
   5,
   5,
   8,
   6,
   4,
   7,
   1,
   1,
   3,
   2,
   0,
   1,
   3,
   2,
   1,
   2,
   0,
   2,
   1,
   0,
   1,
   0,
   0,
   0,
   0,
   0,
   1,
   0,
   2,
   1,
   0,
   0,
   0,
   0,
   1,
   0,
   0};
   Double_t h_dataKeeRun3Trig2PhotAll_felx3020[55] = {
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12};
   Double_t h_dataKeeRun3Trig2PhotAll_fely3020[55] = {
   5.163771,
   4.545807,
   4.320219,
   3.558662,
   4.202887,
   4.434448,
   4.320219,
   4.434448,
   4.082184,
   3.108694,
   3.82938,
   3.558662,
   3.82938,
   4.082184,
   3.82938,
   3.558662,
   4.082184,
   3.558662,
   2.159691,
   2.159691,
   2.768386,
   2.379931,
   1.914339,
   2.58147,
   0.8272462,
   0.8272462,
   1.632705,
   1.291815,
   0,
   0.8272462,
   1.632705,
   1.291815,
   0.8272462,
   1.291815,
   0,
   1.291815,
   0.8272462,
   0,
   0.8272462,
   0,
   0,
   0,
   0,
   0,
   0.8272462,
   0,
   1.291815,
   0.8272462,
   0,
   0,
   0,
   0,
   0.8272462,
   0,
   0};
   Double_t h_dataKeeRun3Trig2PhotAll_fehx3020[55] = {
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12,
   12};
   Double_t h_dataKeeRun3Trig2PhotAll_fehy3020[55] = {
   6.260244,
   5.655182,
   5.435196,
   4.697573,
   5.321007,
   5.546519,
   5.435196,
   5.546519,
   5.203719,
   4.26695,
   4.958738,
   4.697573,
   4.958738,
   5.203719,
   4.958738,
   4.697573,
   5.203719,
   4.697573,
   3.382473,
   3.382473,
   3.945142,
   3.583642,
   3.162753,
   3.770281,
   2.299527,
   2.299527,
   2.918186,
   2.63786,
   1.147874,
   2.299527,
   2.918186,
   2.63786,
   2.299527,
   2.63786,
   1.147874,
   2.63786,
   2.299527,
   1.147874,
   2.299527,
   1.147874,
   1.147874,
   1.147874,
   1.147874,
   1.147874,
   2.299527,
   1.147874,
   2.63786,
   2.299527,
   1.147874,
   1.147874,
   1.147874,
   1.147874,
   2.299527,
   1.147874,
   1.147874};
   grae = new TGraphAsymmErrors(55,h_dataKeeRun3Trig2PhotAll_fx3020,h_dataKeeRun3Trig2PhotAll_fy3020,h_dataKeeRun3Trig2PhotAll_felx3020,h_dataKeeRun3Trig2PhotAll_fehx3020,h_dataKeeRun3Trig2PhotAll_fely3020,h_dataKeeRun3Trig2PhotAll_fehy3020);
   grae->SetName("h_dataKeeRun3Trig2PhotAll");
   grae->SetTitle("Histogram of dataKeeRun3Trig2PhotAll_plot__B_plus_M");
   grae->SetFillColor(1);
   grae->SetLineWidth(2);
   grae->SetMarkerStyle(8);
   grae->Draw("p");
   
   TH1D *frame_b9d0be0__20 = new TH1D("frame_b9d0be0__20","A RooPlot of \"#it{m(K^{#plus}e^{#plus}e^{#minus})} [MeV/#it{c}^{2}]\"",55,4880,6200);
   frame_b9d0be0__20->SetBinContent(1,34.92326);
   frame_b9d0be0__20->SetMaximum(34.92326);
   frame_b9d0be0__20->SetEntries(1);
   frame_b9d0be0__20->SetDirectory(0);
   frame_b9d0be0__20->SetStats(0);
   frame_b9d0be0__20->SetLineWidth(2);
   frame_b9d0be0__20->SetMarkerStyle(20);
   frame_b9d0be0__20->GetXaxis()->SetTitle("#it{m(K^{#plus}e^{#plus}e^{#minus})} [MeV/#it{c}^{2}]");
   frame_b9d0be0__20->GetXaxis()->SetNdivisions(505);
   frame_b9d0be0__20->GetXaxis()->SetLabelFont(132);
   frame_b9d0be0__20->GetXaxis()->SetLabelOffset(0.01);
   frame_b9d0be0__20->GetXaxis()->SetLabelSize(0.06);
   frame_b9d0be0__20->GetXaxis()->SetTitleSize(0.072);
   frame_b9d0be0__20->GetXaxis()->SetTitleOffset(0.95);
   frame_b9d0be0__20->GetXaxis()->SetTitleFont(132);
   frame_b9d0be0__20->GetYaxis()->SetTitle("Candidates / (24 MeV/#it{c}^{2})");
   frame_b9d0be0__20->GetYaxis()->SetLabelFont(132);
   frame_b9d0be0__20->GetYaxis()->SetLabelOffset(0.01);
   frame_b9d0be0__20->GetYaxis()->SetLabelSize(0.06);
   frame_b9d0be0__20->GetYaxis()->SetTitleSize(0.072);
   frame_b9d0be0__20->GetYaxis()->SetTitleOffset(0.95);
   frame_b9d0be0__20->GetYaxis()->SetTitleFont(132);
   frame_b9d0be0__20->GetZaxis()->SetLabelFont(132);
   frame_b9d0be0__20->GetZaxis()->SetLabelSize(0.06);
   frame_b9d0be0__20->GetZaxis()->SetTitleSize(0.072);
   frame_b9d0be0__20->GetZaxis()->SetTitleOffset(1.2);
   frame_b9d0be0__20->GetZaxis()->SetTitleFont(132);
   frame_b9d0be0__20->Draw("AXISSAME");
   
   TLegend *leg = new TLegend(0.55,
                              0.62 - gStyle->GetPadTopMargin(),
                              0.9,
                              0.9 - gStyle->GetPadTopMargin());
   leg->SetBorderSize(0);
   leg->SetTextFont(132);
   leg->SetTextSize(0.0576);
   leg->SetLineColor(0);
   leg->SetLineStyle(1);
   leg->SetLineWidth(2);
   leg->SetFillColor(0);
   leg->SetFillStyle(1001);
   TLegendEntry *entry=leg->AddEntry("Data","Data 4 fb^{-1}","lep");
   entry->SetLineColor(1);
   entry->SetLineStyle(1);
   entry->SetLineWidth(1);
   entry->SetMarkerColor(1);
   entry->SetMarkerStyle(21);
   entry->SetMarkerSize(1);
   entry=leg->AddEntry("ModelTot","Total fit","l");
   entry->SetLineColor(1);
   entry->SetLineStyle(1);
   entry->SetLineWidth(1);
   entry->SetMarkerColor(1);
   entry->SetMarkerStyle(21);
   entry->SetMarkerSize(1);
   entry=leg->AddEntry("Signal","#it{B^{#plus}#rightarrow K^{+}e^{#plus}e^{#minus}}","l");
   entry->SetLineColor(1);
   entry->SetLineStyle(1);
   entry->SetLineWidth(1);
   entry->SetMarkerColor(1);
   entry->SetMarkerStyle(21);
   entry->SetMarkerSize(1);
   entry=leg->AddEntry("Charm","#it{B^{#plus}#rightarrow J/#kern[-.3pt]{#psi}(e^{#plus}e^{#minus})K^{#plus}}","f");
   entry->SetLineColor(1);
   entry->SetLineStyle(1);
   entry->SetLineWidth(1);
   entry->SetMarkerColor(1);
   entry->SetMarkerStyle(21);
   entry->SetMarkerSize(1);
   entry=leg->AddEntry("Prc","Part. Reco.","f");
   entry->SetLineColor(1);
   entry->SetLineStyle(1);
   entry->SetLineWidth(1);
   entry->SetMarkerColor(1);
   entry->SetMarkerStyle(21);
   entry->SetMarkerSize(1);
   entry=leg->AddEntry("Comb","Combinatorial","f");
   entry->SetLineColor(1);
   entry->SetLineStyle(1);
   entry->SetLineWidth(1);
   entry->SetMarkerColor(1);
   entry->SetMarkerStyle(21);
   entry->SetMarkerSize(1);
   leg->Draw();
   
   TPaveText *pt = new TPaveText(0.54,
                                 0.9- gStyle->GetPadTopMargin(),
                                 0.79,
                                 0.98 - gStyle->GetPadTopMargin(),"BRNDC");
   pt->SetBorderSize(0);
   pt->SetFillColor(0);
   pt->SetLineWidth(2);
   pt->SetTextAlign(12);
   pt->SetTextFont(132);
   TText *AText = pt->AddText("LHCb");
   pt->Draw();
   cFit->Modified();
   cFit->cd();
   cFit->SetSelected(cFit);
}
