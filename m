Return-Path: <open-iscsi+bncBC755V5RXMKBBHHU5D3QKGQED3VAGVA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D0A20D2BF
	for <lists+open-iscsi@lfdr.de>; Mon, 29 Jun 2020 20:59:41 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id z26sf12801730qto.15
        for <lists+open-iscsi@lfdr.de>; Mon, 29 Jun 2020 11:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=fgsyqGEflZX//LasCVUjjlPNp/w4c3fgGxdtl6jmcgg=;
        b=ElTaUp+EM3OfKtnaaF9CwsEwug3W03dbboBY+HsOvmgBu6m7+OHkuHyOcq+NJhZ11i
         i0x49IH4jHgy4DBb4jCwL9vRCHtzOFJVJgnZWi3+G0BssknGD2QddYzGd/xYG6bUckzW
         iEU2bbpNtByDyKx35ZAoVSLbo30NSyO7VrCVo894RTuQuzlc9UklajVRoZj9Yil6yr5N
         g5vPD0XNTTKkypp4+iDc3FliyeU6WBASFVTaXbf4yjIo9l6+IEJFKfCtqm7TGs2W0ioe
         5RuUJ9CL36F0eH/OkJMFj/lUH2w6P/tfvbACwTuxqQGeRyOckxuKvYWchFb3ujo1uFTF
         SALw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fgsyqGEflZX//LasCVUjjlPNp/w4c3fgGxdtl6jmcgg=;
        b=NvTi/R2aYrMkcPpyrguAtomSKtBQt+rPJi/a9iCDQKymSkw7VyGb2kTKJJZsQh90s1
         3OqtEDiV89aOtFY4T3S6Uok/09lzAPZ/oUMiTW/CL72zbh760GM/psNfPj0mRn0RZxzF
         tDu0XLJBqN2HhBhBbULzzVi5p+LX+6uqV3sG6LLjXFdjHxXn8B/KLtDR05pZixiFGHoi
         gb+DPSqNbAOeKHbcbD4YJg1NS+z6CmDCeJjY3hgO324bX0jJ3PljaIE7vT5PkuPSWfHu
         LShNKNVkgHWAvIsnw/KrPVtKCum1JMxUAFZK+3LMpxAkUy6e3dR4yCRcpfSZCvA4PlCK
         1sPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fgsyqGEflZX//LasCVUjjlPNp/w4c3fgGxdtl6jmcgg=;
        b=DMpCAdT3l36FsmDpqR7dABwPw0PUc4qsOPaQKC4IzOtj6RUpxYE74u12XV6QbvoRVC
         qjcgFrexxG1/jv4GZPshKLJgC0O2ntXWO3X9eeCyxMUJgB4ym/ej2HKH5B11mXOMRxFt
         4ykTRtIneIEaK/ka0kr16a2tOxvnOMtKf1njfsJnns3Nq1/NfsYOt1Iw4U5wVRlJ99kw
         VbDAlw0OwZqNmkf6SqofqXDpmDu7Z1bjFskWSIrZ0JBEFRc5INHHEvIE9ql6nutjtawp
         YoW6lCQuG4DE56Aitlco6EAGxFOwTKMZml/y4/xZ/n7mxeqR1aE1R23VYYbwJP8RsGfq
         M0wg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530LPZ9bKMKjYazSMgjLb4XHGElStSx3NQPwqvJO3KO+wTSDArF9
	UJZQIYu7zTAOWvd+5XWa+jw=
X-Google-Smtp-Source: ABdhPJwL6pDufSTRzKDuyk2WPOCJ+Ul3g4xgWuc5yN4Zyt5DzHxxk9y2wVlZ2Ope6wnq8fU/N8M/Cw==
X-Received: by 2002:a37:a458:: with SMTP id n85mr17170725qke.167.1593457180807;
        Mon, 29 Jun 2020 11:59:40 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:17b3:: with SMTP id o48ls7184756qtj.5.gmail; Mon, 29 Jun
 2020 11:59:40 -0700 (PDT)
X-Received: by 2002:aed:2252:: with SMTP id o18mr17773826qtc.258.1593457180223;
        Mon, 29 Jun 2020 11:59:40 -0700 (PDT)
