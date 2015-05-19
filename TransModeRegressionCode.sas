/*You just imported your data set from the CSV file.  Currently (5.22.12), it is
located at Q:\EMS Safety\Data Collection\PCR_Data_forModel_FINAL.csv*/

/*This makes tables for the original dataset for each illness*/
proc freq data=Transportmode;
tables PatientIllness FromSceneFin ToSceneFin PatientIllness*FromSceneFin;
run;

/*This makes dummy variables for each illness*/
Data dummytransportillness;
set finaltransportdata;
IF PatientIllness="AbdominalProb" then AbdominalProb=1; ELSE AbdominalProb=0;
IF PatientIllness="AirwayObstruc" then AirwayObstruct=1; ELSE AirwayObstruct=0;
IF PatientIllness="AllergicReac" then AllergicReac=1; ELSE AllergicReac=0;
IF PatientIllness="AlteredLOC" then AlteredLOC=1; ELSE AlteredLOC=0;
IF PatientIllness="Asthma" then Asthma=1; ELSE Asthma=0;
IF PatientIllness="BackPain" then BackPain=1; ELSE BackPain=0;
IF PatientIllness="BehavPsych" then BehavPsych=1; ELSE BehavPsych=0;
IF PatientIllness="Bleeding" then Bleeding=1; ELSE Bleeding=0;
IF PatientIllness="BreathingProb" then BreathingProb=1; ELSE BreathingProb=0;
IF PatientIllness="CardiacArrest" then CardiacArrest=1; ELSE CardiacArrest=0;
IF PatientIllness="CardiacSympt" then CardiacSympt=1; ELSE CardiacSympt=0;
IF PatientIllness="ChestPain" then ChestPain=1; ELSE ChestPain=0;
IF PatientIllness="CHFPE" then CHFPE=1; ELSE CHFPE=0;
IF PatientIllness="Childbirth" then Childbirth=1; ELSE Childbirth=0;
IF PatientIllness="ContagiousDis" then ContagiousDis=1; ELSE ContagiousDis=0;
IF PatientIllness="COPD" then COPD=1; ELSE COPD=0;
IF PatientIllness="CPMuscSkel" then CPMuscSkel=1; ELSE CPMuscSkel=0;
IF PatientIllness="Dehydration" then Dehydration=1; ELSE Dehydration=0;
IF PatientIllness="DeviceEquipProb" then DeviceEquipProb=1; ELSE DeviceEquipProb=0;
IF PatientIllness="Diabetic" then Diabetic=1; ELSE Diabetic=0;
IF PatientIllness="Diarrhea" then Diarrhea=1; ELSE Diarrhea=0;
IF PatientIllness="DrainageDischarge" then DrainageDischarge=1; ELSE DrainageDischarge=0;
IF PatientIllness="DTs" then DTs=1; ELSE DTs=0;
IF PatientIllness="EnvirnmntlInj" then EnvirnmntlInj=1; ELSE EnvirnmntlInj=0;
IF PatientIllness="Epistaxis" then Epistaxis=1; ELSE Epistaxis=0;
IF PatientIllness="EyeProb" then EyeProb=1; ELSE EyeProb=0;
IF PatientIllness="FeverFlu" then FeverFlu=1; ELSE FeverFlu=0;
IF PatientIllness="GIBleed" then GIBleed=1; ELSE GIBleed=0;
IF PatientIllness="Gyn" then Gyn=1; ELSE Gyn=0;
IF PatientIllness="Headache" then Headache=1; ELSE Headache=0;
IF PatientIllness="HeartCardiac" then HeartCardiac=1; ELSE HeartCardiac=0;
IF PatientIllness="Hypertension" then Hypertension=1; ELSE Hypertension=0;
IF PatientIllness="Hyperthermia" then Hyperthermia=1; ELSE Hyperthermia=0;
IF PatientIllness="Hypotension" then Hypotension=1; ELSE Hypotension=0;
IF PatientIllness="Hypothermia" then Hypothermia=1; ELSE Hypothermia=0;
IF PatientIllness="Ingestion" then Ingestion=1; ELSE Ingestion=0;
IF PatientIllness="Inhalation" then Inhalation=1; ELSE Inhalation=0;
IF PatientIllness="Malaise" then Malaise=1; ELSE Malaise=0;
IF PatientIllness="MassLesion" then MassLesion=1; ELSE MassLesion=0;
IF PatientIllness="Nausea" then Nausea=1; ELSE Nausea=0;
IF PatientIllness="Newborn" then Newborn=1; ELSE Newborn=0;
IF PatientIllness="NotApp" then NotApp=1; ELSE NotApp=0;
IF PatientIllness="OB" then OB=1; ELSE OB=0;
IF PatientIllness="Other" then Other=1; ELSE Other=0;
IF PatientIllness="Pain" then Pain=1; ELSE Pain=0;
IF PatientIllness="PoisonOD" then PoisonOD=1; ELSE PoisonOD=0;
IF PatientIllness="RespArrest" then RespArrest=1; ELSE RespArrest=0;
IF PatientIllness="RespDistress" then RespDistress=1; ELSE RespDistress=0;
IF PatientIllness="Seizure" then Seizure=1; ELSE Seizure=0;
IF PatientIllness="Shock" then Shock=1; ELSE Shock=0;
IF PatientIllness="SickPerson" then SickPerson=1; ELSE SickPerson=0;
IF PatientIllness="StrokeCVA" then StrokeCVA=1; ELSE StrokeCVA=0;
IF PatientIllness="Swelling" then Swelling=1; ELSE Swelling=0;
IF PatientIllness="Syncope" then Syncope=1; ELSE Syncope=0;
IF PatientIllness="TerminalIllne" then TerminalIllness=1; ELSE TerminalIllness=0;
IF PatientIllness="Trauma" then Trauma=1; ELSE Trauma=0;
IF PatientIllness="UnconsUnk" then UnconsUnk=1; ELSE UnconsUnk=0;
IF PatientIllness="Unknown" then Unknown=1; ELSE Unknown=0;
IF PatientIllness="Vertigo" then Vertigo=1; ELSE Vertigo=0;
IF PatientIllness="Vomiting" then Vomiting=1; ELSE Vomiting=0;
IF PatientIllness="Weakness" then Weakness=1; ELSE Weakness=0;
IF PatientIllness="NotEntered" then NotEntered=1; ELSE NotEntered=0;
run;

proc logistic data=dummytransportillness descending;
class AbdominalProb AirwayObstruct AllergicReac AlteredLOC Asthma BackPain Bleeding BreathingProb CardiacArrest CardiacSympt ChestPain CHFPE Childbirth COPD Diabetic DTs GIBleed Gyn Headache HeartCardiac Hypotension Hypothermia Ingestion Inhalation NotEntered OB Other Pain PoisonOD RespArrest RespDistress Seizure SickPerson StrokeCVA Syncope TerminalIllness Trauma UnconsUnk Unknown Vomiting / param=ref;
model FromSceneFin = AbdominalProb AirwayObstruct AllergicReac AlteredLOC Asthma BackPain Bleeding BreathingProb CardiacArrest CardiacSympt ChestPain CHFPE Childbirth COPD Diabetic DTs GIBleed Gyn Headache HeartCardiac Hypotension Hypothermia Ingestion Inhalation NotEntered OB Other Pain PoisonOD RespArrest RespDistress Seizure SickPerson StrokeCVA Syncope TerminalIllness Trauma UnconsUnk Unknown Vomiting;
run;
