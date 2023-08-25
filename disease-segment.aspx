<%@ Page Title="Disease Segment | Genetic Diagnostic Center" Language="C#" MasterPageFile="~/MasterParent.master" %>
<%@ MasterType VirtualPath="~/MasterParent.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        $(function () {
            $('.basicList li').click(function () {
                //alert($(this).text());
                let linkText = $(this).text().replace(/\s+/g, '-').toLowerCase();;
                //alert(linkText)
                window.location.replace("http://" + window.location.host + "/contact-us?test=" + linkText + "#enq");
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span class="space80"></span>
    <span class="space50"></span>
      <!-- Page Header Starts -->
    <div class="pgHeader1">
        <div class="headerOverlay">
            <div class="col_1140">
                <div class="pg_TB_pad">
                    <h1 class="pageH1 clrWhite">Disease Segment</h1>
                    <ul class="bCrumb">
                        <li><a href="<%= Master.rootPath %>">Home</a></li>
                        <li>&raquo;</li>
                        <li>Disease Segment</li>
                    </ul>
                    <div class="float_clear"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header Ends -->
    <div class="col_1140" id="ds">
         <span class="space40"></span>
        <div class="section-title">
            <h2>Disease Segment Tests</h2>
        </div>
        <h2 class="semiBold large">Hematology</h2>
            <span class="shortLine themeBgPrime"></span>
           
            <div class="col_340">
                <div class="pad_20">
                    <img src="images/hematology.jpg"  class="width100"/>
                </div>
            </div>
             <div class="col_800">
                 <div class="pad_20">
                     <span class="space10"></span>
                     <span class="small fontRegular line-ht-5">Hematology is the study of blood and blood disorders. Hematologists and hematopathologists are highly trained healthcare providers who specialize in diseases of the blood and blood components. These include blood and bone marrow cells. Hematological tests can help diagnose anemia, infection, hemophilia, blood-clotting disorders, and leukemia.</span>
                 </div>
            </div>
            <div class="float_clear"></div>
            <h3 class="semiBold txtCenter medium mrg_B_10">Available Tests</h3>
        <div class="col_1_2">
            <div class="pad_15">
                <div id="hematology">
                    <ul class="basicList">
                        <li>Alpha thalassemia (HBA1 & HBA2) deletion/duplication analysis</li>
                        <li>Alpha thalassemia gene analysis (HBA1 & HBA2)</li>
                        <li>Aplastic anemia gene panel</li>
                        <li>Beta thalassemia (HBB) deletion/duplication analysis</li>
                        <li><span></span>Beta thalassemia [HBB] gene analysis</li>
                        <li><span></span>Congenital afibrinogenemia gene panel</li>
                        <li><span></span>Congenital dyserythropoietic anemia gene panel</li>
                        <li><span></span>Diamond blackfan anemia gene panel</li>
                        <li><span></span>Dyskeratosis congenita gene panel</li>
                        <li><span></span>Factor V Leiden (F5) mutation analysis (exon 10)</li>
                        <li><span></span>Factor VII deficiency (F7) gene analysis</li>
                        <li><span></span>Fanconi anemia gene panel</li>
                        <li><span></span>Haemophilia (F8 & F9) gene panel</li>
                        <li><span></span>Hereditary elliptocytosis gene panel</li>
                        <li><span></span>MTHFR gene analysis - 2 exons (5 & 8)</li>
                        <li><span></span>Sickle cell anemia (HBB) gene analysis (exon 1)</li>
                        <li><span></span>Sideroblastic anaemia gene panel</li>
                        <li><span></span>Hereditary spherocytosis gene panel</li>
                        <li><span></span>Hemophagocytic lymphohistiocytosis (HLH) gene panel</li>
                        <li><span></span>Factor VII deficiency (F7) gene analysis</li>
                        <li><span></span>Haemophilia (F8 & F9) gene panel (analysis of the F8 inversion is not included)</li>
                        <li><span></span>Sideroblastic anaemia gene panel</li>
                        <li><span></span>Von Willebrand disease (VWF) gene analysis</li>
                        <li><span></span>Haemophilia B (F9) gene analysis</li>
                        <li><span></span>Hemophagocytic lymphohistiocytosis (HLH) gene panel</li>
                        <li><span></span>Factor VII deficiency (F7) gene analysis</li>
                        <li>Haemophilia (F8 & F9) gene panel (analysis of the F8 inversion is not included)</li>
                        <li>Sideroblastic anaemia gene panel</li>
                        <li>Hereditary Hemolytic Anemia Panel (For RBC membrane disorders and Enzymopathies)</li>
                        <li>Haemophilia B (F9) gene analysis</li>
                        <li>Iron-refractory iron deficiency anemia (TMPRSS6) gene analysis</li>
                        <li>Methemoglobinemia (CYB5R3) gene analysis</li>
                        <li>G6PD gene sequencing</li>
                        <li>Thrombophilia gene panel</li>
                        <li>[Combo] Clinical Exome Sequencing & Hemolytic uremic syndrome (CFH, CFHR1, CFHR2, CFHR3 & CFHR5) deletion/duplication analysis [NGS,MLPA].</li>
                    </ul>
                </div>
            </div>
            </div>
       <%-- </div>--%>
        <div class="col_1_2">
            <div class="pad_15">
                <div id="hematology">
                    <ul class="basicList">
                        <li>Hemophagocytic lymphohistiocytosis deletion/duplication analysis</li>
                        <li>Fanconi's Anemia</li>
                        <li>Haemophilia A (F8) intron 22 inversion</li>
                        <li>[Combo] Haemophilia A (F8) gene analysis (along with analysis of the F8-intron 22 inversion)</li>
                        <li>Hereditary Hemolytic Anemia Panel (For RBC membrane disorders and Enzymopathies)</li>
                        <li>Haemophilia A (F8) gene analysis (analysis of the F8 inversion is not included)</li>
                        <li>Haemophilia B (F9) gene analysis</li>
                        <li>Protein S deficiency (PROS1 gene deletion/duplication analysis )</li>
                        <li>Wiskott Aldrich syndrome (WAS) gene analysis</li>
                        <li>Iron-refractory iron deficiency anemia (TMPRSS6) gene analysis</li>
                        <li>Congenital amegakaryocytic thrombocytopenia (MPL) gene analysis</li>
                        <li>Methemoglobinemia (CYB5R3) gene analysis</li>
                        <li>Bone marrow failure syndrome gene panel</li>
                        <li>Fanconi anemia of complementation group A (FANCA) deletion/duplication analysis</li>
                        <li>G6PD gene sequencing</li>
                        <li>Aplastic anemia gene panel</li>
                        <li>Congenital afibrinogenemia gene panel</li>
                        <li>Congenital dyserythropoietic anemia gene panel</li>
                        <li>Diamond blackfan anemia gene panel</li>
                        <li>Dyskeratosis congenita gene panel</li>
                        <li>Fanconi anemia gene panel</li>
                        <li>Hereditary elliptocytosis gene panel</li>
                        <li>Hereditary spherocytosis gene panel</li>
                        <li>Hemophagocytic lymphohistiocytosis (HLH) gene panel</li>
                        <li>Haemophilia A (F8) gene analysis (analysis of the F8 inversion is not included)</li>
                        <li>Wiskott Aldrich syndrome (WAS) gene analysis.​</li>
                        <li>Congenital amegakaryocytic thrombocytopenia (MPL) gene analysis</li>
                        <li>Bone marrow failure syndrome gene panel</li>
                        <li>CD34+ Stem cell Enumeration (CD45, CD34, 7AAD)</li>
                        <li>Monogenic autoinflammatory panel</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="float_clear"></div>
        <div class="greyLine"></div>
        <span class="space20"></span>

         <h2 class="semiBold large">Gastroentrology</h2>
            <span class="shortLine themeBgPrime"></span>
           
            <div class="col_340">
                <div class="pad_20">
                    <img src="images/gastronology.png" class="width100" />
                </div>
            </div>
             <div class="col_800">
                 <div class="pad_20">
                     <span class="space10"></span>
                     <span class="small fontRegular line-ht-5">Gastroenterology is the study of the normal function and diseases of the esophagus, stomach, small intestine, colon and rectum, pancreas, gallbladder, bile ducts and liver. It involves a detailed understanding of the normal action (physiology) of the gastrointestinal organs including the movement of material through the stomach and intestine (motility), the digestion and absorption of nutrients into the body, removal of waste from the system, and the function of the liver as a digestive organ.</span>
                 </div>
            </div>
            <div class="float_clear"></div>
            <h3 class="semiBold txtCenter medium mrg_B_10">Available Tests</h3>

        <div class="col_1_2">
            <div class="pad_15">
                <div id="gastroentrology">
                    <ul class="basicList">
                        <li>UGT1A1 repeat analysis</li>
                        <li>Hemochromatosis gene panel</li>
                        <li>Progressive familial intrahepatic cholestasis gene panel</li>
                        <li>Wilson disease (ATP7B) gene analysis</li>
                        <li>Alagille syndrome gene panel</li>
                        <li>Wilson disease (ATP7B) deletion/duplication analysis</li>
                        <li>Progressive familial intrahepatic cholestasis-3 (ABCB4) deletion/duplication analysis</li>
                        <li>Gilbert syndrome (UGT1A1) gene analysis (only point mutation analysis)</li>
                        <li>Polycystic liver disease gene panel</li>
                        <li>Tyrosinemia gene analysis</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col_1_2">
            <div class="pad_15">
                <div id="gastroentrology">
                    <ul class="basicList">
                        <li>Congenital hepatic fibrosis gene panel</li>
                        <li>Hemochromatosis gene panel</li>
                        <li>Progressive familial intrahepatic cholestasis gene panel</li>
                        <li>Wilson disease (ATP7B) gene analysis</li>
                        <li>Alagille syndrome gene panel</li>
                        <li>Aplastic anemia gene panel</li>
                        <li>Gilbert or Crigler-Najjar syndrome (UGT1A1) gene analysis (only point mutations)</li>
                        <li>Polycystic liver disease gene panel</li>
                        <li>Tyrosinemia gene panel</li>
                        <li>Congenital hepatic fibrosis gene panel</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="float_clear"></div>
        <span class="greyLine"></span>

         <h2 class="semiBold large">Hemato-oncalogist</h2>
            <span class="shortLine themeBgPrime"></span>
           
            <div class="col_340">
                <div class="pad_20">
                    <img src="images/hemato-oncology.jpg"  class="width100"/>
                </div>
            </div>
             <div class="col_800">
                 <div class="pad_20">
                     <span class="space10"></span>
                     <span class="small fontRegular line-ht-5">A hematologist oncologist is a doctor who specializes in treating cancers of the blood. They have extra training in the blood system, lymphatic system, bone marrow, and cancers. The term “hematologist oncologist” .</span>
                 </div>
            </div>
            <div class="float_clear"></div>
            <h3 class="semiBold txtCenter medium mrg_B_10">Available Tests</h3>
        <div class="col_1_2">
            <div class="pad_15">
                <div id="hematoOncalogy">
                    <ul class="basicList">
                        <li>Myeloproliferative neoplasm (MPN) reflex panel NGS</li>
                        <li>Comprehensive ALL Panel(FISH,Karyotyping,MLPA,NGS,RT-PCR)</li>
                        <li>FISH for FGFR1(8p11.2) gene rearrangement, MPN</li>
                        <li>JAK2 gene analysis - Exon 14</li>
                        <li>FISH for t(14;20), IGH/MAFB,MM</li>
                        <li>FISH for t(6;9)(p22;q34), DEK/NUP, AML</li>
                        <li>BCR-ABL detection by NGS (common, rare and novel transcripts)</li>
                        <li>ALL risk stratification gene panel - T-ALL</li>
                        <li>BCR-ABL qualitative gene fusion analysis (Major,Minor & Micro)</li>
                        <li>CLL prognostication/risk stratification gene panel</li>
                        <li>MDS-AML Familial gene panel</li>
                        <li>JMML risk stratification gene panel</li>
                        <li>MPN - CALR (exon 9) gene analysis</li>
                        <li>NPM1 gene analysis (Hot Spot - exon 12)</li>
                        <li>CMML (Chronic myelomonocytic Leukemia) risk stratification gene panel</li>
                        <li>CEL/HES (Chronic eosinophilic leukemia/hyper eosinophilic syndrome) prognostic gene panel</li>
                        <li>Acute Leukemia Classifier Panel - Flowcytometry</li>
                        <li>Comprehensive leukemia panel - 57 gene</li>
                        <li>[Combo] Myeloproliferative neoplasm (MPN) reflex panel with BCR-ABL [RT-PCR, NGS]</li>
                    </ul>
                </div>
            </div>
        </div>
         <div class="col_1_2">
            <div class="pad_15">
                <div id="hematoOncalogy">
                    <ul class="basicList">
                        <li>FLT3-ITD mutant allele burden analysis</li>
                        <li>FISH for JAK2 (9p24) gene rearrangement, MPN</li>
                        <li>Myeloproliferative Neoplasms panel(MPN),4 markers- PDGFRA gene rearrangement, PDGFRB gene rearrangement, JAK2 gene rearrangement, FGFR1 gene rearrangement.FISH</li>
                        <li>Leukemia/Lymphoma Panel- Flowcytometry</li>
                        <li>FISH for chromosome 4/10/17, ALL</li>
                        <li>BCR-ABL1 MRD</li>
                        <li>ALL risk stratification gene panel - B-ALL</li>
                        <li>AML risk stratification gene panel</li>
                        <li>BCR-ABL quantitative (International Scale) gene fusion analysis</li>
                        <li>Chronic myeloproliferative disorder gene panel (CMPD)</li>
                        <li>CML/CNL (atypical) - prognostication gene panel</li>
                        <li>JAK2 gene analysis - 2 exons (12, 14) by NGS</li>
                        <li>MDS prognostication and risk stratification gene panel</li>
                        <li>MPN prognostication and risk stratification gene panel</li>
                        <li>PML-RARA gene fusion analysis (Qualitative)</li>
                        <li>Acute Leukemia Screen Panel - Flowcytometry</li>
                        <li>Body fluid Leukemia/Lymphoma screen – Flowcytometry</li>
                        <li>Chronic Lymphoid Leukemia Panel - Flowcytometry</li>
                        <li>Myelodysplasia Panel - Flowcytometry</li>
                        <li>Karyotyping (Leukemia)</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="float_clear"></div>
        <span class="greyLine"></span>

         <h2 class="semiBold large">Immunology</h2>
            <span class="shortLine themeBgPrime"></span>
           
            <div class="col_340">
                <div class="pad_20">
                    <img src="images/immunology.jpg"  class="width100"/>
                </div>
            </div>
             <div class="col_800">
                 <div class="pad_20">
                     <span class="space10"></span>
                     <span class="small fontRegular line-ht-5">Immunology is the study of the immune system and is a very important branch of the medical and biological sciences. The immune system protects us from infection through various lines of defence. If the immune system is not functioning as it should, it can result in disease, such as autoimmunity, allergy and cancer. It is also now becoming clear that immune responses contribute to the development of many common disorders not traditionally viewed as immunologic, including metabolic, cardiovascular, and neurodegenerative conditions such as Alzheimer’s.</span>
                 </div>
            </div>
            <div class="float_clear"></div>
            <h3 class="semiBold txtCenter medium mrg_B_10">Available Tests</h3>
            <div class="col_1_2">
                <div class="pad_15">
                    <div id="immunology">
                        <ul class="basicList">
                            <li>Agammaglobulinemia (BTK) gene analysis</li>
                            <li>Chediak-Higashi syndrome (LYST) gene analysis</li>
                            <li>Congenital neutropenia gene panel</li>
                            <li>Primary immunodeficiency gene panel</li>
                            <li>Severe combined immunodeficiency (SCID) gene panel</li>
                            <li>HLA Typing confirmation (High resolution)</li>
                            <li>TPMT and NUDT15 gene analysis</li>
                            <li>HLA B51 testing</li>
                            <li>HLA TYPING-HR (HLA A*,B*,C*,DRB1*,DQB1* and DPB1*</li>
                            <li>CYP3A5 testing for Tacrolimus dosing</li>
                            <li>Chimerism [post-engraftment monitoring]</li>
                            <li>HLA Typing High resolution (HLA A, B, C, DRB1, DQB1)</li>
                            <li>HLA-B* 1502 for carbamazepine toxicity</li>
                            <li>Hyper-immunoglobulin E syndrome (DOCK8) gene sequencing</li>
                            <li>Thrombotic Thrombocytopenic Purpura (ADAMTS13) gene analysis</li>
                        </ul>
                    </div>
                </div>
            </div>
        <div class="col_1_2">
            <div class="pad_15">
                <div id="immunology">
                    <ul class="basicList">
                        <li>Lymphoproliferative Disorder Classifier Panel - Flowcytometry</li>
                        <li>Chimerism testing</li>
                        <li>HLA typing low resolution (HLA A, B, DRB1)</li>
                        <li>HLA Typing High resolution (HLA A, B, C, DRB1, DQB1) - Expedited TAT</li>
                        <li>HLA B27 testing</li>
                        <li>IKBKG deletion/duplication analysis</li>
                        <li>Agammaglobulinemia (BTK) gene analysis</li>
                        <li>Chediak-Higashi syndrome (LYST) gene analysis</li>
                        <li>Congenital neutropenia gene panel</li>
                        <li>Primary immunodeficiency gene panel</li>
                        <li>Severe combined immunodeficiency (SCID) gene panel</li>
                        <li>Hyper-immunoglobulin E syndrome (DOCK8) gene sequencing</li>
                        <li>Thrombotic Thrombocytopenic Purpura (ADAMTS13) gene analysis</li> 
                    </ul>
                </div>
            </div>
        </div>
        <div class="float_clear"></div>
        <span class="greyLine"></span>

         <h2 class="semiBold large">Metabolic Disorder</h2>
            <span class="shortLine themeBgPrime"></span>
           
            <div class="col_340">
                <div class="pad_20">
                    <img src="images/mertabolic-disorders.jpg" class="width100" />
                </div>
            </div>
             <div class="col_800">
                 <div class="pad_20">
                     <span class="space10"></span>
                     <span class="small fontRegular line-ht-5">A metabolic disorder occurs when abnormal chemical reactions in your body disrupt this process. When this happens, you might have too much of some substances or too little of other ones that you need to stay healthy. There are different groups of disorders.</span>
                 </div>
            </div>
            <div class="float_clear"></div>
            <h3 class="semiBold txtCenter medium mrg_B_10">Available Tests</h3>

            <div class="col_1_2">
                <div class="pad_15">
                    <div id="metabolic">
                        <ul class="basicList">
                            <li>Fabry disease (GLA) gene analysis</li>
                            <li>Fabry disease (GLA) deletion/duplication analysis</li>
                            <li>Citrullinemia gene panel</li>
                            <li>Fanconi bickel syndrome (SLC2A2) gene analysis</li>
                            <li>Fatty acid oxidation disorders gene panel</li>
                            <li>GLUT1 deficiency (SLC2A1) deletion/duplication analysis</li>
                            <li>GLUT1 deficiency (SLC2A1) gene analysis</li>
                            <li>Glycine encephalopathy (GLDC) deletion/duplication analysis</li>
                            <li>Glycine encephalopathy gene panel</li>
                            <li>Glycogen storage disorder gene panel</li>
                            <li>Glycosylation (CDG) disorders gene panel</li>
                            <li>Homocystinuria gene panel</li>
                            <li>Hyperargininemia (ARG1) gene analysis</li>
                            <li>Leigh syndrome & mitochondrial encephalopathy gene panel</li>
                            <li>Maple syrup urine disease gene panel</li>
                            <li>McArdle disease (PYGM) gene analysis</li>
                            <li>Menkes disease (ATP7A) gene analysis</li>
                            <li>Methylmalonic aciduria gene panel</li>
                            <li>Mucopolysaccharidosis gene panel</li>
                            <li>Niemann-Pick disease gene panel</li>
                            <li>Organic acidemia gene panel</li>
                            <li>Peroxisomal disorder gene panel (includes adrenoleukodystrophy)</li>
                            <li>Pompe disease (GAA) deletion/duplication analysis</li>
                            <li>Pompe disease (GAA) gene analysis</li>
                            <li>Urea cycle defects gene panel</li>
                            <li>Ornithine transcarbamylase deficiency (OTC) deletion/duplication analysis</li>
                            <li>GM1 gangliosidosis/mucopolysaccharidosis type IVB (GLB1) gene analysis</li>
                            <li>Hereditary fructose intolerance (ALDOB) gene sequencing</li>
                            <li>Sialidosis (NEU1) gene analysis</li>
                            <li>Alpha-mannosidosis (MAN2B1) gene analysis</li>
                            <li>Farber lipogranulomatosis (ASAH1) gene analysis</li>
                            <li>Fucosidosis (FUCA1) gene analysis</li>
                            <li>Galactosemia (GALT) gene analysis</li>
                            <li>Galactosialidosis (CTSA) gene analysis</li>
                            <li>Phenylketonuria (PAH) gene analysis</li>
                        </ul>
                    </div>
                </div>
            </div>
           <div class="col_1_2">
               <div class="pad_15">
                   <div id="metabolic">
                       <ul class="basicList">
                           <li>Lysosomal acid lipase deficiency (LIPA) gene analysis</li>
                           <li>Biotinidase deficiency (BTD) gene analysis</li>
                           <li>Gaucher disease (GBA) gene analysis</li>
                           <li>Fabry disease (GLA) gene analysis</li>
                           <li>Citrullinemia gene panel</li>
                           <li>Fanconi bickel syndrome (SLC2A2) gene analysis</li>
                           <li>GLUT1 deficiency (SLC2A1) gene analysis</li>
                           <li>Glycine encephalopathy gene panel</li>
                           <li>Glycogen storage disorder gene panel</li>
                           <li>Glycosylation (CDG) disorders gene panel</li>
                           <li>Homocystinuria gene panel</li>
                           <li>Hyperargininemia (ARG1) gene analysis</li>
                           <li>Leigh syndrome & mitochondrial encephalopathy gene panel</li>
                           <li>Maple syrup urine disease gene panel</li>
                           <li>McArdle disease (PYGM) gene analysis</li>
                           <li>Menkes disease (ATP7A) gene analysis</li>
                           <li>Methylmalonic aciduria gene panel</li>
                           <li>Mucopolysaccharidosis gene panel</li>
                           <li>Niemann-Pick disease gene panel</li>
                           <li>Organic acidemia gene panel</li>
                           <li>Peroxisomal disorder gene panel (includes adrenoleukodystrophy)</li>
                           <li>Pompe disease (GAA) gene analysis</li>
                           <li>Urea cycle defects gene panel</li>
                           <li>GM1 gangliosidosis/mucopolysaccharidosis type IVB (GLB1) gene analysis</li>
                           <li>Hereditary fructose intolerance (ALDOB) gene sequencing</li>
                           <li>Sialidosis (NEU1) gene analysis</li>
                           <li>Alpha-mannosidosis (MAN2B1) gene analysis</li>
                           <li>Farber lipogranulomatosis (ASAH1) gene analysis</li>
                           <li>Fucosidosis (FUCA1) gene analysis</li>
                           <li>Galactosemia (GALT) gene analysis</li>
                           <li>Galactosialidosis (CTSA) gene analysis</li>
                           <li>Phenylketonuria (PAH) gene analysis</li>
                           <li>Lysosomal acid lipase deficiency (LIPA) gene analysis</li>
                           <li>Biotinidase deficiency (BTD) gene analysis</li>
                           <li>Gaucher disease (GBA) gene analysis</li>
                       </ul>
                   </div>
               </div>
           </div>
        <div class="float_clear"></div>
        <span class="greyLine"></span>

         <h2 class="semiBold large">Nephrology</h2>
            <span class="shortLine themeBgPrime"></span>
           
            <div class="col_340">
                <div class="pad_20">
                    <img src="images/nepherology.jpg"  class="width100"/>
                </div>
            </div>
             <div class="col_800">
                 <div class="pad_20">
                     <span class="space10"></span>
                     <span class="small fontRegular line-ht-5">Nephrology deals with study of the normal working of the kidneys as well as its diseases. The diseases that come under the scope of nephrology include:- Glomerular disorders that affect the tiny filtering systems of the kidneys called the glomerulus.</span>
                 </div>
            </div>
            <div class="float_clear"></div>
            <h3 class="semiBold txtCenter medium mrg_B_10">Available Tests</h3>

        <div class="col_1_2">
            <div class="pad_15">
                <div id="nephrology">
                    <ul class="basicList">
                        <li>Alport syndrome gene panel</li>
                        <li>Bartter syndrome gene panel</li>
                        <li>Meckel Gruber syndrome gene panel</li>
                        <li>Polycystic kidney disease gene panel</li>
                        <li>Primary hyperoxaluria gene panel</li>
                        <li>Xanthinuria gene panel</li>
                        <li>Hemolytic uremic syndrome (CFH, CFHR1 & CFHR3) deletion duplication analysis</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col_1_2">
            <div class="pad_15">
                <div id="nephrology">
                    <ul class="basicList">
                        <li>Alport syndrome gene panel</li>
                        <li>Bartter syndrome gene panel</li>
                        <li>Meckel Gruber syndrome gene panel</li>
                        <li>Polycystic kidney disease gene panel</li>
                        <li>Primary hyperoxaluria gene panel</li>
                        <li>Xanthinuria gene panel</li>
                        <li>Nephrotic syndrome gene panel</li>
                        
                    </ul>
                </div>
            </div>
        </div>
        <div class="float_clear"></div>
        <span class="greyLine"></span>

        <h2 class="semiBold large">Neurology</h2>
            <span class="shortLine themeBgPrime"></span>
           
            <div class="col_340">
                <div class="pad_20">
                    <img src="images/neurology.jpg"  class="width100"/>
                </div>
            </div>
             <div class="col_800">
                 <div class="pad_20">
                     <span class="space10"></span>
                     <span class="small fontRegular line-ht-5">Neurology is the branch of medicine concerned with the study and treatment of disorders of the nervous system. The nervous system is a complex, sophisticated system that regulates and coordinates body activities. It has two major divisions: Central nervous system: the brain and spinal cord.</span>
                 </div>
            </div>
            <div class="float_clear"></div>
            <h3 class="semiBold txtCenter medium mrg_B_10">Available Tests</h3>

            <div class="col_1_2">
                <div class="pad_15">
                    <div id="neurology">
                        <ul class="basicList">
                            <li>MECP2 gene sequencing</li>
                            <li>Ataxia Telengiectasia(chromosome instability syndrome)</li>
                            <li>Fragile X Syndrome</li>
                            <li>Comprehensive neurology panel</li>
                            <li>Rett Syndrome (MECP2) deletion/duplication analysis</li>
                            <li>Rett Syndrome gene panel</li>
                            <li>ATRX gene analysis</li>
                            <li>Brown Vialetto–Van Laere syndrome gene panel</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col_1_2">
                <div class="pad_15">
                    <div id="neurology">
                        <ul class="basicList">
                            <li>DCX & PAFAH1B1 deletion/duplication analysis</li>
                            <li>Familial hemiplegic migraine gene panel</li>
                            <li>Lissencephaly gene panel</li>
                            <li>Microcephaly gene panel</li>
                            <li>Neuronal migration disorder gene panel</li>
                            <li>Pontocerebellar hypoplasia gene panel</li>
                            <li>Brown Vialetto–Van Laere syndrome gene panel</li>
                        </ul>
                    </div>
                </div>
            </div>
        <div class="float_clear"></div>
        <span class="greyLine"></span>

         <h2 class="semiBold large">Neurology-Epilepsy</h2>
            <span class="shortLine themeBgPrime"></span>
           
            <div class="col_340">
                <div class="pad_20">
                    <img src="images/neurology-epliesphy.jpg" class="width100"/>
                </div>
            </div>
             <div class="col_800">
                 <div class="pad_20">
                     <span class="space10"></span>
                     <span class="small line-ht-5 fontRegular">Epilepsy is a central nervous system (neurological) disorder in which brain activity becomes abnormal, causing seizures or periods of unusual behavior, sensations and sometimes loss of awareness.

                        Anyone can develop epilepsy. Epilepsy affects both males and females of all races, ethnic backgrounds and ages.</span>
                 </div>
            </div>
            <div class="float_clear"></div>
            <h3 class="semiBold txtCenter medium mrg_B_10">Available Tests</h3>
            
            <div class="col_1_2">
                <div class="pad_15">
                    <div id="neurology-epilyspy">
                        <ul class="basicList">
                            <li>Dravet syndrome (SCN1A) gene analysis</li>
                            <li>Dravet syndrome (SCN1A) deletion/duplication analysis</li>
                            <li>Epileptic encephalopathy gene panel</li>
                            <li>Familial female mental retardation/epilepsy gene panel</li>
                            <li>Progressive myoclonic epilepsy gene panel</li>
                            <li>Aicardi-Goutieres syndrome gene panel</li>
                            <li>Early infantile epileptic encephalopathy-4 (STXBP1) deletion/duplication analysis</li>
                            <li>TBC1D24 gene analysis</li>
                        </ul>
                    </div>
                </div>
            </div>
         <div class="col_1_2">
                <div class="pad_15">
                    <div id="neurology-epilyspy">
                        <ul class="basicList">
                            <li>TBC1D24 gene analysis</li>
                            <li>Benign infantile epilepsy gene panel</li>
                            <li>Dravet syndrome (SCN1A) gene analysis</li>
                            <li>Epileptic encephalopathy gene panel</li>
                            <li>Familial female mental retardation/epilepsy gene panel</li>
                            <li>Progressive myoclonic epilepsy gene panel</li>
                            <li>Aicardi-Goutieres syndrome gene panel</li>
                        </ul>
                    </div>
                </div>
            </div>
        <div class="float_clear"></div>
        <span class="greyLine"></span>

         <h2 class="semiBold large">Neurology - Movement Disorders</h2>
            <span class="shortLine themeBgPrime"></span>
           
            <div class="col_340">
                <div class="pad_20">
                    <img src="images/movement-disorders.jpg" class="width100" />
                </div>
            </div>
             <div class="col_800">
                 <div class="pad_20">
                     <span class="space10"></span>
                     <span class="small fontRegular line-ht-5">The term movement disorders refers to a group of nervous system (neurological) conditions that cause either increased movements or reduced or slow movements. These movements may be voluntary or involuntary. Common types of movement disorders include: Ataxia.</span>
                 </div>
            </div>
            <div class="float_clear"></div>
            <h3 class="semiBold txtCenter medium mrg_B_10">Available Tests</h3>

            <div class="col_1_2">
                <div class="pad_15">
                    <div id="neurology-movement">
                        <ul class="basicList">
                            <li>Ataxia-telangiectasia (ATM) deletion/duplication analysis</li>
                            <li>Ataxia-telangiectasia (ATM) gene analysis</li>
                            <li>Dystonia gene panel</li>
                            <li>Early-onset juvenile parkinsonism gene panel</li>
                            <li>Episodic ataxia gene panel</li>
                            <li>Hyperekplexia gene panel</li>
                            <li>Hereditary spastic paraplegia gene panel</li>
                            <li>X-linked spastic paraplegia-2 (PLP1) deletion/duplication analysis</li>
                            <li>Neurotransmitter disorders gene panel</li>
                            <li>Dystonia gene panel</li>
                            <li>Ataxia-telangiectasia (ATM) gene analysis</li>
                            <li>Early-onset juvenile parkinsonism gene panel</li>
                            <li>Episodic ataxia gene panel</li>
                            <li>Hyperekplexia gene panel</li>
                            <li>Hereditary spastic paraplegia gene panel</li>
                            <li>Neurotransmitter disorders gene panel</li>
                            <li>Neurofibromatosis type 1 (NF1) deletion/duplication analysis</li>
                            <li>TSC1 & TSC2 gene analysis</li>
                        </ul>
                    </div>
                </div>
            </div>
        <div class="col_1_2">
            <div class="pad_15">
                <div id="neurology-movement">
                    <ul class="basicList">
                        <li>TSC1 deletion/duplication analysis</li>
                        <li>TSC2 deletion/duplication analysis</li>
                        <li>Neurofibromatosis (NF1 and NF2) gene analysis</li>
                        <li>Neurofibromatosis type 2 (NF2) gene analysis</li>
                        <li>TSC1 & TSC2 gene analysis</li>
                        <li>Spinocerebellar ataxia 2 (ATXN2) repeat expansion analysis</li>
                        <li>Spinocerebellar ataxia 3 (ATXN3) repeat expansion analysis</li>
                        <li>Spinocerebellar ataxia 6 (CACNA1A) repeat expansion analysis</li>
                        <li>Spinocerebellar ataxia 12 (PPP2R2B) repeat expansion analysis</li>
                        <li>Spinocerebellar ataxia repeat expansion analysis: Any two of (SCA1, SCA2, SCA3, SCA6, SCA7, SCA12)</li>
                        <li>Spinocerebellar ataxia repeat expansion analysis: SCA1, SCA2, SCA3, SCA6, SCA7,SCA12</li>
                        <li>Spinocerebellar ataxia 7 (ATXN7) repeat expansion analysis</li>
                        <li>Spinocerebellar ataxia 1 (ATXN1) repeat expansion analysis</li>
                        <li>Neurofibromatosis (NF1 and NF2) gene analysis</li>
                        <li>Neurofibromatosis type 2 (NF2) deletion/duplication analysis</li>
                        <li>Neurofibromatosis type 2 (NF2) gene analysis</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="float_clear"></div>
        <span class="greyLine"></span>

        <h2 class="semiBold large">Neurology - Neurodegenerative</h2>
            <span class="shortLine themeBgPrime"></span>
           
            <div class="col_340">
                <div class="pad_20">
                    <img src="images/degenerative-disorders.jpg"  class="width100"/>
                </div>
            </div>
             <div class="col_800">
                 <div class="pad_20">
                     <span class="space10"></span>
                     <span class="small fontRegular line-ht-5">A type of disease in which cells of the central nervous system stop working or die. Neurodegenerative disorders usually get worse over time and have no cure. They may be genetic or be caused by a tumor or stroke. Neurodegenerative disorders also occur in people who drink large amounts of alcohol or are exposed to certain viruses or toxins. Examples of neurodegenerative disorders include Alzheimer's disease and Parkinson's disease.</span>
                 </div>
            </div>
            <div class="float_clear"></div>
            <h3 class="semiBold txtCenter medium mrg_B_10">Available Tests</h3>
            
            <div class="col_1_2">
                <div class="pad_15">
                    <div id="neurology-degenerative">
                        <ul class="basicList">
                            <li>Canavan disease (ASPA) gene analysis</li>
                            <li>Hypomyelination syndrome gene panel</li>
                            <li>Krabbe disease (GALC) gene analysis</li>
                            <li>Krabbe disease (GALC) deletion/duplication analysis</li>
                            <li>Leukodystrophy gene panel</li>
                            <li>Metachromatic leukodystrophy gene panel</li>
                            <li>Pantothenate kinase-associated neurodegeneration (PANK2) deletion/duplication analysis</li>
                            <li>Neurodegeneration with brain iron accumulation gene panel</li>
                            <li>4H syndrome gene panel</li>
                            <li>Cystic megalencephaly (MLC1) gene analysis</li>
                            <li>Joubert syndrome gene panel</li>
                            <li>Neuronal ceroid lipofuscinosis gene panel</li>
                            <li>NOTCH3 (CADASIL) gene analysis</li>
                            <li>Tay-Sachs disease (HEXA) deletion/duplication analysis</li>
                            <li>Tay-Sachs disease (HEXA) gene analysis</li>
                            <li>Cystic megalencephaly (MLC1) deletion/duplication analysis</li>
                            <li>Neurodegeneration with brain iron accumulation 2B (PLA2G6) deletion/duplication analysis</li>
                            <li>Alexander disease (GFAP) gene analysis</li>
                            <li>X-linked adrenoleukodystrophy (ABCD1) deletion/duplication analysis</li>
                            
                        </ul>
                    </div>
                </div>
            </div>
        <div class="col_1_2">
            <div class="pad_15">
                <div id="neurology-degenerative">
                    <ul class="basicList">
                        <li>Giant axonal neuropathy-1 (GAN) gene analysis</li>
                        <li>Adrenoleukodystrophy (ABCD1) gene analysis</li>
                        <li>Alkaptonuria (HGD) gene analysis</li>
                        <li>Canavan disease (ASPA) gene analysis</li>
                        <li>Hypomyelination syndrome gene panel</li>
                        <li>Krabbe disease (GALC) gene analysis</li>
                        <li>Leukodystrophy gene panel</li>
                        <li>Metachromatic leukodystrophy gene panel</li>
                        <li>Neurodegeneration with brain iron accumulation gene panel</li>
                        <li>4H syndrome gene panel</li>
                        <li>Cystic megalencephaly (MLC1) gene analysis</li>
                        <li>Joubert syndrome gene panel</li>
                        <li>Neuronal ceroid lipofuscinosis gene panel</li>
                        <li>NOTCH3 (CADASIL) gene analysis</li>
                        <li>Tay-Sachs disease (HEXA) gene analysis</li>
                        <li>Alexander disease (GFAP) gene analysis</li>
                        <li>Giant axonal neuropathy-1 (GAN) gene analysis</li>
                        <li>Adrenoleukodystrophy (ABCD1) gene analysis</li>
                        <li>Alkaptonuria (HGD) gene analysis</li>
                      
                    </ul>
                </div>
            </div>
        </div>
        <div class="float_clear"></div>
        <span class="greyLine"></span>

         <h2 class="semiBold large">Neurology - Neuromuscular</h2>
            <span class="shortLine themeBgPrime"></span>
           
            <div class="col_340">
                <div class="pad_20">
                    <img src="images/gastronology.png" class="width100" />
                </div>
            </div>
             <div class="col_800">
                 <div class="pad_20">
                     <span class="space10"></span>
                     <span class="small fontRegular line-ht-5">Neuromuscular Pertaining to both nerves and muscles, as in neuromuscular blockade by an anesthetic agent, the neuromuscular junction (the meeting place of a nerve and a muscle fiber), and neuromuscular transmission (the transfer of "information" from the nerve to the muscle).</span>
                 </div>
            </div>
            <div class="float_clear"></div>
            <h3 class="semiBold txtCenter medium mrg_B_10">Available Tests</h3>
            <div class="col_1_2">
                <div class="pad_15">
                    <div id="neurology-musclebrain">
                        <ul class="basicList">
                            <li>Arthrogryposis & congenital myasthenic syndrome gene panel</li>
                            <li>Charcot-Marie-Tooth and sensory neuropathies gene panel</li>
                            <li>Charcot-Marie-Tooth 1A/HNPP (PMP22, COX10, TEKT3) deletion/duplication analysis</li>
                            <li>PMP22 deletion/duplication analysis</li>
                            <li>Congenital Muscular Dystrophy (LAMA2) deletion/duplication analysis</li>
                            <li>Duchenne Muscular Dystrophy (DMD) deletion/duplication analysis</li>
                            <li>Duchenne Muscular Dystrophy (DMD) gene sequencing</li>
                            <li>Calpainopathy/LGMD2A (CAPN3) deletion/duplication analysis</li>
                            <li>Dysferlinopathy/LGMD2B (DYSF) deletion/duplication analysis</li>
                            <li>Limb-girdle muscular dystrophy (SGCA, SGCB,SGCD, SGCG & FKRP) deletion/duplication analysis</li>
                            <li>Muscular dystrophy & congenital myopathy gene panel</li>
                            <li>Myotonia congenita gene panel</li>
                            <li>Spinal Muscular Atrophy (SMN1/SMN2) deletion/duplication analysis</li>
                            <li>Spinal Muscular Atrophy (SMN1) gene analysis</li>
                            <li>Charcot-Marie-Tooth type 4 (EGR2, GDAP1, NEFL, PRX) deletion/duplication analysis</li>
                        </ul>
                    </div>
                </div>
            </div>
        <div class="col_1_2">
            <div class="pad_15">
                <div id="neurology-musclebrain">
                    <ul class="basicList">
                        <li>Spinal Muscular Atrophy gene Panel</li>
                        <li>PMP22 gene analysis (inflammatory demyelinating polyneuropathy screen)</li>
                        <li>Charcot-Marie-Tooth type 4C (SH3TC2) deletion/duplication analysis</li>
                        <li>Myotonia congenita (CLCN1) deletion/duplication analysis</li>
                        <li>Fukuyama Congenital Muscular Dystrophy (FKTN) gene sequencing (does not include repeat expansions)</li>
                        <li>POMT1 deletion/duplication analysis</li>
                        <li>Arthrogryposis & congenital myasthenic syndrome gene panel</li>
                        <li>Charcot-Marie-Tooth and sensory neuropathies gene panel</li>
                        <li>Duchenne muscular dystrophy (DMD) gene analysis</li>
                        <li>Muscular dystrophy & congenital myopathy gene panel</li>
                        <li>Myotonia congenita gene panel</li>
                        <li>Spinal muscular atrophy gene panel (does not include SMN1/SMN2)</li>
                        <li>PMP22 gene analysis (inflammatory demyelinating polyneuropathy screen)</li>
                        <li>Fukuyama Congenital Muscular Dystrophy (FKTN) gene sequencing (does not include repeat expansions)</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="float_clear"></div>
        <span class="greyLine"></span>

        <h2 class="semiBold large">Oncology</h2>
            <span class="shortLine themeBgPrime"></span>
           
            <div class="col_340">
                <div class="pad_20">
                    <img src="images/oncology.jpg"  class="width100"/>
                </div>
            </div>
             <div class="col_800">
                 <div class="pad_20">
                     <span class="space10"></span>
                     <span class="small fontRegular line-ht-5">Oncology is the branch of medicine that researches, identifies and treats cancer. A physician who works in the field of oncology is an oncologist.

Oncologists must first diagnose a cancer, which is usually carried out via biopsy, endoscopy, X-ray, CT scanning, MRI, PET scanning, ultrasound or other radiological methods.</span>
                 </div>
            </div>
            <div class="float_clear"></div>
            <h3 class="semiBold txtCenter medium mrg_B_10">Available Tests</h3>
            
            <div class="col_1_2">
                <div class="pad_15">
                    <div id="oncology">
                        <ul class="basicList">
                            <li>FISH for PML-RARA t(15;17)(q24,q21), AML</li>
                            <li>FISH for RUNX-RUNX1 t(8;21)(q22;q22), AML</li>
                            <li>FISH for inv(16)/t(16;16)(p13.1;q22), AML</li>
                            <li>FISH for AML panel ( ANY 3 markers- Inv 3, del 5, del 7, MLL , t(15;17), t(8;21), inv(16), BCR-ABL ES )</li>
                            <li>FISH for AML panel ( ANY 5 markers)</li>
                            <li>FISH for AML panel (All markers(8))</li>
                            <li>FISH for MDS (All markers (8))</li>
                            <li>Multiplex RT-PCR panel for Leukemia(28 translocations)</li>
                            <li>FISH for Leukaemia panel (4 markers)</li>
                            <li>FISH for ROS-1 (6q22.1) rearrangement, NSCLC</li>
                            <li>FISH for ALk(2p23) gene rearrangement, NSCLC</li>
                            <li>Retinoblastoma gene 13q14 region by FISH</li>
                            <li>Chromosomal breaks</li>
                            <li>FISH for PDGFRA(4q12) gene rearrangement, MPN</li>
                            <li>FISH for PDGFRB (5q32-33) gene rearrangement, MPN</li>
                            <li>FISH for iAMP21,ALL</li>
                            <li>FISH for TCRA/D (14q11.2) gene rearrangement, ALL</li>
                            <li>FISH for IGH/CCND1 t(11;14)(q13;q32), Multiple Myeloma [With Plasma cell Enrichment]</li>
                            <li>FISH for IGH/FGFR3 t(4;14)(p16;q32), Multiple Myeloma [With Plasma cell Enrichment]</li>
                            <li>FISH for IGH /MAF t(14;16)(q32;q23), Multiple Myeloma [With Plasma cell Enrichment]</li>
                            <li>FISH for Multiple Myeloma (5 markers)</li>
                            <li>FISH for MDS ( 4 markers )</li>
                            <li>FISH for ETV6-RUNX1 t(12;21)(p13;q22), ALL</li>
                            <li>FISH for E2A (19p13.3) Translocation, ALL</li>
                            <li>FISH for IGH (14q32) Gene rearrangement, CLL</li>
                            <li>Acute Lymphoild Leukemia(ALL), 6 Markers, FISH</li>
                            <li>FISH for C-MYC (8q24) Translocation, ALL</li>
                            <li>FISH for Trisomy 11, CLL</li>
                            <li>FISH for Trisomy 12, CLL</li>
                            <li>FISH for 6q deletion, CLL</li>
                            <li>Chronic Lymphoid Leukemia Panel (5 markers-Del 6q, del 11q -ATM deletion, Trisomy 12,del 13q,del 17q), FISH</li>
                            <li>Myeloma Panel (4 markers),FISH</li>
                            <li>[Combo] Glioma Panel</li>
                            <li>B MRD</li>
                            <li>FISH for iso 17q, CML</li>
                            <li>Chronic Myeloid Leukemia(CML), (4 markers- BCR-ABL,Iso 17q,del 7 and trisomy 8)FISH</li>
                            <li>Chronic Lymphoid Leukemia panel (4 markers-Del 17p,Trisomy 11, trisomy 12 and del 13q), FISH</li>
                            <li>FISH for MDS/AML (6 markers- Del 5/5q, Del 7/7q, Trisomy 8, RUNX-RUNX1 t(8;21), PML-RARA t(15;17), Inv(16)</li>
                            <li>FISH for ALL Panel (4 markers-E2A Breakapart, t(12;21), BCR-ABL, MLL)</li>
                            <li>FISH for ALL Panel (All markers-  MLL, iAMP21/ETV6-RUNX1, TCRA/D,BCR-ABL,C-Myc, IGH BA, E2A Breakapart)</li>
                            <li>FISH for CLL Panel (All markers- Del6q, Del 17p, Del13q,ATM deletion/trisomy 11, Trisomy 12, IGH rearrangement)</li>
                            <li>FISH for MPN panel (3 markers- BCR/ABL, PDGFRA, PDGFRB)</li>
                            <li>FISH for MPN panel (5 markers- BCR/ABL, PDGFRA, PDGFRB, JAK2 and FGFR1 gene rearrangements)</li>
                             <li>FISH for ALK and ROS-1 gene rearrangement , Lung cancer</li>
                            <li>FISH for Deletion 17p(TP53), Multiple Myeloma [With Plasma cell Enrichment]</li>
                            <li>FISH for deletion 13q(13q14.2, 13q34), MM [With Plasma cell Enrichment]</li>
                            <li>FISH for C-MYC (8q24) Translocation, Multiple Myeloma [With Plasma cell Enrichment]</li>
                            <li>FISH for IGH (14q32) Gene rearrangement, Multiple Myeloma [With Plasma cell Enrichment]</li>
                            <li>IGHV gene mutation analysis</li>
                            <li>Comprehensive molecular work-up for CLL Prognostication [NGS,Sanger,FISH]</li>
                            <li>PNH by FLAER- High Sensitivity</li>
                            <li>T- MRD</li>
                             <li>C-MET amplification</li>
                            <li>Lung Basic Panel by NGS [EGFR, ALK, ROS1, BRAF,MET (SNVs & Indels)]</li>
                            <li>Lung Basic Panel by NGS & IHC [EGFR, ALK, ROS1, BRAF,MET (SNVs & Indels) by NGS & PDL1 by IHC]</li>
                            <li>Lung Advanced Panel by NGS [EGFR, ALK, ROS1, BRAF,MET (SNVs,Indels,Skipping mutations), RET, Her2]</li>
                            <li>Lung Advanced Panel by NGS & IHC [EGFR, ALK, ROS1, BRAF,MET (SNVs,Indels,Skipping mutations), RET, Her2 by NGS & PDL1 by IHC]</li>
                            <li>Lung Comprehensive Panel [EGFR, ALK, ROS1, BRAF, MET (SNVs,Indels,Skipping mutations), RET, Her2 by NGS, PDL1 by IHC & MSI by Fragment Analysis]</li>
                            <li>Colorectal Basic Panel by NGS & IHC [KRAS, NRAS, BRAF by NGS and MMR by IHC]</li>
                            <li>AML Basic panel [(PML/Rara, bcr/abl, AML/ETO, Inv16) by RT-PCR, (FLT3, NPM1) by RT-PCR]</li>
                            <li>AML Advance panel [(PML/Rara, bcr/abl, AML/ETO,Inv16) by RT-PCR (FLT3, NPM1, C-kit) by RT-PCR]</li>
                             <li>AML Advance panel [(PML/Rara, bcr/abl, AML/ETO,Inv16) by RT-PCR (FLT3, NPM1, C-kit) by NGS & Karyotyping]</li>
                            <li>AML Comprehensive Panel [(PML/Rara, bcr/abl, AML/ETO, inv16 by RT-PCR) , (FLT3, NPM1, CEBPA & C-Kit by NGS)]</li>
                            <li>PIK3CA gene sequencing</li>
                            <li>AML Comprehensive panel [(PML/Rara, bcr/abl, AML/ETO, inv16 by RT-PCR) , (FLT3, NPM1, CEBPA & C-Kit by NGS)] & Karyotyping</li>
                        </ul>
                    </div>
                </div>
            </div>
        <div class="col_1_2">
                <div class="pad_15">
                    <div id="oncology">
                        <ul class="basicList">
                            <li>Tumour Mutation Burden NGS</li>
                            <li>Comprehensive Tumour Panel (SNVs, Short Indels(<10bp) ) + Tumour Mutation Burden</li>
                            <li>Comprehensive Tumour Panel (CNVs,SNVs,Short Indels(<10bp), Fusions) + Tumour Mutation Burden</li>
                            <li>Adenomatous polyposis coli (APC) gene analysis</li>
                            <li>BRAF V600 mutation analysis</li>
                            <li>BRCA1 & BRCA2 deletion/duplication analysis</li>
                            <li>BRCA1 & BRCA2 gene analysis</li>
                            <li>Carney complex (PRKAR1A) gene analysis</li>
                            <li>EGFR gene analysis (Hot Spot) - 4 exons (18, 19, 20, 21)</li>
                            <li>Hereditary cancer gene panel - focussed</li>
                            <li>Lynch Syndrome/HNPCC gene panel</li>
                            <li>Somatic Cancer Mutation Panel / Hot Spot tumor panel</li>
                            <li>Imatinib resistance (ABL kinase) gene analysis - IRMA</li>
                            <li>KIT gene analysis - 4 exons (9, 11, 13, 17)</li>
                            <li>KRAS gene analysis (Hot Spot)</li>
                            <li>MGMT gene methylation analysis (Temozolomide Resistance)</li>
                            <li>NRAS gene analysis (Hot Spot)</li>
                            <li>PDGFRA gene analysis - 3 exons (12, 14, 18)</li>
                            <li>RB1 gene analysis (germline)</li>
                            <li>RB1 gene deletion/duplication analysis</li>
                            <li>RAS Extended profiling analysis by NGS</li>
                            <li>Lynch syndrome (HNPCC) - (MLH1, MSH2, EPCAM) deletion/duplication analysis</li>
                            <li>Non Small cell Lung Cancer (NSCLC) NGS Panel (Hot Spot)</li>
                            <li>Colorectal cancer - Theranostic Panel (Hot Spot)</li>
                            <li>GIST (Gastrointestinal Stromal Tumor) - Theranostic Panel (Hot Spot)</li>
                            <li>DPYD IVS14+1G>A mutation analysis</li>
                            <li>Von Hippel-Lindau syndrome (VHL) gene analysis</li>
                            <li>TP53 gene deletion/duplication analysis</li>
                            <li>OncoTrack - ct DNA for Hot Spot mutations in 4 genes (EGFR, KRAS, NRAS, BRAF)</li>
                            <li>Myeloma Panel - Flowcytometry  (CD45, CD38, CD19, CD56, CD138, kappa, lambda)</li>
                            <li>OncoSelect ctDNA for EGFR T790M and C797S</li>
                            <li>FISH for Deletion 7/7q (7q22,7q31), MDS/AML/CML/JMML</li>
                            <li>FISH for Deletion 5/5q (5q31,5q33), MDS/AML</li>
                            <li>FISH for del20q , MDS/AML</li>
                            <li>FISH for Trisomy 8 /c-myc amplification, MDS/AML/ALL</li>
                             <li>FISH for Inv(3) (MECOM, 3q26) gene rearrangement, MDS/AML</li>
                            <li>FISH for MDS ( ANY 5 markers- Inv 3, del 5/5q, del 7/7q, Trisomy 8, MLL, DEl 13q, Del 17p,Del 20q)</li>
                            <li>FISH for MDS (ANY 3 markers- Inv 3, del 5/5q, del 7/7q, Trisomy 8, MLL, DEl 13q, Del 17p,Del 20q)</li>
                            <li>FISH for MLL(11q23) amplification, AML/MLL/MDS</li>
                            <li>FISH for BCR-ABL t(9;22)(q34;q11.2), AML/CML/MPN</li>
                            <li>FISH for 1p19q co-deletion,1p3619q13</li>
                            <li>OncoFocus - ct DNA for EGFR</li>
                             <li>OncoFocus Express - ct DNA for EGFR</li>
                            <li>FISH for deletion 13q(13q14.2, 13q34), CLL</li>
                            <li>FISH for Deletion 17p(TP53), CLL</li>
                            <li>FIP1L1-PDGFRA gene re-arrangement</li>
                            <li>FISH for ERBB2(HER2) gene amplification, Breast cancer</li>
                            <li>MSI by fragment analysis</li>
                            <li>BRCA1 & BRCA2 somatic mutation testing</li>
                              <li>EGFR (T790M, L858R, exon 19 deletion) screening by ddPCR</li>
                            <li>EGFR T790M mutation screening by ddPCR</li>
                            <li>Comprehensive tumor panel (170 genes)</li>
                            <li>[Combo] Lung combo panel - IHC (ALK D5F3, ROS1) & RT-PCR (BRAF V600E, EGFR [Hot Spot] exons 18, 19, 20, 21)</li>
                            <li>Adenomatous polyposis coli (APC) gene analysis</li>
                              <li>BRCA1 & BRCA2 gene analysis</li>
                            <li>Carney complex (PRKAR1A) gene analysis</li>
                            <li>Hereditary cancer gene panel - focussed</li>
                            <li>Lynch Syndrome/HNPCC gene panel</li>
                            <li>RB1 gene analysis (germline)</li>
                              <li>Von Hippel-Lindau syndrome (VHL) gene analysis</li>
                            <li>Oncotrack - Ultima [Liquid biopsy for 56 theranostic genes]</li>
                            <li>RET gene sequencing</li>
                            <li>Glioma gene panel (ATRX, TP53, IDH1 and IDH2)</li>
                            <li>Tumour Mutation Burden</li>
                            <li>Tumour Mutation Burden by NGS+ Comprehensive Tumour Panel (SNVs, Short Indels(<10bp) )</li>
                            <li>Tumour Mutation Burden by NGS + Comprehensive Tumour Panel (CNVs,SNVs,Short Indels(<10bp), Fusions)</li>
                              <li>NTRK1 fusion</li>
                            <li>[COMBO] RB1 GENE sequencing with Deletion/Duplication Analysis (MLPA)</li>
                            <li>PDL1 IHC SP142 analyis</li>
                            <li>NTRK1, NTRK2, NTRK3 fusion</li>
                            <li>PIK3CA gene sequencing</li>
                            <li>PIK3CA NGS mutation - Peripheral Blood</li>
                            <li>PIK3CA - therascreen® - Peripheral Blood</li>
                            <li>PIK3CA - therascreen® – FFPE</li>
                        </ul>
                    </div>
                </div>
            </div>
        <div class="float_clear"></div>
        <span class="greyLine"></span>

         <h2 class="semiBold large">Oncology-IHC</h2>
            <span class="shortLine themeBgPrime"></span>
           
            <div class="col_340">
                <div class="pad_20">
                    <img src="images/oncology-ihc.jpg"  class="width100"/>
                </div>
            </div>
             <div class="col_800">
                 <div class="pad_20">
                     <span class="space10"></span>
                     <span class="small fontRegular line-ht-5">Oncology is the branch of medicine that researches, identifies and treats cancer. A physician who works in the field of oncology is an oncologist.

Oncologists must first diagnose a cancer, which is usually carried out via biopsy, endoscopy, X-ray, CT scanning, MRI, PET scanning, ultrasound or other radiological methods.</span>
                 </div>
            </div>
            <div class="float_clear"></div>
            <h3 class="semiBold txtCenter medium mrg_B_10">Available Tests</h3>
            
            <div class="col_1_2">
                <div class="pad_15">
                    <div id="oncology-ihc">
                        <ul class="basicList">
                            <li>ALK D5F3 analysis</li>
                            <li>c-MET IHC analysis</li>
                            <li>Breast Prognostic/predictive IHC2 panel (ER, PR)</li>
                            <li>Breast Prognostic/predictive IHC3 panel (ER, PR, Her2/neu)</li>
                            <li>Prognostic/predictive IHC4 panel (ER, PR, Her2/neu,MIB-1/Ki67)</li>
                            <li>ROS1 IHC analysis</li>
                            <li>Lynch Syndrome Mismatch Repair (MMR) 4 gene (MLH1, MLH2, MSH6 & PMS2) panel - IHC [Microsatellite instability]</li>
                            <li>Her 2 – Gastric tissue</li>
                        </ul>
                    </div>
                </div>
            </div>
         <div class="col_1_2">
                <div class="pad_15">
                    <div id="oncology-ihc">
                        <ul class="basicList">
                            <li>Lung tumor panel II (ANY TWO OF - ALK D5F3, ROS1, c-MET)</li>
                            <li>Lung tumor panel I (ALK D5F3, ROS1, c-MET)</li>
                            <li>PDL1 IHC analysis</li>
                            <li>[Combo] ALK D5F3 & ROS1 IHC analysis</li>
                            <li>PR IHC Analysis</li>
                            <li>ER IHC Analysis</li>
                            <li>Her2/neu IHC Analysis</li>
                            <li>MIB-1/Ki67 IHC Analysis</li>
                        </ul>
                    </div>
                </div>
            </div>
       <div class="float_clear"></div>
        <span class="greyLine"></span>

         <h2 class="semiBold large">Prenatal</h2>
            <span class="shortLine themeBgPrime"></span>
           
            <div class="col_340">
                <div class="pad_20">
                    <img src="images/prenatal.jpg" class="width100" />
                </div>
            </div>
             <div class="col_800">
                 <div class="pad_20">
                     <span class="space10"></span>
                     <span class="small fontRegular line-ht-5">Prenatal care is the regular health care women should receive from an obstetrician or midwife during pregnancy. Prenatal development is the growth of a single-celled zygote formed by the combination of a sperm and an egg into a baby. Prenatal diagnosis is diagnosis before birth by techniques such as ultrasound, chorionic villus sampling (CVS), and amniocente+D13sis.</span>
                 </div>
            </div>
            <div class="float_clear"></div>
            <h3 class="semiBold txtCenter medium mrg_B_10">Available Tests</h3>

            <div class="col_1_2">
                <div class="pad_15">
                    <div id="prenatal">
                        <ul class="basicList">
                            <li>Carrier screening - Platinum[~2000 recessive genes included in clinical exome & MLPA (SMA, DMD, CYP21A2) ]</li>
                            <li>Carrier screening - Silver[100 genes NGS & MLPA (SMA, DMD, CYP21A2)]</li>
                            <li>Carrier ​screening - Gold [500 genes NGS & MLPA (SMA, DMD, CYP21A2)]</li>
                            <li>Carrier screening - Platinum [~2000 recessive genes included in clinical exome & MLPA (SMA, DMD, CYP21A2) ]</li>
                            <li>Carrier ​screening - Silver [100 genes NGS & MLPA (SMA, DMD, CYP21A2)]</li>
                            <li>Pre-PGD by Sanger/PCR (1 variant) - Prospective parents and one affected kid of the couple(if available)</li>
                            <li>Pre-PGD by Sanger/PCR (2 variant) - Prospective parents and one affected kid of the couple(if available)</li>
                            <li>PGD by Sanger/PCR (1 variant) - per embryo</li>
                            <li>PGD by Sanger/PCR (2 variants) - per embryo</li>
                            <li>POC-1st trimester</li>
                            <li>POC-2nd trimester</li>
                            <li>POC-2nd and 3rd trimester cord / cardiac blood</li>
                            <li>Di George / VCF syndrome</li>
                            <li>CVS karyotyping only</li>
                            <li>Amniotic Fluid karyotyping only</li>
                            <li>Cord Blood karyotyping only</li>
                            <li>FISH (7 probes - 13,16,18,21,22, sex chromosome)</li>
                            <li>FISH (2 probes) (either 13/21 or18/X/Y)</li>
                            <li>POC all trimester+ FISH (7 probes)</li>
                            <li>CVS karyotyping + FISH (5 probes - 13,18,21, sex chromosomes)</li>
                            <li>CVS karyotyping + FISH (2 probes) (either 13/21 or 18/X/Y)</li>
                            <li>Amniotic Fluid karyotyping + FISH (5 probes - 13,18,21, sex chromosome)</li>
                            <li>Amniotic Fluid karyotyping + FISH(2 probes)(either 13/21 or 18/X/Y]</li>
                            <li>Cord Blood karyotyping + FISH (5 probes - 13, 18, 21, sex chromosomes)</li>
                            <li>Cord blood karyotyping + FISH (2 probes)(either 13/21 or 18/X/Y)</li>
                            <li>FISH(5 probes-13,18,21,sex chromosomes)</li>
                            <li>CVS Procedure + Karyotyping</li>
                            <li>CVS Procedure + Karyotyping + FISH (5 probes - 13,18,21, sex chromosomes)</li>
                            <li>CVS Procedure + Karyotyping + FISH (2 probes) (either 13/21 or 18/X/Y)</li>
                            <li>Amniocentesis + Karyotyping</li>
                            <li>Amniocentesis + Karyotyping + FISH (5 probes - 13,18,21, sex chromosome)</li>
                        </ul>
                    </div>
                </div>
            </div>
        <div class="col_1_2">
            <div class="pad_15">
                <div id="prenatal">
                    <ul class="basicList">
                        <li>Amniocentesis + Karyotyping + FISH(2 probes)(either 13/21 or 18/X/Y]</li>
                        <li>Cord Blood Procedure + Karyotyping</li>
                        <li>Cord Blood Procedure + Karyotyping + FISH (5 probes - 13, 18, 21, sex chromosomes)</li>
                        <li>Cord Blood Procedure + Karyotyping+ FISH (2 probes)(either 13/21 or 18/X/Y)</li>
                        <li>PGD by Sanger/PCR (3 variants) - per embryo</li>
                        <li>Pre-PGD by Sanger/PCR (3 variants) - Prospective parents and one affected kid of the couple(if available)</li>
                        <li>PGD by Sanger/PCR (4 variants) - per embryo</li>
                        <li>Pre-PGD by Sanger/PCR (4 variants) - Prospective parents and one affected kid of the couple(if available)</li>
                        <li>Claria NIPT</li>
                        <li>Pre-PGD for parents and proband (Max 3 samples) - More than 1 variant or multiple Variants in single gene</li>
                        <li>PGD per Embryo [NGS]</li>
                        <li>PGD for 2 Embryos [NGS]</li>
                        <li>PGD for 3 Embryos [NGS]</li>
                        <li>PGD for 4 Embryos [NGS]</li>
                        <li>PGD for 5 Embryos [NGS]</li>
                        <li>MCC [REFLEX] with Clinical Exome - 26MB (80-100x)</li>
                        <li>MCC [REFLEX] with Chromosomal Microarray - Affymetrix Cytoscan 750K Genechip</li>
                        <li>MCC [REFLEX] with Chromosomal Microarray - Affymetrix Cytoscan Optima low resolution Genechip</li>
                        <li>MCC [REFLEX] with Prenatal sanger variant analysis [1 variant]</li>
                        <li>MCC [REFLEX] Prenatal sanger variant analysis [Primers available] - 1 variant</li>
                        <li>AF Cell Culture (Amniotic fluid only)</li>
                        <li>AF Cell Culture (Amniotic fluid only) with Clinical Exome - 26MB (80-100x)</li>
                        <li>AF Cell Culture (Amniotic fluid only) with Chromosomal Microarray - Affymetrix Cytoscan 750K Genechip</li>
                        <li>AF Cell Culture (Amniotic fluid only) with Chromosomal Microarray - Affymetrix Cytoscan Optima low resolution Genechip</li>
                        <li>AF Cell Culture (Amniotic fluid only) with Sanger variant analysis [1 variant]</li>
                        <li>AF Cell Culture (Amniotic fluid only) with Sanger variant analysis [primers available] - 1 variant</li>
                        <li>Pre-Implantation Genetic Screening(PGS)</li>
                        <li>Claria NIPT Plus</li>
                        <li>Carrier screening - Gold[500 genes NGS & MLPA (SMA, DMD, CYP21A2)]</li>
                        
                    </ul>
                </div>
            </div>
        </div>
        <div class="float_clear"></div>
        <span class="greyLine"></span>

        <h2 class="semiBold large">Postnatal</h2>
            <span class="shortLine themeBgPrime"></span>
           
            <div class="col_340">
                <div class="pad_20">
                    <img src="images/postnatal.jpg" class="width100" />
                </div>
            </div>
             <div class="col_800">
                 <div class="pad_20">
                     <span class="space10"></span>
                     <span class="small fontRegular line-ht-5">Postnatal is occurring or being after birth specifically of or relating to an infant immediately after birth</span>
                 </div>
            </div>
            <div class="float_clear"></div>
            <h3 class="semiBold txtCenter medium mrg_B_10">Available Tests</h3>

        <div class="col_1_2">
            <div class="pad_15">
                <div id="postnatal">
                    <ul class="basicList">
                        <li>FISH for Williams syndrome</li>
                        <li>High Resolution Banding [HRB]</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col_1_2">
            <div class="pad_15">
                <div id="postnatal">
                    <ul class="basicList">
                        <li>Prader-Willi/ Angelman syndrome by FISH</li>
                    </ul>
                </div>
            </div>
        </div>
      <div class="float_clear"></div>
     <span class="greyLine"></span>

        <h2 class="semiBold large">Qualitative RT-PCR</h2>
            <span class="shortLine themeBgPrime"></span>
           
            <div class="col_340">
                <div class="pad_20">
                    <img src="images/rt-pcr.jpg" class="width100"/>
                </div>
            </div>
             <div class="col_800">
                 <div class="pad_20">
                     <span class="space10"></span>
                     <span class="small fontRegular line-ht-5">quantitation of gene expression in tumor or host cells is of paramount importance for investigating the gene patterns responsible for cancer development, progression and response or resistance to treatment. Quantitative realtime PCR (qrt-PCR) technology has recently reached a level of sensitivity, accuracy and practical ease that supports its use as a routine bioinstrumentation for gene level measurement.</span>
                 </div>
            </div>
            <div class="float_clear"></div>
            <h3 class="semiBold txtCenter medium mrg_B_10">Available Tests</h3>

            <div class="col_1_2">
                <div class="pad_15">
                    <div id="pcr">
                        <ul class="basicList">
                            <li>AML basic panel II by RT-PCR (FLT3, NPM1, C-kit)</li>
                            <li>AML Basic Panel III (FLT3, NPM1)</li>
                        </ul>
                    </div>
                </div>
            </div>
        <div class="col_1_2">
                <div class="pad_15">
                    <div id="pcr">
                        <ul class="basicList">
                            <li>AML basic panel II by RT-PCR (FLT3, NPM1, C-kit)</li>
                        </ul>
                    </div>
                </div>
            </div>
        <div class="float_clear"></div>
        <span class="greyLine"></span>

         <h2 class="semiBold large">Rare Inherited Disorders</h2>
            <span class="shortLine themeBgPrime"></span>
           
            <div class="col_340">
                <div class="pad_20">
                    <img src="images/gastronology.png" class="width100" />
                </div>
            </div>
             <div class="col_800">
                 <div class="pad_20">
                     <span class="space10"></span>
                     <span class="small fontRegular line-ht-5">Rare diseases (RDs) are the clinical conditions affecting a few percentage of individuals in a general population compared to other diseases. Limited clinical information and a lack of reliable epidemiological data make their timely diagnosis and therapeutic management difficult.</span>
                 </div>
            </div>
            <div class="float_clear"></div>
            <h3 class="semiBold txtCenter medium mrg_B_10">Available Tests</h3>

            <div class="col_1_2">
                <div class="pad_15">
                    <div id="inherited">
                        <ul class="basicList">
                            <li>Cystic fibrosis (CFTR) gene analysis</li>
                            <li>Cystic fibrosis (CFTR) del508 mutation analysis</li>
                            <li>Cystic fibrosis (CFTR) gene panel deletion/duplication analysis</li>
                            <li>Newborn screening gene panel</li>
                            <li>Blooms syndrome</li>
                            <li>Cockayne syndrome gene panel</li>
                            <li>Bardet-Biedl syndrome gene panel</li>
                            <li>Ciliopathy gene panel</li>
                            <li>Cohen's syndrome (VPS13B) gene analysis</li>
                            <li>Cornelia de Lange syndrome gene panel</li>
                            <li>Noonan syndrome gene panel</li>
                            <li>Pallister Hall syndrome (GLI3) gene analysis</li>
                            <li>Craniosynostosis gene panel</li>
                            <li>Smith-Lemli-Opitz syndrome (DHCR7) gene analysis</li>
                            <li>Sotos syndrome gene panel</li>
                            <li>Sotos syndrome (NSD1) deletion/duplication analysis</li>
                            <li>Non-immune hydrops gene panel</li>
                            <li>WAGR syndrome (PAX6) deletion/duplication analysis</li>
                            <li>Cantu syndrome (ABCC9) gene sequencing</li>
                            <li>Rasopathy gene panel</li>
                            <li>Fraser syndrome gene panel</li>
                            <li>Pulmonary alveolar microlithiasis (SLC34A2) gene analysis</li>
                            <li>Seckel syndrome gene panel</li>
                            <li>Beckwith-Wiedemann syndrome deletion/duplication analysis</li>
                            <li>Klippel-Feil syndrome gene panel</li>
                            <li>Prader-Willi/Angelman syndrome deletion/duplication analysis</li>
                            <li>Pulmonary surfactant metabolism dysfunction gene panel</li>
                            <li>DiGeorge syndrome deletion/duplication analysis</li>
                            <li>Subtelomere deletion/duplication analysis</li>
                            <li>Aneuploidy MLPA</li>
                        </ul>
                    </div>
                </div>
            </div>
        <div class="col_1_2">
                <div class="pad_15">
                    <div id="inherited">
                        <ul class="basicList">
                            <li>POLG gene sequencing</li>
                            <li>PDGFRB gene sequencing</li>
                            <li>TTN gene sequencing</li>
                            <li>Johanson-Blizzard syndrome (UBR1) gene analysis</li>
                            <li>MLPA for common microdeletion syndromes </li>
                            <li>Cystic fibrosis (CFTR) gene analysis</li>
                            <li>Cockayne syndrome gene panel</li>
                            <li>Bardet-Biedl syndrome gene panel</li>
                            <li>Ciliopathy gene panel</li>
                            <li>Cohen's syndrome (VPS13B) gene analysis</li>
                            <li>Cornelia de Lange syndrome gene panel</li>
                            <li>Noonan syndrome gene panel</li>
                            <li>Pallister Hall syndrome (GLI3) gene analysis</li>
                            <li>Craniosynostosis gene panel</li>
                            <li>Smith-Lemli-Opitz syndrome (DHCR7) gene analysis</li>
                            <li>Sotos syndrome gene panel</li>
                            <li>Non-immune hydrops gene panel</li>
                            <li>Cantu syndrome (ABCC9) gene analysis</li>
                            <li>Rasopathy gene panel</li>
                            <li>Fraser syndrome gene panel</li>
                            <li>Pulmonary alveolar microlithiasis (SLC34A2) gene analysis</li>
                            <li>Seckel syndrome gene panel</li>
                            <li>Klippel-Feil syndrome gene panel</li>
                            <li>Pulmonary surfactant metabolism dysfunction gene panel</li>
                            <li>POLG gene analysis</li>
                            <li>PDGFRB gene sequencing</li>
                            <li>TTN gene sequencing</li>
                            <li>Johanson-Blizzard syndrome (UBR1) gene analysis</li>
                        </ul>
                    </div>
                </div>
            </div>
        <div class="float_clear"></div>
        <span class="greyLine"></span>

        <h2 class="semiBold large">Skeletal Dysplasia</h2>
            <span class="shortLine themeBgPrime"></span>
           
            <div class="col_340">
                <div class="pad_20">
                    <img src="images/gastronology.png" class="width100" />
                </div>
            </div>
             <div class="col_800">
                 <div class="pad_20">
                     <span class="space10"></span>
                     <span class="small fontRegular line-ht-5">Skeletal dysplasia is the medical term for a group of about 400 conditions that affect bone development, neurological function and cartilage growth, including its most common form, achondroplasia.</span>
                 </div>
            </div>
            <div class="float_clear"></div>
            <h3 class="semiBold txtCenter medium mrg_B_10">Available Tests</h3>
            
            <div class="col_1_2">
                <div class="pad_15">
                    <div id="skeletal">
                        <ul class="basicList">
                            <li>Achondroplasia (FGFR3) gene analysis</li>
                            <li>Osteogenesis imperfecta gene panel</li>
                            <li>Osteopetrosis gene panel</li>
                            <li>Pachydermoperiostosis & primary hypertrophic osteoarthropathy gene panel</li>
                            <li>Skeletal dysplasia gene panel</li>
                            <li>Hereditary multiple exostoses gene panel</li>
                            <li>Achondroplasia (FGFR3) gene analysis</li>
                        </ul>
                    </div>
                </div>
            </div>
         <div class="col_1_2">
                <div class="pad_15">
                    <div id="skeletal">
                        <ul class="basicList">
                            <li>Osteogenesis imperfecta gene panel</li>
                            <li>Osteopetrosis gene panel</li>
                            <li>Pachydermoperiostosis & primary hypertrophic osteoarthropathy gene panel</li>
                            <li>Skeletal dysplasia gene panel</li>
                            <li>Hereditary multiple exostoses gene panel</li>
                        </ul>
                    </div>
                </div>
            </div>
        <div class="float_clear"></div>
        <span class="greyLine"></span>

        <h2 class="semiBold large">Systemic Infection Panel</h2>
            <span class="shortLine themeBgPrime"></span>
           
            <div class="col_340">
                <div class="pad_20">
                    <img src="images/gastronology.png" class="width100" />
                </div>
            </div>
             <div class="col_800">
                 <div class="pad_20">
                     <span class="space10"></span>
                     <span class="small fontRegular line-ht-5">A patented technology that comprises of rapid multiplex amplification and accurate identification of the virulence associated genes of the causative agents or organisms. This amazingly fast and accurate platform transcends all conventional diagnostic tests and helpful when organisms are difficult to cultivate or difficult to find.</span>
                 </div>
            </div>
            <div class="float_clear"></div>
            <h3 class="semiBold txtCenter medium mrg_B_10">Available Tests</h3>
            
        <div class="col_1_2">
                <div class="pad_15">
                    <div id="infection">
                        <ul class="basicList">
                            <li>SES Sepsis</li>
                            <li>SES Antibiotic Resistance Markers (ABR)</li>
                            <li>SES Sepsis + ABR</li>
                            <li>SES Post Transplant/ Febrile Neutropenia/ Pneumonia</li>
                            <li>SES Post Transplant/ Febrile Neutropenia + ABR</li>
                            <li>SES Transplant Viral</li>
                        </ul>
                    </div>
                </div>
            </div>
         <div class="col_1_2">
                <div class="pad_15">
                    <div id="infection">
                        <ul class="basicList">
                            <li>SES Respiratory Viral</li>
                            <li>SES Mycobacteria</li>
                            <li>SES MDR Tuberculosis</li>
                            <li>SES Community Acquired Pneumonia (CAP)</li>
                            <li>NAAT CheX Dengue Virus</li>
                        </ul>
                    </div>
                </div>
            </div>
        <div class="float_clear"></div>
     </div>


           
            <%--<div class="col_1_2">
                <div class="pad_15">
                    <ul class="bulletlist">
                        <li class="list-item one"><span>Alpha thalassemia (HBA1 & HBA2) deletion/duplication analysis</span></li>
                        <li class="list-item two"><span>Alpha thalassemia gene analysis (HBA1 & HBA2)</span></li>
                        <li class="list-item three"><span>Aplastic anemia gene panel</span></li>
                        <li class="list-item four"><span>Beta thalassemia (HBB) deletion/duplication analysis</span></li>
                        <li class="list-item five"><span>Beta thalassemia [HBB] gene analysis</span></li>
                        <li class="list-item six"><span>Congenital afibrinogenemia gene panel</span></li>
                        <li class="list-item seven"><span>Congenital dyserythropoietic anemia gene panel</span></li>
                        <li class="list-item eight"><span>Diamond blackfan anemia gene panel</span></li>
                        <li class="list-item nine"><span>Dyskeratosis congenita gene panel</span></li>
                        <li class="list-item ten"><span>Factor V Leiden (F5) mutation analysis (exon 10)</span></li>
                        <li class="list-item eleven"><span>Factor VII deficiency (F7) gene analysis</span></li>
                        <li class="list-item twelve"><span>Fanconi anemia gene panel</span></li>
                        <li class="list-item thirteen"><span>Haemophilia (F8 & F9) gene panel</span></li>
                        <li class="list-item fourteen"><span>Hereditary elliptocytosis gene panel</span></li>
                        <li class="list-item fifteen"><span>MTHFR gene analysis - 2 exons (5 & 8)</span></li>
                        <li class="list-item sixteen"><span>Sickle cell anemia (HBB) gene analysis (exon 1)</span></li>
                        <li class="list-item seventeen"><span>Sideroblastic anaemia gene panel</span></li>
                        <li class="list-item eighteen"><span>Hereditary spherocytosis gene panel</span></li>
                        <li class="list-item nineteen"><span>Von Willebrand disease (VWF) gene analysis</span></li>
                        <li class="list-item twenty"><span>Hemophagocytic lymphohistiocytosis (HLH) gene panel</span></li>
                        <li class="list-item one"><span>Factor VII deficiency (F7) gene analysis</span></li>
                        <li class="list-item two"><span>Haemophilia (F8 & F9) gene panel(analysis of the F8 inversion is not included)</span></li>
                        <li class="list-item three"><span>Sideroblastic anaemia gene panel</span></li>
                        <li class="list-item four"><span>Von Willebrand disease (VWF) gene analysis</span></li>
                        <li class="list-item four"><span>Hereditary Hemolytic Anemia Panel (For RBC membrane disorders and Enzymopathies)</span></li>
                        <li class="list-item one"><span>Haemophilia B (F9) gene analysis</span></li>
                        <li class="list-item two"><span>Iron-refractory iron deficiency anemia (TMPRSS6) gene analysis</span></li>
                        <li class="list-item three"><span>Methemoglobinemia (CYB5R3) gene analysis</span></li>
                        <li class="list-item four"><span>G6PD gene sequencing</span></li>
                        <li class="list-item one"><span>Thrombophilia gene panel</span></li>
                        <li class="list-item two"><span>[Combo] Clinical Exome Sequencing & Hemolytic uremic syndrome (CFH, CFHR1, CFHR2, CFHR3 & CFHR5) deletion/duplication analysis [NGS,MLPA].</span></li>
                        <li class="list-item three"><span>Hemophagocytic lymphohistiocytosis deletion/duplication analysis</span></li>
                    </ol>
                </div>  
            </div>
            <div class="col_1_2">
                <div class="pad_15">
                   <ol class="list">
                        <li class="list-item one"><span>Enclosed above, beneath, before, behind</span></li>
                        <li class="list-item two"><span>In green uncertainty, from which a shark</span></li>
                        <li class="list-item three"><span>At any time may dash</span></li>
                        <li class="list-item four"><span>And doom you like some huge demonic fate...</span></li>
                    </ol>
                </div>
                
            </div>--%>  
</asp:Content>

