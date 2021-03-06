
	<form action="vctRegistration.form?save=true" method="post">
		<div id="divNew">
			<b class="boxHeader"><spring:message code="vcttrac.registration.clientName"/></b>
			<div class="box">
				
				<div id="errorDivNewId" style="margin-bottom: 5px;"></div>
				<div>
					<div style="float: left; width: 45%;">
						<table>
							<tr>
								<td><input type="hidden" id="clientId" name="clientId" value="${clientId}"/></td>
								<td></td>
								<td><input type="hidden" id="existOrNewId" name="existOrNew" value="1"/></td>
								<td></td>
							</tr>
							<tr>
								<td><spring:message code="vcttrac.registration.nid"/></td>
								<td><span class="displayHelp"><img border="0" src="<openmrs:contextPath/>/images/info.gif" title="<spring:message code="vcttrac.help"/>"/></span></td>
								<td><input readonly="readonly" type="text" name="nid" value="${nid}" size="40"/></td>
								<td></td>
							</tr>
							<tr>
								<td><spring:message code="PersonName.familyName"/></td>
								<td><span class="displayHelp"><img border="0" src="<openmrs:contextPath/>/images/info.gif" title="<spring:message code="vcttrac.help"/>"/></span></td>
								<td><input type="text" size="30" name="familyName" value="${familyName}" id="familyNameId" style="text-transform: uppercase;"/></td>
								<td><span id="familyNameError"></span></td>
							</tr>
							<tr>
								<td><spring:message code="PersonName.middleName"/></td>
								<td><span class="displayHelp"><img border="0" src="<openmrs:contextPath/>/images/info.gif" title="<spring:message code="vcttrac.help"/>"/></span></td>
								<td><input type="text" size="30" name="middleName" value="${middleName}"/></td>
								<td></td>
							</tr>
							<tr>
								<td><spring:message code="PersonName.givenName"/></td>
								<td><span class="displayHelp"><img border="0" src="<openmrs:contextPath/>/images/info.gif" title="<spring:message code="vcttrac.help"/>"/></span></td>
								<td><input type="text" size="30" name="givenName" value="${givenName}" id="givenNameId"/></td>
								<td><span id="givenNameError"></span></td>
							</tr>
							<tr>
								<td><spring:message code="vcttrac.person.gender"/></td>
								<td><span class="displayHelp"><img border="0" src="<openmrs:contextPath/>/images/info.gif" title="<spring:message code="vcttrac.help"/>"/></span></td>
								<td><input type="radio" name="gender" <c:if test="${gender=='F'}">checked='checked'</c:if> id="gender-F" value="F"/><label for="gender-F"><spring:message code="vcttrac.person.female"/></label>
									<input type="radio" name="gender" <c:if test="${gender=='M'}">checked='checked'</c:if> id="gender-M" value="M"/><label for="gender-M"><spring:message code="vcttrac.person.male"/></label>
								</td>
								<td><span id="genderError"></span></td>
							</tr>
							<tr>
								<td><spring:message code="vcttrac.person.birthdate"/></td>
								<td><span class="displayHelp"><img border="0" src="<openmrs:contextPath/>/images/info.gif" title="<spring:message code="vcttrac.help"/>"/></span></td>
								<td><input type="text" size="11" name="birthdate" value="${birthdate}" id="birthdateId" onclick="showCalendar(this)"/></td>
								<td><span id="birthdateError"></span></td>
							</tr>
							<tr>
								<td><spring:message code="vcttrac.person.phoneNumber"/></td>
								<td></td>
								<td><input type="text" name="phoneNumber" value="${phoneNumber}"/></td>
							</tr>
							<tr>
								<td><spring:message code="vcttrac.person.peerEducator"/></td>
								<td></td>
								<td><input type="text" name="peerEducator"  value="${peerEducator}"/></td>
							</tr>
							<tr>
								<td><spring:message code="vcttrac.person.peerEducatorPhoneNumber"/></td>
								<td></td>
								<td><input type="text" name="peerEducatorPhoneNumber"  value="${peerEducatorPhoneNumber}"/></td>
							</tr>
						</table>
					</div>
					
					<div style="float: right; width: 45%;">
						<table>
							<tr>
								<td><spring:message code="vcttrac.date"/></td>
								<td><span class="displayHelp"><img border="0" src="<openmrs:contextPath/>/images/info.gif" title="<spring:message code="vcttrac.help"/>"/></span></td>
								<td><input type="text" size="11" name="registrationDate" id="registrationDateId" onclick="showCalendar(this)" value="${todayDate}"/></td>
								<td><span id="registrationDateError"></span></td>
							</tr>
							<tr>
								<td><spring:message code="Encounter.location"/></td>
								<td><span class="displayHelp"><img border="0" src="<openmrs:contextPath/>/images/info.gif" title="<spring:message code="vcttrac.help"/>"/></span></td>
								<td><openmrs_tag:locationField formFieldName="location" initialValue="${locationId}" /></td>
								<td><span id="locationError"></span></td>
							</tr>
							<tr>
								<td><spring:message code="vcttrac.registration.codeclient"/></td>
								<td><span class="displayHelp"><img border="0" src="<openmrs:contextPath/>/images/info.gif" title="<spring:message code="vcttrac.help"/>"/></span></td>
								<td><input type="text" size="18" name="codeClient" id="codeClientId" value="${param.codeClient}" autocomplete="off"/></td>
								<td><span id="codeClientError"></span></td>
							</tr>
							<tr>
								<td><spring:message code="vcttrac.registration.vctorpit"/></td>
								<td><span class="displayHelp"><img border="0" src="<openmrs:contextPath/>/images/info.gif" title="<spring:message code="vcttrac.help"/>"/></span></td>
								<td><select name="registrationEntryPoint">
										<option value="VCT" <c:if test="${type=='VCT'}">selected='selected'</c:if>>VCT</option>
										<option value="PIT" <c:if test="${type=='PIT'}">selected='selected'</c:if>>PIT</option>
										<option value="MALE_CIRCUMCISION" <c:if test="${type=='MALE_CIRCUMCISION'}">selected='selected'</c:if>>MALE_CIRCUMCISION</option>
										<option value="POST_EXPOSURE" <c:if test="${type=='POST_EXPOSURE'}">selected='selected'</c:if>>VCT</option>
										<option value="VCT_MOBILE" <c:if test="${type=='VCT_MOBILE'}">selected='selected'</c:if>>VCT_MOBILE</option>
										<option value="PEP" <c:if test="${type=='PEP'}">selected='selected'</c:if>>PEP</option>
										<option value="OTHER" <c:if test="${type=='OTHER'}">selected='selected'</c:if>>OTHER</option>
									</select>
								</td>
								<td></td>
							</tr>
						</table>
					</div>
					<div style="clear: both;"></div>
				</div>
			</div><br/>
			
			<b class="boxHeader"><spring:message code="vcttrac.registration.clientInformation"/></b>
			<div class="box">
				<div>
					<div style="float: left; width: 45%;">
						<table>
							<spring:nestedPath path="location">
								<openmrs:portlet url="addressLayout" id="addressPortlet" size="full" parameters="layoutShowTable=false|layoutShowExtended=false|layoutShowErrors=false" />
							</spring:nestedPath>
						</table>
					</div>
					<div style="float: right; width: 45%;">
						<table>
							<tr>
								<td><spring:message code="vcttrac.registration.CivilStatus"/></td>
								<td><span class="displayHelp"><img border="0" src="<openmrs:contextPath/>/images/info.gif" title="<spring:message code="vcttrac.help"/>"/></span></td>
								<td><select name="civilStatus" id="civilStatusId"><option value="0">--</option>
									<c:forEach items="${civilStatus}" var="cs">
										<option <c:if test="${fn:toUpperCase(currentCivilStatus)==fn:toUpperCase(cs.value)}">selected='selected'</c:if> value="${cs.key}">${cs.value}</option>
									</c:forEach>
								</select></td>
								<td><span id="civilStatusError"></span></td>
							</tr>
							<tr>
								<td><spring:message code="vcttrac.registration.educationLevel"/></td>
								<td><span class="displayHelp"><img border="0" src="<openmrs:contextPath/>/images/info.gif" title="<spring:message code="vcttrac.help"/>"/></span></td>
								<td><select name="educationLevel" id="educationLevelId"><option value="0">--</option>
									<c:forEach items="${educationLevels}" var="el">
										<option <c:if test="${fn:toUpperCase(currentEducationLevel)==fn:toUpperCase(el.value)}">selected='selected'</c:if> value="${el.key}">${el.value}</option>
									</c:forEach>
								</select></td>
								<td><span id="educationLevelError"></span></td>
							</tr>
							<tr>
								<td><spring:message code="vcttrac.registration.mainActivity"/></td>
								<td><span class="displayHelp"><img border="0" src="<openmrs:contextPath/>/images/info.gif" title="<spring:message code="vcttrac.help"/>"/></span></td>
								<td><select name="mainActivity" id="mainActivityId"><option value="0">--</option>
									<c:forEach items="${mainActivities}" var="ma">
										<option <c:if test="${fn:toUpperCase(currentMainActivity)==fn:toUpperCase(ma.value)}">selected='selected'</c:if> value="${ma.key}">${ma.value}</option>
									</c:forEach>
								</select></td>
								<td><span id="mainActivityError"></span></td>
							</tr>
						</table>
					</div>
					<div style="clear: both;"></div>
				</div>
				
			</div><br/>
			
			&nbsp;&nbsp;<input style="min-width: 100px;" type="button" id="btSave" value="<spring:message code="vcttrac.general.modification.save"/>"/>
	
		</div>	
	</form>