<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="ConnTools.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles.css?<?php echo time(); ?>" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
</head>
<body>
<h1>Government Schemes for persons with Disabilities</h1>
<h2>Welcome
<%String u_name = session.getAttribute("u_name").toString();
		out.println("  "+u_name);%></h2>
<div class="topnav">
  <a  href="#home">Home</a>
  <a href="Personal_details.jsp">Personal Details</a>
  <a href="caretaker_details.jsp">Care Taker Details</a>
  <a class="active" href="scholarship.jsp">Scholarship Details</a>
  <a href="Quota.jsp">Job Quota Details</a>
  <a href="schemes.jsp">Schemes</a>
  <a href="Demo15.jsp" style = "float: right">Logout <i class="fa fa-sign-out"></i></a>
  
</div>
<div class="box">
<form action="scholarship.jsp" method="post">
<label>Select your annual Income:</label>
<select name="count" id="count">
    <option value="1">Rs.0-25000</option>
    <option value="2">Rs.25000-75000</option>
    <option value="3">Rs.75000-100000</option>
    <option value="4">Rs.100000-200000</option>
    <option value="5">Rs.200000-250000</option>
    <option value="6">Rs.250000-400000</option>
    <option value="7">Rs.400000-600000</option>
    <option value="8">Rs.600000-800000</option>
    <option value="9">Rs.800000 and above</option>
</select>
<input type="submit" name="submit" value="Check">
</form>
<%
String count1=null;
count1=request.getParameter("count");
if(count1!=null){
	if(count1.equals("1")   ||count1.equals("2")||count1.equals("3")||count1.equals("4")||count1.equals("5")){
		out.print("1.Pre-matric Scholarship for Students with Disabilities<br>The scheme has been introduced by the Government of India with an objective to provide the opportunities for higher education to students having more than 40% disability.<br>Eligibility- Class 9 and 10 students with annual family Income < INR 2 Lac.<br>Benefits- Stipend, book and additional allowances<br>");
		out.print("2. Post Matric Scholarship for Students with Disabilities<br>This is yet another significant scholarship scheme introduced by the Government of India to serve the objective of providing scholarships for students with disability to study further in order to earn their livelihood and find a dignified place for themselves within the society.<br>Eligibility- Class 10 or 12 pass out students with annual family income < INR 2.5 Lac<br>Benefits- Maintenance, book and additional allowances, reimbursement of a compulsory non-refundable fee");
	}
	if(count1.equals("6")){
		out.print("1.NHFDC Trust Fund Scholarship for Differently-Abled Students<br>");
		out.print("Introduced by National Handicapped Finance and Development Corporation (NHFDC), the scheme aims at enabling differently-abled students to pursue a technical or professional course from recognized institutes and get employed/self-employed.<br>");
		out.print("Eligibility- Differently-abled/Physically challenged students, pursuing degree or post graduate level technical and professional courses from a recognized institution. Annual family income < INR 3 Lac<br>");
		out.print("Benefits- Maintenance allowance (INR 2500-3000 pm), book/stationery allowance (INR 10000 per year), aid and appliances (if applicable)");
	}
	if(count1.equals("7")){
		out.print("1.Scholarship for Top Class Education for Students with Disability");
				out.print("The scheme introduced by the Government of India with an objective to recognize and promote quality education among students with disability and allow them to pursue post-graduation courses.");
						out.print("Eligibility- Graduates with annual family Income < INR 6 Lac, enrolled in any full-time course at postgraduate/diploma.");
								out.print("Benefits- Tuition fee, maintenance and special allowance");
	}
	if(count1.equals("8")){
		out.print("1.AICTE - Saksham Scholarship Scheme");
		out.print("All India Council for Technical Education under MHRD scheme is providing scholarships for students with disability to physically challenged. Students starting diploma/degree level technical course at an AICTE approved institution are eligible for Saksham Scholarship 2017-18. A total of 1000 (500 for diploma and 500 for degree courses) scholarships are available under this scheme.");
				out.print("Eligibility- Differently-abled/Physically challenged students (disability level more than 40%), pursuing the first year of diploma/degree courses from an AICTE recognized institution. Annual family income < INR 8 Lac");
						out.print("Benefits- Total 1000 scholarship are given @ Rs. 30000/- as tuition fee reimbursement and Rs. 20000/- as incidentals each year.");
	}
	if(count1.equals("9")){
		out.print("1.Loan for Professional/Educational/Training Courses to Disabled Persons");
		out.print("It is a renowned education scheme introduced by National Handicapped Finance and Development Corporation with an objective to grant a loan to disabled students to help them in paying their education costs and pursue higher education both within India or abroad. These scholarships for students with disability always receive many applications. It also awards the deserving candidates in equal ratio  first year of diploma/degree courses from an AICTE recognized institution Annual family income < INR 10 Lac");
		out.print("Eligibility- Candidates with 40% or more disability pursuing Graduation courses / Post graduation courses / Professional courses, Other courses approved by UGC/Government/AICTE etc.");
		out.print("Benefits- Maximum INR 10.00 lacs for study in India and maximum INR 20.00 lacs for abroad studies. Rate of interest – 4% per annum. A rebate of 0.5% on interest to women beneficiaries.");
		out.print("2.Scheme for financial assistance for skill & entrepreneurial development");
		out.print("The scheme is offered by NHFDC with an objective to provide training to disabled persons and make them self-dependent and capable through proper technical training in tradition and technical entrepreneurship and occupations <10L");
		out.print("Eligibility- Candidates between 15 and 50 years of age");
		out.print("Benefits- 100% of the total recurring cost of the programme and stipend of INR 500 per week");
	}
}
%>
</div>
</body>
</html>