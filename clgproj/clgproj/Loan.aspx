<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Loan.aspx.cs" Inherits="clgproj.Loan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <title>Loan</title>
    <script src="https://kit.fontawesome.com/09848ef6f3.js" crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital@0;1&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="loan.css">

        <div>
            <div class="container">
		
		<div class="sec-1">
			
			<img class="main-img" src="Loan.jpg">
			<img class="icon" src="icon.png"/>
			<h1>Loan</h1>
			<p>This section gives you an overview of the Home Loan</p>

		</div>
  
		<div class="sec-2">
			
			<img class="main-img" src="Loan1.png">
			<img class="icon" src="icon.png"/>
			<h1>1. Estimate Home Loan EMI, Check Home Loan Eligibility,<br>&ensp;&ensp;Decide loan amount and tenure</h1>
 
			<p><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;Common mistake most people make is to opt for the longest loan tenure in order to maximize<br>&ensp;&ensp;&ensp;loan amount eligibility and minimize EMI.</p>
 
			<p class="p1"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;Before you join the millions of bank loan customers in India in committing this mistake,<br>&ensp;&ensp;&ensp;just understand what it costs.</p>
  
			<p class="p2"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;On a <b>₹ 40 lakhs</b> loan at <b>6.75%</b> for <b>15 years</b>, the EMI is <b>₹ 35,396/-</b> and the total interest<br>&ensp;&ensp;&ensp;you pay to the bank over <b>15 years</b> comes to <b>₹ 23,71,348/-.</b></p>
  
			<p class="p3"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;If you opt for <b>20 year</b> loan tenure instead of 15, for the same loan amount<br>&ensp;&ensp;&ensp; and at same interest rate, the EMI is <b>14%</b> lower at <b>₹ 30,415/-</b> but over <b>20 years</b>,<br>&ensp;&ensp;&ensp;you pay <b>₹ 32,99,494/-</b> as interest, which is <b>₹ 39%</b> higher than on a <b>15 year</b> loan.</p>

			<p class="p4"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;<b>So, unless you really like banks to make lots of money from you,answer the following<br>&ensp;&ensp;&ensp;questions to strike the right balance:</b></p>

			<p class="p5"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;How much EMI you can comfortably pay every month – this should not exceed 60-65% of <br>&ensp;&ensp;&ensp;your net post tax pay.</p>

			<p class="p6"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;Calculate your loan eligibility for various loan tenures based on this EMI and your age.<br>&ensp;&ensp;&ensp;Opt for the shortest loan tenure that meets your loan requirement.<br>&ensp;&ensp;&ensp;In addition to your salary, also inform the bank about your other fixed income such as rent and interest to increase eligibility.<br>&ensp;&ensp;&ensp;In case the loan amount you need is more than the maximum loan eligibility, you may add upto 3 of your earning family member as co-applicants to increase the eligibility.</p>

			<p class="p7"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;Note that the loan amount cannot exceed 75 – 80% of the cost or market value of the home you are buying.<br>&ensp;&ensp;&ensp;So, make arrangement for the balance amount (also called margin money).</p>

		</div>

		<div class="sec-3">
				
			<img class="main-img" src="Loan2.jpg">
			<img class="icon" src="icon.png"/>

			<h1> 2. Check approval status of your property</h1>
 
			<p><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;<b>For Builder Projects and Resale Properties, check the following:</b></p>

			<p class="p1"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;The property should be registered in the name of the seller and the entire chain from <br>&ensp;&ensp;&ensp;first conveyance of the property upto the last sale should be available.</p>

			<p class="p2"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;For self constructed property, approved map plan should be available.</p>

			<p class="p3"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;Some banks will fund upto 150% of the registry amount subject to 75% of market value.<br>&ensp;&ensp;&ensp;Few banks may restrict the maximum loan amount to 75% of agreement value and 75% of<br>&ensp;&ensp;&ensp;market value, whichever is lower.</p>

			<p class="p4"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;Banks don’t fund properties in gram panchayat areas or those built without approved building plan.</p>

		</div>

		<div class="sec-4">
				
			<img class="main-img" src="Loan3.jpg">
			<img class="icon" src="icon.png"/>
			<h1>3. Home loan Fixed Rate or floating rate – Choose your option</h1>
			
			<p><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;In the current market scenario, we recommend floating rate loans over fixed rate ones.</p>
			
			<p class="p1"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;This is mainly because we expect rates to trend down over coming months.<br>&ensp;&ensp;&ensp;Secondly, floating rate loans come with nil prepayment charges unlike fixed rate loans.</p>
			
			<p class="p2"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;Fixed rate loans may be advisable in a situation where you feel that your monthly cash<br>&ensp;&ensp;&ensp;flows (after paying off EMIs and other expenses) cannot take any additional<br>&ensp;&ensp;&ensp;burden/ unpredictable increases on account of interest rate rises.</p>

			<p class="p3"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp; Fixed Rate loans, however come with a higher rate of interest than floating rate<br>&ensp;&ensp;&ensp;loans and typically carry a pre-payment penalty charge.</p>

			<p class="p4"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp; Another catch with fixed rate loans is "<b>How fixed is the so-called fixed rate?</b>"<br>&ensp;&ensp;&ensp;A fixed rate is seldom fully fixed.</p>

			<p class="p5"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp; Most banks offer fixed rate for the initial period and convert this into floating rate thereafter.</p>

			<p class="p6"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp; Always check what will be the applicable rate after the fixed rate period ends.</p>
			
			<p class="p7"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp; Many customers have often complained that they see a sharp increase in interest rate when the loan converts<br>&ensp;&ensp;&ensp;from fixed rate to floating rate.</p>

			<p class="p8"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp; This is particularly true for fixed rate loans from LIC Housing Finance.</p>

		</div>

		<div class="sec-5">
			
			<img class="main-img" src="Loan4.jpg">
			<img class="icon" src="icon.png"/>
			<h1>4. Home Loan prepayment and foreclosure charges</h1>

			<p><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;While home loans are sanctioned for a tenure of upto 30 years, rarely do people actually run the <br>&ensp;&ensp;&ensp;loan for that long.</p> 

			<p class="p1"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;Each one of us wants to pay off the loan at the earliest and own our home fully.</p>

			<p class="p2"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;It is observed that the average period people take to pay off their home mortgage <br>&ensp;&ensp;&ensp;fully is around 8 years.</p>

			<p class="p3"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;This happens because most people make partial or even full prepayment of the loan when<br>&ensp;&ensp;&ensp;they have surplus money.</p>

			<p class="p4"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp; After all, it may not be a bad idea to use your annual incentive to pay off your<br>&ensp;&ensp;&ensp;home loan partially.</p>

			<p class="p5"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;It is important to select a bank that allows you to prepay your loan without any charges or hassles.</p>

			<p class="p6"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;As per RBI circulars, banks are not allowed to charge prepayment penalty or charges on <br>&ensp;&ensp;&ensp;floating rate home loans.</p>

			<p class="p7"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp; However, banks may charge penalty on prepayment of fixed rate loans.</p>

			<p class="p8"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;Charges may vary from 1% to upto 3% of the loan amount. So, check this aspect carefully before<br>&ensp;&ensp;&ensp;selecting a bank and home loan. Another option is a smart loan or an interest saver loan.</p>

			<p class="p9"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;Do you normally keep a significant bank balance or do you run high bank balance at times?<br>&ensp;&ensp;&ensp;You may like to consider Home Credit or Home Saver or Maxgain options which allow you to deposit<br>&ensp;&ensp;&ensp;your surplus savings in a bank account and pay interest on home loan only on the net difference<br>&ensp;&ensp;&ensp;between the two.</p>

			<p class="p10"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp; So, for the period that your surplus cash stays in the bank, you pay less interest on your home loan.</p>

		</div>

		<div class="sec-6">
				
			<img class="main-img" src="Loan5.jpg">
			<img class="icon" src="icon.png"/>
			<h1>5.Select best bank for Home Loan</h1>
			
			<p><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;Your choice of banks should be based not only on the rate of interest but also some other <br>&ensp;&ensp;&ensp;very important factors, which we have described here:</p>
			
			<p class="p1"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;Turnaround time and customer service levels: Read the customer ratings and reviews of <br>&ensp;&ensp;&ensp;banks by customers like you who have availed loans in the recent past.</p>
			
			<p class="p2"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;Their experience may help you make a better choice and avoid common mistakes.</p>

 			<p class="p3"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp; Check which banks will offer you doorstep service and for which ones would you need <br>&ensp;&ensp;&ensp;to visit the bank branch.</p>

 			<p class="p4"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp; Check the past base rate trend of the banks you are considering. </p>

 			<p class="p5"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp; This can tell you if the banks changes rates too often. </p>

 			<p class="p6"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp; Check if the bank passes on the benefit of lower policy rates to its old customers or not.</p>

 			<p class="p7"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp; Compare offers and choose the one that’s best and not necessarily the cheapest –<br>&ensp;&ensp;&ensp;By now you have a good sense of your loan requirements and can compare loan offers from multiple banks.</p>

 			<p class="p8"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp; Compare offers on interest rates, processing fees, customer ratings, servicing and all-in-cost.</p>

		</div>

		<div class="sec-7">
				
			<img class="main-img" src="Faq.jpg">
			<img class="icon" src="icon.png"/>
			<h1>FAQs</h1>
			
			<p>&ensp;✅Is the security required for a home loan?</p>
			
			<p class="p1"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp;A home loan is a secured loan that requires the borrower to keep collateral with the <br>&ensp;&ensp;&ensp;lender. However, the collateral in case of the home loan is the home itself for which the<br>&ensp;&ensp;&ensp;loan is borrowed. In case a person fails to repay the home loan on time, the lender has the right to<br>&ensp;&ensp;&ensp;acquire the property.</p>
			
			<p class="p2">&ensp;✅How can I clear my home loan fast?</p>

 			<p class="p3"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp; You can clear your home loan fast by paying the repayment amount either partially or <br>&ensp;&ensp;&ensp;fully, through home loan prepayment or foreclosure. Paying off the amount will<br>&ensp;&ensp;&ensp;not help you get rid of your home loan fast, but would also lower the home loan burden,<br>&ensp;&ensp;&ensp;as the principal amount is reduced. However, before going for the prepayment and foreclosure,<br>&ensp;&ensp;&ensp;it is better to know the foreclosure or prepayment charges that the lender charges in advance.</p>

 			<p class="p4">&ensp;✅Who can be a guarantor for a home loan in India?</p>

 			<p class="p5"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp; A guarantor should be an individual above the age of 18 with a good financial history <br>&ensp;&ensp;&ensp;and a stable source of income. Apart, he or she should be sure about the credibility of the<br>&ensp;&ensp;&ensp;loan applicant. </p>

 			<p class="p6">&ensp; ✅What is the easiest bank to get a home loan from?</p>

 			<p class="p7"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>&ensp; You can get a home loan easily nowadays, through the online loan portal of the bank. <br>&ensp;&ensp;&ensp;The online home loan application process is easy, quick, reliable and convenient.</p>

		</div>

	</div>

        </div>
	</asp:Content>