Date: Mon, 29 Jun 2020 11:59:39 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <4c70b62c-467c-4860-a951-663fb88158c7o@googlegroups.com>
In-Reply-To: <75d706c2-e331-45bf-b764-6aa77703a45a@googlegroups.com>
References: <75d706c2-e331-45bf-b764-6aa77703a45a@googlegroups.com>
Subject: Re: Large Immediate and/or Unsolicted Data causes long delays on
 R2T responses
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_821_1851384868.1593457179366"
X-Original-Sender: leeman.duncan@gmail.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

------=_Part_821_1851384868.1593457179366
Content-Type: multipart/alternative; 
	boundary="----=_Part_822_975962372.1593457179366"

------=_Part_822_975962372.1593457179366
Content-Type: text/plain; charset="UTF-8"

On Saturday, May 2, 2020 at 11:30:27 AM UTC-7, ajhutchin@gmail.com wrote:
>
> I am able to create a condition where the open-iscsi initiator fails to 
> respond to an R2T request if the immediate/unsolicited data support is 
> large ~128KB.  I've seen instances where a delay on an R2T is only a few 
> seconds and other instances where no response is received in 180 seconds.
>
> If the host is doing a prefill operation with large writes that can be 
> completed with immediate data alone and a large write that requires an R2T 
> is sent, the open-iscsi initiator sometimes fails to respond to the 
> target's R2T. 
>
> After inspecting the code, I am convinced it is caused by the lack of 
> fairness in the *libiscsi  **iscsi_data_xmit* routine, which always 
> favors the sending a new command over responding to R2Ts. 
>
> /**
>  * iscsi_data_xmit - xmit any command into the scheduled connection
>  * @conn: iscsi connection
>  *
>  * Notes:
>  * The function can return -EAGAIN in which case the caller must
>  * re-schedule it again later or recover. '0' return code means
>  * successful xmit.
>  **/
> static int iscsi_data_xmit(struct iscsi_conn *conn)
> {
> ...
> /*
> * process mgmt pdus like nops before commands since we should
> * only have one nop-out as a ping from us and targets should not
> * overflow us with nop-ins
> */
> while (!list_empty(&conn->mgmtqueue)) {
> ...
> /* process pending command queue */
> while (!list_empty(&conn->cmdqueue)) {
> ...
> while (!list_empty(&conn->requeue)) {
>
>
> Am I looking at this code correctly?  I guess this order might be better 
> for parallelization at the target by getting more commands onboard before 
> responding to outstanding R2Ts. With immediate/unsolicited data enabled, 
> the overhead of transmitting a new commands if higher and probably 
> shouldn't come before responding to R2Ts. 
>
>
> Do you have NOPs enabled? If so, do you see this issue with them disabled? 
I seriously dislike and advise against NOPs. I've never seen them actually 
help anything.

Have you tried playing with this code, i.e. changing the order? Without 
looking deeply, are the R2Ts in the command queue and not in the requeue 
queue?

What kind of load are you presenting to the server?

What do you mean by "the immediate/unsolicited data support is large 
~128KB"? What setting(s) did you change?

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/4c70b62c-467c-4860-a951-663fb88158c7o%40googlegroups.com.

------=_Part_822_975962372.1593457179366
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Saturday, May 2, 2020 at 11:30:27 AM UTC-7, ajhutchin@g=
mail.com wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-=
left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr=
"><div>I am able to create a condition where the open-iscsi initiator fails=
 to respond to an R2T request if the immediate/unsolicited data support is =
large ~128KB.=C2=A0 I&#39;ve seen instances where a delay on an R2T is only=
 a few seconds and other instances where no response is received in 180 sec=
onds.</div><div><br></div><div>If the host is doing a prefill operation wit=
h large writes that can be completed with immediate data alone and a large =
write that requires an R2T is sent, the open-iscsi initiator sometimes fail=
s to respond to the target&#39;s R2T.=C2=A0</div><div><br></div><div>After =
inspecting the code, I am convinced it is caused by the lack of fairness in=
 the <b>libiscsi=C2=A0 </b><i>iscsi_data_xmit</i> routine, which always fav=
ors the sending a new command over responding to R2Ts.=C2=A0</div><br><div>=
<div style=3D"background-color:rgb(250,250,250);border-color:rgb(187,187,18=
7);border-style:solid;border-width:1px"><code><div><div><font color=3D"#660=
066">/**</font></div><div><font color=3D"#660066">=C2=A0* iscsi_data_xmit -=
 xmit any command into the scheduled connection</font></div><div><font colo=
r=3D"#660066">=C2=A0* @conn: iscsi connection</font></div><div><font color=
=3D"#660066">=C2=A0*</font></div><div><font color=3D"#660066">=C2=A0* Notes=
:</font></div><div><font color=3D"#660066">=C2=A0*<span style=3D"white-spac=
e:pre">	</span>The function can return -EAGAIN in which case the caller mus=
t</font></div><div><font color=3D"#660066">=C2=A0*<span style=3D"white-spac=
e:pre">	</span>re-schedule it again later or recover. &#39;0&#39; return co=
de means</font></div><div><font color=3D"#660066">=C2=A0*<span style=3D"whi=
te-space:pre">	</span>successful xmit.</font></div><div><font color=3D"#660=
066">=C2=A0**/</font></div><div><font color=3D"#660066">static int iscsi_da=
ta_xmit(struct iscsi_conn *conn)</font></div><div><font color=3D"#660066">{=
</font></div><div><font color=3D"#660066">...</font></div><div><font color=
=3D"#660066"><span style=3D"white-space:pre">	</span>/*</font></div><div><f=
ont color=3D"#660066"><span style=3D"white-space:pre">	</span> * process mg=
mt pdus like nops before commands since we should</font></div><div><font co=
lor=3D"#660066"><span style=3D"white-space:pre">	</span> * only have one no=
p-out as a ping from us and targets should not</font></div><div><font color=
=3D"#660066"><span style=3D"white-space:pre">	</span> * overflow us with no=
p-ins</font></div><div><font color=3D"#660066"><span style=3D"white-space:p=
re">	</span> */</font></div><div><font color=3D"#660066"><span style=3D"whi=
te-space:pre">	</span>while (!list_empty(&amp;conn-&gt;mgmtqueue)<wbr>) {</=
font></div><div><font color=3D"#660066">...<br></font></div><div><font colo=
r=3D"#660066"><span style=3D"white-space:pre">	</span>/* process pending co=
mmand queue */</font></div><div><font color=3D"#660066"><span style=3D"whit=
e-space:pre">	</span>while (!list_empty(&amp;conn-&gt;cmdqueue)) {</font></=
div><div><font color=3D"#660066">...</font></div><div><font color=3D"#66006=
6"><span style=3D"white-space:pre">	</span>while (!list_empty(&amp;conn-&gt=
;requeue)) {</font></div><div><br></div></div></code></div><br>Am I looking=
 at this code correctly?=C2=A0 I guess this order might be better for paral=
lelization at the target by getting=C2=A0more commands onboard before respo=
nding to outstanding R2Ts. With immediate/unsolicited data enabled, the ove=
rhead of transmitting a new commands if higher and probably shouldn&#39;t c=
ome before responding to R2Ts.=C2=A0</div><div><br></div><div><br></div></d=
iv></blockquote><div>Do you have NOPs enabled? If so, do you see this issue=
 with them disabled? I seriously dislike and advise against NOPs. I&#39;ve =
never seen them actually help anything.<br></div><div><br></div><div>Have y=
ou tried playing with this code, i.e. changing the order? Without looking d=
eeply, are the R2Ts in the command queue and not in the requeue queue?</div=
><div><br></div><div>What kind of load are you presenting to the server?</d=
iv><div><br></div><div>What do you mean by &quot;the immediate/unsolicited =
data support is large ~128KB&quot;? What setting(s) did you change?<br></di=
v></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/4c70b62c-467c-4860-a951-663fb88158c7o%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/4c70b62c-467c-4860-a951-663fb88158c7o%40googlegroups.com</a>.=
<br />

------=_Part_822_975962372.1593457179366--

------=_Part_821_1851384868.1593457179366--
