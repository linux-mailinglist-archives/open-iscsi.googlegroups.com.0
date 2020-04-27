Return-Path: <open-iscsi+bncBCRKJ2M45MFBBQPYW32QKGQENUWPLMI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 524AD1C27B3
	for <lists+open-iscsi@lfdr.de>; Sat,  2 May 2020 20:30:26 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id e44sf15345563qta.9
        for <lists+open-iscsi@lfdr.de>; Sat, 02 May 2020 11:30:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rNc9k7It/zd0gw+cvveYSlHjC1/KxBaT3ET7504MlPM=;
        b=pFV+6kbmVT66z6XwjuSAnkOCvTPt020sXcJnYhStBZfMsLHeMuAQFWvZFN0hpdi4ml
         GfBBqXz6AXRxFROa5avUQp/4VSTOMF7RsyzHNQJy78076i+AIiPqPG7vT0z8PmQ6pRk5
         0Tzzlc1fcDW8xiTyj2E6C+7Wpijvdq3t1FJ390ULvewlGaqu9d7B3UtM87UOBwD1NB/Y
         hBYtyn2P5HwgMamJxtm7p6WWzhTTGGif7HwMtkYBJ23acPVSaF+VE9/xgCgFKfs/Jq7O
         oOw+pUGyynGHtZcsiARSQmfPx1dvqO0MOwcw8FKJrERRPM1QDoSPrAGTedPxz+oKzr9j
         HuYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=rNc9k7It/zd0gw+cvveYSlHjC1/KxBaT3ET7504MlPM=;
        b=rB6cA0zSIfhtOYz1jzBE7AjUzx4NcbjyYXJcWdT2bG/mwBS08DkqJmc7zoTFBJKGkS
         gmm+zZxdPPkxW0cfex8szNyzvzaHNV9fbLXfwzsiVPkC9v2KsC3TTjb/4BdJSNj3Sb5K
         7avqX+mZnqiWb0F5u0fbeRL58WkXj2EA6SoOJyYOtJisVGTfEVAHkIFSjM40CgG/AwMh
         WsicbNHjUq9GdthZXnbs0bQUETDZFhe+g3B5Vp1l0Ms95h0cJPt4cZOHU2QYejwiYouK
         KWb5r0tqBUMo6sQhOPK0Zm4rlHd6YACAOTfXB+qRTMes3W4XwdSUuvwDFeXT2YGhzAcM
         fLEA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PuaOur+CC1hrYZrO2JectK19MZ6zlzFFiXnFObffBxSUuSha8G8u
	cRJADWHXzvpLlCw9MYFSz/w=
X-Google-Smtp-Source: APiQypKlhfeB0GGwDnDuKN1pBTKU1MnspgBm6oB/e3MSzBImfddLEjNRfympKKudz6uJEZOe3nBUwg==
X-Received: by 2002:a05:620a:1236:: with SMTP id v22mr9453924qkj.169.1588444225264;
        Sat, 02 May 2020 11:30:25 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:1c62:: with SMTP id j31ls6067422qtk.5.gmail; Sat, 02 May
 2020 11:30:25 -0700 (PDT)
X-Received: by 2002:ac8:2783:: with SMTP id w3mr9485275qtw.265.1588444225092;
        Sat, 02 May 2020 11:30:25 -0700 (PDT)
Received: by 2002:a37:9d4f:0:0:0:0:0 with SMTP id g76msqke;
        Mon, 27 Apr 2020 14:00:09 -0700 (PDT)
X-Received: by 2002:a05:620a:13e1:: with SMTP id h1mr24044920qkl.10.1588021209462;
        Mon, 27 Apr 2020 14:00:09 -0700 (PDT)
Date: Mon, 27 Apr 2020 14:00:09 -0700 (PDT)
From: ajhutchin@gmail.com
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <75d706c2-e331-45bf-b764-6aa77703a45a@googlegroups.com>
Subject: Large Immediate and/or Unsolicted Data causes long delays on R2T
 responses
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1745_1479019686.1588021209247"
X-Original-Sender: ajhutchin@gmail.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

------=_Part_1745_1479019686.1588021209247
Content-Type: multipart/alternative; 
	boundary="----=_Part_1746_615314349.1588021209247"

------=_Part_1746_615314349.1588021209247
Content-Type: text/plain; charset="UTF-8"

I am able to create a condition where the open-iscsi initiator fails to 
respond to an R2T request if the immediate/unsolicited data support is 
large ~128KB.  I've seen instances where a delay on an R2T is only a few 
seconds and other instances where no response is received in 180 seconds.

If the host is doing a prefill operation with large writes that can be 
completed with immediate data alone and a large write that requires an R2T 
is sent, the open-iscsi initiator sometimes fails to respond to the 
target's R2T. 

After inspecting the code, I am convinced it is caused by the lack of 
fairness in the *libiscsi  **iscsi_data_xmit* routine, which always favors 
the sending a new command over responding to R2Ts. 

/**
 * iscsi_data_xmit - xmit any command into the scheduled connection
 * @conn: iscsi connection
 *
 * Notes:
 * The function can return -EAGAIN in which case the caller must
 * re-schedule it again later or recover. '0' return code means
 * successful xmit.
 **/
