<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page import="org.archive.wayback.core.UIResults" %>
<%@ page import="org.archive.wayback.util.StringFormatter" %>
<%
UIResults results = UIResults.getFromRequest(request);
StringFormatter fmt = results.getFormatter();
String contextRoot = results.getContextPrefix();
String serverRoot = results.getServerPrefix();
%>
<!-- HEADER -->
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="content-type" content="text/html;charset=iso-8859-1">
		      
		<link rel="stylesheet" type="text/css" 
			href="<%= contextRoot %>css/styles.css"
			src="<%= contextRoot %>css/styles.css">
		<title><%= fmt.format("UIGlobal.pageTitle") %></title>
		<base target="_top">
	</head>

	<body bgcolor="white" alink="red" vlink="#0000aa" link="blue" 
		style="font-family: Arial; font-size: 10pt">

		<table width="100%" border="0" cellpadding="0" cellspacing="5">

			<tr>

				<!-- WAYBACK LOGO -->
				
				<td width="26%"><a href="<%= contextRoot %>"><img src="<%= contextRoot %>images/wayback_logo_sm.gif" width="153" height="54" border="0"></a></td>

				<!-- /WAYBACK LOGO -->
			
				<!-- COLLECTION-EMPTYLOGO -->

				<td width="70%" align="right"></td>

				<!-- /COLLECTION-EMPTY LOGO -->

			</tr>

			<!-- GREEN BANNER -->
			<tr> 
				<td colspan="2" height="30" align="center" class="mainSecHeadW"> 
					<table width="100%" border="0" cellspacing="0" cellpadding="0">

						<tr class="mainBColor">
							<td colspan="2">
								<table border="0" width="80%" align="center">


									<!-- URL FORM -->
									<form action="<%= contextRoot %>query" method="GET">


										<tr>
											<td nowrap align="center"><img src="<%= contextRoot %>images/shim.gif" width="1" height="20"> 

												<b class="mainBodyW">
													<font size="2" color="#FFFFFF" face="Arial, Helvetica, sans-serif">
														<%= fmt.format("UIGlobal.enterWebAddress") %>
													</font> 
													<input type="hidden" name="type" value="urlquery">
													<input type="text" name="url" value="http://" size="24" maxlength="256">
													&nbsp;
												</b> 
												<select name="date" size="1">
													<option value="" selected><%= fmt.format("UIGlobal.selectYearAll") %></option>
													<option>2007</option>
													<option>2006</option>
													<option>2005</option>
													<option>2004</option>
													<option>2003</option>
													<option>2002</option>
													<option>2001</option>
													<option>2000</option>
													<option>1999</option>
													<option>1998</option>
													<option>1997</option>
													<option>1996</option>
												</select>
												&nbsp;
												<input type="Submit" name="Submit" value="<%= fmt.format("UIGlobal.urlSearchButton") %>" align="absMiddle">
												&nbsp;
												<a href="<%= contextRoot %>advanced_search.jsp" style="color:white;font-size:11px">
													<%= fmt.format("UIGlobal.advancedSearchLink") %>
												</a>

											</td>
										</tr>


									</form>
									<!-- /URL FORM -->
									  
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<!-- /GREEN BANNER -->
		</table>
<!-- /HEADER -->
