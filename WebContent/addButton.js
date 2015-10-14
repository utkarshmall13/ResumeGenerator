var aa_count=1;
function addmoreaa() {
	aa_count++;
	aad=document.createElement('INPUT');
	aad.type='TEXT';
	aad.name='aad'+aa_count;
	aad.id='aad'+aa_count;
	aad.size=80;
	aad.placeholder="Description";
	aat=document.createElement('INPUT');
	aat.type='TEXT';
	aat.name='aat'+aa_count;	
	aat.id='aat'+aa_count;	
	aat.size=20;
	aat.placeholder="Time";
	my_form=document.getElementById("aa");
    my_form.appendChild(aad);
    my_form.appendChild(aat);
    aabr=document.createElement('BR');
    aabr.id='aabr1'+aa_count;
    my_form.appendChild(aabr);
    aabr=document.createElement('BR');
    aabr.id='aabr2'+aa_count;
    my_form.appendChild(aabr);
    document.getElementById("aa_count").value=aa_count;
}
function removeLastaa() {
	if(aa_count==0)return;
    document.getElementById("aad"+aa_count).remove();
    document.getElementById("aat"+aa_count).remove();
    document.getElementById("aabr1"+aa_count).remove();
    document.getElementById("aabr2"+aa_count).remove();
	aa_count--;	
    document.getElementById("aa_count").value=aa_count;
}

var proj_count=1;
function addmoreproj() {
	proj_count++;
	projT=document.createElement('INPUT');
	projT.type='TEXT';projT.name='projT'+proj_count;projT.id='projT'+proj_count;projT.size=40;projT.placeholder="Title";
	projt=document.createElement('INPUT');
	projt.type='TEXT';projt.name='projt'+proj_count;projt.id='projt'+proj_count;projt.size=20;projt.placeholder="Time";
	projg=document.createElement('INPUT');
	projg.type='TEXT';projg.name='projg'+proj_count;projg.id='projg'+proj_count;projg.size=20;projg.placeholder="Guide";
	projc=document.createElement('INPUT');
	projc.type='TEXT';projc.name='projc'+proj_count;projc.id='projc'+proj_count;projc.size=20;projc.placeholder="Course/Company/University";
	projd1=document.createElement('INPUT');
	projd1.type='TEXT';projd1.name='projd1'+proj_count;projd1.id='projd1'+proj_count;projd1.size=80;projd1.placeholder="Description";
	projd2=document.createElement('INPUT');
	projd2.type='TEXT';projd2.name='projd2'+proj_count;projd2.id='projd2'+proj_count;projd2.size=80;projd2.placeholder="Description";
	projd3=document.createElement('INPUT');
	projd3.type='TEXT';projd3.name='projd3'+proj_count;projd3.id='projd3'+proj_count;projd3.size=80;projd3.placeholder="Description";
	projd4=document.createElement('INPUT');
	projd4.type='TEXT';projd4.name='projd4'+proj_count;projd4.id='projd4'+proj_count;projd4.size=80;projd4.placeholder="Description";

	var projbr=[0,0,0,0,0,0,0,0];
	for(i=1;i<=9;i++){
	    projbr[i-1]=document.createElement('BR');
	    projbr[i-1].id='projbr'+i+proj_count;
	}
	my_form=document.getElementById("proj");
    my_form.appendChild(projT);my_form.appendChild(projbr[0]); 
    my_form.appendChild(projt);my_form.appendChild(projbr[1]); 
    my_form.appendChild(projg);my_form.appendChild(projbr[2]); 
    my_form.appendChild(projc);my_form.appendChild(projbr[3]); 
    my_form.appendChild(projd1);my_form.appendChild(projbr[4]); 
    my_form.appendChild(projd2);my_form.appendChild(projbr[5]); 
    my_form.appendChild(projd3);my_form.appendChild(projbr[6]); 
    my_form.appendChild(projd4);my_form.appendChild(projbr[7]);my_form.appendChild(projbr[8]); 
    document.getElementById("proj_count").value=proj_count;
}
function removeLastproj() {
	if(proj_count==0)return;
    document.getElementById("projT"+proj_count).remove();
    document.getElementById("projt"+proj_count).remove();
    document.getElementById("projg"+proj_count).remove();
    document.getElementById("projc"+proj_count).remove();
    for(i=1;i<=4;i++){
    	document.getElementById("projd"+i+proj_count).remove();
    }
    for(i=1;i<=9;i++){
    	document.getElementById("projbr"+i+proj_count).remove();
    }
    proj_count--;	
    document.getElementById("proj_count").value=proj_count;
}

var skill_count=1;
function addmoreskill() {
	skill_count++;
	skilln=document.createElement('INPUT');
	skilln.type='TEXT';
	skilln.name='skilln'+skill_count;
	skilln.id='skilln'+skill_count;
	skilln.size=40;
	skilln.placeholder="Domian";
	skills=document.createElement('INPUT');
	skills.type='TEXT';
	skills.name='skills'+skill_count;	
	skills.id='skills'+skill_count;	
	skills.size=60;
	skills.placeholder="Comma separated skills";
	my_form=document.getElementById("skill");
    my_form.appendChild(skilln);
    my_form.appendChild(skills);
    skillbr1=document.createElement('BR');
    skillbr1.id='skillbr1'+skill_count;
    my_form.appendChild(skillbr1);
    skillbr2=document.createElement('BR');
    skillbr2.id='skillbr2'+skill_count;
    my_form.appendChild(skillbr2);
    document.getElementById("skill_count").value=skill_count;
}
function removeLastskill() {
	if(skill_count==0)return;
    document.getElementById("skilln"+skill_count).remove();
    document.getElementById("skills"+skill_count).remove();
    document.getElementById("skillbr1"+skill_count).remove();
    document.getElementById("skillbr2"+skill_count).remove();
	skill_count--;
    document.getElementById("skill_count").value=skill_count;
}


var ec_count=1;
function addmoreec() {
	ec_count++;
	ecd=document.createElement('INPUT');
	ecd.type='TEXT';
	ecd.name='ecd'+ec_count;
	ecd.id='ecd'+ec_count;
	ecd.size=80;
	ecd.placeholder="Description";
	ect=document.createElement('INPUT');
	ect.type='TEXT';
	ect.name='ect'+ec_count;	
	ect.id='ect'+ec_count;	
	ect.size=20;
	ect.placeholder="Time";
	my_form=document.getElementById("ec");
    my_form.appendChild(ecd);
    my_form.appendChild(ect);
    ecbr1=document.createElement('BR');
    ecbr1.id='ecbr1'+ec_count;
    my_form.appendChild(ecbr1);
    ecbr2=document.createElement('BR');
    ecbr2.id='ecbr2'+ec_count;
    my_form.appendChild(ecbr2);
    document.getElementById("ec_count").value=ec_count;
}
function removeLastec() {
	if(ec_count==0)return;
    document.getElementById("ecd"+ec_count).remove();
    document.getElementById("ect"+ec_count).remove();
    document.getElementById("ecbr1"+ec_count).remove();
    document.getElementById("ecbr2"+ec_count).remove();
	ec_count--;
    document.getElementById("ec_count").value=ec_count;
}