static int iscsi_data_xmit(struct iscsi_conn *conn)
{
...
/*
* process mgmt pdus like nops before commands since we should
* only have one nop-out as a ping from us and targets should not
* overflow us with nop-ins
*/
while (!list_empty(&conn->mgmtqueue)) {
...
/* process pending command queue */
while (!list_empty(&conn->cmdqueue)) {
...
while (!list_empty(&conn->requeue)) {


Am I looking at this code correctly?  I guess this order might be better 
for parallelization at the target by getting more commands onboard before 
responding to outstanding R2Ts. With immediate/unsolicited data enabled, 
the overhead of transmitting a new commands if higher and probably 
shouldn't come before responding to R2Ts. 


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/75d706c2-e331-45bf-b764-6aa77703a45a%40googlegroups.com.

------=_Part_1746_615314349.1588021209247
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I am able to create a condition where the open-iscsi =
initiator fails to respond to an R2T request if the immediate/unsolicited d=
ata support is large ~128KB.=C2=A0 I&#39;ve seen instances where a delay on=
 an R2T is only a few seconds and other instances where no response is rece=
ived in 180 seconds.</div><div><br></div><div>If the host is doing a prefil=
l operation with large writes that can be completed with immediate data alo=
ne and a large write that requires an R2T is sent, the open-iscsi initiator=
 sometimes fails to respond to the target&#39;s R2T.=C2=A0</div><div><br></=
div><div>After inspecting the code, I am convinced it is caused by the lack=
 of fairness in the <b>libiscsi=C2=A0 </b><i>iscsi_data_xmit</i> routine, w=
hich always favors the sending a new command over responding to R2Ts.=C2=A0=
</div><br><div><div class=3D"prettyprint" style=3D"background-color: rgb(25=
0, 250, 250); border-color: rgb(187, 187, 187); border-style: solid; border=
-width: 1px; overflow-wrap: break-word;"><code class=3D"prettyprint"><div c=
lass=3D"subprettyprint"><div class=3D"subprettyprint"><font color=3D"#66006=
6">/**</font></div><div class=3D"subprettyprint"><font color=3D"#660066">=
=C2=A0* iscsi_data_xmit - xmit any command into the scheduled connection</f=
ont></div><div class=3D"subprettyprint"><font color=3D"#660066">=C2=A0* @co=
nn: iscsi connection</font></div><div class=3D"subprettyprint"><font color=
=3D"#660066">=C2=A0*</font></div><div class=3D"subprettyprint"><font color=
=3D"#660066">=C2=A0* Notes:</font></div><div class=3D"subprettyprint"><font=
 color=3D"#660066">=C2=A0*<span style=3D"white-space:pre">	</span>The funct=
ion can return -EAGAIN in which case the caller must</font></div><div class=
=3D"subprettyprint"><font color=3D"#660066">=C2=A0*<span style=3D"white-spa=
ce:pre">	</span>re-schedule it again later or recover. &#39;0&#39; return c=
ode means</font></div><div class=3D"subprettyprint"><font color=3D"#660066"=
>=C2=A0*<span style=3D"white-space:pre">	</span>successful xmit.</font></di=
v><div class=3D"subprettyprint"><font color=3D"#660066">=C2=A0**/</font></d=
iv><div class=3D"subprettyprint"><font color=3D"#660066">static int iscsi_d=
ata_xmit(struct iscsi_conn *conn)</font></div><div class=3D"subprettyprint"=
><font color=3D"#660066">{</font></div><div class=3D"subprettyprint"><font =
color=3D"#660066">...</font></div><div class=3D"subprettyprint"><font color=
=3D"#660066"><span style=3D"white-space:pre">	</span>/*</font></div><div cl=
ass=3D"subprettyprint"><font color=3D"#660066"><span style=3D"white-space:p=
re">	</span> * process mgmt pdus like nops before commands since we should<=
/font></div><div class=3D"subprettyprint"><font color=3D"#660066"><span sty=
le=3D"white-space:pre">	</span> * only have one nop-out as a ping from us a=
nd targets should not</font></div><div class=3D"subprettyprint"><font color=
=3D"#660066"><span style=3D"white-space:pre">	</span> * overflow us with no=
p-ins</font></div><div class=3D"subprettyprint"><font color=3D"#660066"><sp=
an style=3D"white-space:pre">	</span> */</font></div><div class=3D"subprett=
yprint"><font color=3D"#660066"><span style=3D"white-space:pre">	</span>whi=
le (!list_empty(&amp;conn-&gt;mgmtqueue)) {</font></div><div class=3D"subpr=
ettyprint"><font color=3D"#660066">...<br></font></div><div class=3D"subpre=
ttyprint"><font color=3D"#660066"><span style=3D"white-space:pre">	</span>/=
* process pending command queue */</font></div><div class=3D"subprettyprint=
"><font color=3D"#660066"><span style=3D"white-space:pre">	</span>while (!l=
ist_empty(&amp;conn-&gt;cmdqueue)) {</font></div><div class=3D"subprettypri=
nt"><font color=3D"#660066">...</font></div><div class=3D"subprettyprint"><=
font color=3D"#660066"><span style=3D"white-space:pre">	</span>while (!list=
_empty(&amp;conn-&gt;requeue)) {</font></div><div><br></div></div></code></=
div><br>Am I looking at this code correctly?=C2=A0 I guess this order might=
 be better for parallelization at the target by getting=C2=A0more commands =
onboard before responding to outstanding R2Ts. With immediate/unsolicited d=
ata enabled, the overhead of transmitting a new commands if higher and prob=
ably shouldn&#39;t come before responding to R2Ts.=C2=A0</div><div><br></di=
v><div><br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/75d706c2-e331-45bf-b764-6aa77703a45a%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/75d706c2-e331-45bf-b764-6aa77703a45a%40googlegroups.com</a>.<b=
r />

------=_Part_1746_615314349.1588021209247--

------=_Part_1745_1479019686.1588021209247--
