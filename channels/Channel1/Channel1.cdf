<?xml version='1.0' ?>
<Channel platform="CamelotPSP_CLT_1-4-0.jar" terminal="GT604_L26_1300" fcldate="8/30/2017" romID="ROM1" cdfW="800" cdfH="480" grouping="false">
   <Definitions>
      <observerdef name="BarcodeObserver" handler="com.gtech.esmultimedia.cdf.extension.BarcodeObserver" />
      <observerdef name="CommStatusDataObserver" handler="com.gtech.esmultimedia.cdf.extension.CommStatusDataObserver" />
      <observerdef name="DynamicShowObserver" handler="com.gtech.esmultimedia.cdf.extension.DynamicShowObserver" />
      <observerdef name="EuroMillionsDataObserver" handler="com.gtech.esmultimedia.cdf.extension.EuroMillionsDataObserver" />
      <observerdef name="HotPicksDataObserver" handler="com.gtech.esmultimedia.cdf.extension.HotPicksDataObserver" />
      <observerdef name="InquiryDetailsObserver" handler="com.gtech.esmultimedia.cdf.extension.InquiryDetailsObserver" />
      <observerdef name="LottoDataObserver" handler="com.gtech.esmultimedia.cdf.extension.LottoDataObserver" />
      <observerdef name="OSTDataObserver" handler="com.gtech.esmultimedia.cdf.extension.OSTDataObserver" />
      <observerdef name="SignonStateObserver" handler="com.gtech.esmultimedia.cdf.extension.SignonStateObserver" />
      <observerdef name="SystemDateTimeObserver" handler="com.gtech.esmultimedia.cdf.extension.SystemDateTimeObserver" />
      <observerdef name="TerminalModeDataObserver" handler="com.gtech.esmultimedia.cdf.extension.TerminalModeDataObserver" />
      <observerdef name="TextDataObserver" handler="com.gtech.esmultimedia.cdf.extension.TextDataObserver" />
      <observerdef name="ThunderballDataObserver" handler="com.gtech.esmultimedia.cdf.extension.ThunderballDataObserver" />
   </Definitions>
   <Observers>
      <BarcodeObserver name="BarcodeObserver" />
      <CommStatusDataObserver name="CommStatusDataObserver" />
      <DynamicShowObserver name="DynamicShowObserver" />
      <EuroMillionsDataObserver name="EuroMillionsDataObserver" />
      <HotPicksDataObserver name="HotPicksDataObserver" />
      <InquiryDetailsObserver name="InquiryDetailsObserver" />
      <LottoDataObserver name="LottoDataObserver" />
      <OSTDataObserver name="OSTDataObserver" />
      <SignonStateObserver name="SignonStateObserver" />
      <SystemDateTimeObserver name="SystemDateTimeObserver" />
      <TerminalModeDataObserver name="TerminalModeDataObserver" />
      <TextDataObserver name="TextDataObserver" />
      <ThunderballDataObserver name="ThunderballDataObserver" />
   </Observers>
   <Show name="channeldefault" contentHandler="" content="channeldefault.sdf" repeat="false" interrupt="true" repeatable="false" persistent="false" active="false" />
   <Show name="dbg_self_select1" contentHandler="" content="dbg_self_select1.sdf" repeat="true" interrupt="true" repeatable="true" persistent="false" active="true" >
      <Scenario name="_ISDBG">
         <Condition observer="SignonStateObserver" name="signedonstate.details.iscltdbg" operator="EQ" target="true" />
      </Scenario>
      <Schedule name="_NOTDRAWBREAK1" lastModified="undefined" >
         <TimeSlot startHour="05" startMinute="00" endHour="19" endMinute="30" />
         <Recurrence implClass="com.gtech.esmultimedia.cdf.schedule.DayOfWeekRecurrence" mapping="0011011" />
      </Schedule>
   </Show>
   <Show name="dbg_self_select2" contentHandler="" content="dbg_self_select2.sdf" repeat="true" interrupt="true" repeatable="true" persistent="false" active="true" >
      <Scenario name="_ISDBG">
         <Condition observer="SignonStateObserver" name="signedonstate.details.iscltdbg" operator="EQ" target="true" />
      </Scenario>
      <Schedule name="_NOTDRAWBREAK2" lastModified="undefined" >
         <TimeSlot startHour="05" startMinute="00" endHour="23" endMinute="00" />
         <Recurrence implClass="com.gtech.esmultimedia.cdf.schedule.DayOfWeekRecurrence" mapping="1100100" />
      </Schedule>
   </Show>
   <Show name="dbg_lotto_jackpot1" contentHandler="" content="dbg_lotto_jackpot1.sdf" repeat="true" interrupt="true" repeatable="true" persistent="false" active="true" >
      <Scenario name="_ISDBG">
         <Condition observer="SignonStateObserver" name="signedonstate.details.iscltdbg" operator="EQ" target="true" />
      </Scenario>
      <Schedule name="_NOTDRAWBREAKLOTTO1" lastModified="undefined" >
         <TimeSlot startHour="05" startMinute="00" endHour="19" endMinute="30" />
         <Recurrence implClass="com.gtech.esmultimedia.cdf.schedule.DayOfWeekRecurrence" mapping="0001001" />
      </Schedule>
   </Show>
   <Show name="dbg_lotto_jackpot2" contentHandler="" content="dbg_lotto_jackpot2.sdf" repeat="true" interrupt="true" repeatable="true" persistent="false" active="true" >
      <Scenario name="_ISDBG">
         <Condition observer="SignonStateObserver" name="signedonstate.details.iscltdbg" operator="EQ" target="true" />
      </Scenario>
      <Schedule name="_NOTDRAWBREAKLOTTO2" lastModified="undefined" >
         <TimeSlot startHour="05" startMinute="00" endHour="23" endMinute="00" />
         <Recurrence implClass="com.gtech.esmultimedia.cdf.schedule.DayOfWeekRecurrence" mapping="1110110" />
      </Schedule>
   </Show>
   <Show name="lotto-april-extra-chance" contentHandler="" content="lotto-april-extra-chance.sdf" repeat="true" interrupt="true" repeatable="true" persistent="false" active="true" >
      <Scenario name="_ISDBG">
         <Condition observer="SignonStateObserver" name="signedonstate.details.iscltdbg" operator="EQ" target="true" />
      </Scenario>
   </Show>
   <Show name="ltp_monopolymillionaire_nov15" contentHandler="" content="ltp_monopolymillionaire_nov15.sdf" repeat="true" interrupt="true" repeatable="true" persistent="false" active="true" />
   <Show name="dbg_tnl_playhere_generic" contentHandler="" content="dbg_tnl_playhere_generic.sdf" repeat="true" interrupt="true" repeatable="true" persistent="false" active="true" >
      <Scenario name="_ISDBG">
         <Condition observer="SignonStateObserver" name="signedonstate.details.iscltdbg" operator="EQ" target="true" />
      </Scenario>
   </Show>
   <Show name="dbg_em_jackpot1" contentHandler="" content="dbg_em_jackpot1.sdf" repeat="true" interrupt="true" repeatable="true" persistent="false" active="true" >
      <Scenario name="_ISDBG">
         <Condition observer="SignonStateObserver" name="signedonstate.details.iscltdbg" operator="EQ" target="true" />
      </Scenario>
      <Schedule name="_NOTDRAWBREAKEM1" lastModified="undefined" >
         <TimeSlot startHour="05" startMinute="00" endHour="19" endMinute="30" />
         <Recurrence implClass="com.gtech.esmultimedia.cdf.schedule.DayOfWeekRecurrence" mapping="0010010" />
      </Schedule>
   </Show>
   <Show name="dbg_em_jackpot2" contentHandler="" content="dbg_em_jackpot2.sdf" repeat="true" interrupt="true" repeatable="true" persistent="false" active="true" >
      <Scenario name="_ISDBG">
         <Condition observer="SignonStateObserver" name="signedonstate.details.iscltdbg" operator="EQ" target="true" />
      </Scenario>
      <Schedule name="_NOTDRAWBREAKEM2" lastModified="undefined" >
         <TimeSlot startHour="05" startMinute="00" endHour="23" endMinute="00" />
         <Recurrence implClass="com.gtech.esmultimedia.cdf.schedule.DayOfWeekRecurrence" mapping="1101101" />
      </Schedule>
   </Show>
   <Show name="MegaFridayFeb2016" contentHandler="" content="MegaFridayFeb2016.sdf" repeat="true" interrupt="true" repeatable="true" persistent="false" active="true" >
      <Scenario name="_ISDBG">
         <Condition observer="SignonStateObserver" name="signedonstate.details.iscltdbg" operator="EQ" target="true" />
      </Scenario>
      <Schedule name="MFFEB16" lastModified="undefined" >
         <DateRange startHour="01" startMinute="00" startMonth="12" startDay="01" startYear="2015" endHour="19" endMinute="30" endMonth="02" endDay="26" endYear="2016" />
      </Schedule>
   </Show>
   <Show name="ltp_bejeweled_jan16" contentHandler="" content="ltp_bejeweled_jan16.sdf" repeat="true" interrupt="true" repeatable="true" persistent="false" active="true" />
   <Show name="sc_generic_scan" contentHandler="" content="sc_generic_scan.sdf" repeat="true" interrupt="true" repeatable="true" persistent="false" active="true" />
   <Show name="PeoplesProject1" contentHandler="" content="PeoplesProject1.sdf" repeat="true" interrupt="true" repeatable="true" persistent="false" active="true" >
      <Schedule name="Peoples Project Feb" lastModified="undefined" >
         <DateRange startHour="01" startMinute="00" startMonth="11" startDay="04" startYear="2015" endHour="23" endMinute="00" endMonth="02" endDay="28" endYear="2016" />
      </Schedule>
   </Show>
   <Show name="PeoplesProject2" contentHandler="" content="PeoplesProject2.sdf" repeat="true" interrupt="true" repeatable="true" persistent="false" active="true" >
      <Schedule name="Peoples Project March" lastModified="undefined" >
         <DateRange startHour="01" startMinute="00" startMonth="02" startDay="29" startYear="2016" endHour="23" endMinute="00" endMonth="03" endDay="14" endYear="2016" />
      </Schedule>
   </Show>
   <Show name="scan" contentHandler="" content="scan.sdf" repeat="false" interrupt="true" repeatable="false" persistent="false" active="true" >
      <Event eventName="_SCAN" observer="BarcodeObserver" name="barcode.data.value" lastModified="1443621924767" />
   </Show>
   <Show name="touch" contentHandler="" content="touch.sdf" repeat="false" interrupt="true" repeatable="false" persistent="false" active="true" />
   <Show name="masterost" contentHandler="" content="masterost.sdf" repeat="false" interrupt="true" repeatable="false" persistent="false" active="true" >
      <Event eventName="_MASTEROST" observer="OSTDataObserver" name="scard.game.id" lastModified="Thu Oct 8 12:18:15 GMT+0100 2015" />
   </Show>
   <Show name="dbg_lotto_mint_landing" contentHandler="" content="dbg_lotto_mint_landing.sdf" repeat="true" interrupt="true" repeatable="true" persistent="false" active="false" >
      <Scenario name="_ISDBG">
         <Condition observer="SignonStateObserver" name="signedonstate.details.iscltdbg" operator="EQ" target="true" />
      </Scenario>
   </Show>
   <Show name="dbg_lotto_matchtwo1" contentHandler="" content="dbg_lotto_matchtwo1.sdf" repeat="true" interrupt="true" repeatable="true" persistent="false" active="false" >
      <Scenario name="_ISDBG">
         <Condition observer="SignonStateObserver" name="signedonstate.details.iscltdbg" operator="EQ" target="true" />
      </Scenario>
      <Schedule name="_NOTDRAWBREAKLOTTO1" lastModified="undefined" >
         <TimeSlot startHour="05" startMinute="00" endHour="19" endMinute="30" />
         <Recurrence implClass="com.gtech.esmultimedia.cdf.schedule.DayOfWeekRecurrence" mapping="0001001" />
      </Schedule>
   </Show>
   <Show name="dbg_lotto_matchtwo2" contentHandler="" content="dbg_lotto_matchtwo2.sdf" repeat="true" interrupt="true" repeatable="true" persistent="false" active="false" >
      <Scenario name="_ISDBG">
         <Condition observer="SignonStateObserver" name="signedonstate.details.iscltdbg" operator="EQ" target="true" />
      </Scenario>
      <Schedule name="_NOTDRAWBREAKLOTTO2" lastModified="undefined" >
         <TimeSlot startHour="05" startMinute="00" endHour="23" endMinute="00" />
         <Recurrence implClass="com.gtech.esmultimedia.cdf.schedule.DayOfWeekRecurrence" mapping="1110110" />
      </Schedule>
   </Show>
</Channel>
