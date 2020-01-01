Return-Path: <open-iscsi+bncBC755V5RXMKBBVWNWPYAKGQEIFSH7MI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id F2EE112E020
	for <lists+open-iscsi@lfdr.de>; Wed,  1 Jan 2020 19:37:11 +0100 (CET)
Received: by mail-qt1-x840.google.com with SMTP id e8sf2708770qtg.9
        for <lists+open-iscsi@lfdr.de>; Wed, 01 Jan 2020 10:37:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=saGiIMVQ4eBqenryttz/oRWsGD4bXyoGVNGJznhrJDc=;
        b=lpEJxdruKH3TjMbFhyD41/zbv4NouKxX4aELr03up4EPf6tTJvzRt7oMpPBMv+yEDJ
         ltxNYrdjAXr8jRBihqqvCmnOezfxUlydWlbqdUByLWfwXgZ6Iqrp8IryLChCOyN7gdAL
         Nqd/zbB796kJwfUkPQrv/rrNiLYlkf7EuzV3U+eV+Ed4qsb9+iAlw2AyX+kRKuRJeKaY
         C6tFngbJlIGffla4FmSaZ6Dx6bw/vPmcQF7aZ2Rk+1tJwTlaCe3AdMKLxmmVXSKZ0rdo
         xgJ92Xl/Jwq2gt7eKj8RfvTmdDgFTYLmSBsQEE0v9pt1g6StrYiTor1nmYLlBSOIHWlR
         nJJg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=saGiIMVQ4eBqenryttz/oRWsGD4bXyoGVNGJznhrJDc=;
        b=BgYD1p/c5Vv2l55USSWKemljdB312HI44+OZ1wq+eC95OaggjHpOuaBNP0mTPMbEPT
         3DOovP+RmDZhsR6OswEs4ZdjIJ+/6yk6o8q2e3zt7aT176pj2FIExin+QaiWhi9WFT4c
         rGiDrmD2YTXN7xrcpz9i++JR9hDRtqWCOQTTYgUGsRS5MvaPSZ7ZjFPihL6hpUkToIfY
         FWVSCKlQjVH4pLvx6Pg5reY/LFfKiYSYe36v3LfcqtefdBf0XIMHNXJoKBrMKOwxc6dD
         CiQ+wLNYGh8mdRuX7uWgkvLQ02wAcmZsU2BErPdQejG2olVHVGAYsBPeRLf45a6AqCNJ
         Cq6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=saGiIMVQ4eBqenryttz/oRWsGD4bXyoGVNGJznhrJDc=;
        b=DvoUE/hG0o3qX3TEK4ONZyd1blBA91h8GtE3lbfBJCau/xlRUNGf8NyvO0Kip9fZUk
         8uoI++ROYSi0ya59KItwehAJfyqYclJfoXjZxFZD1nxVDJQsM4b9SzyS31F3lvUC31al
         K7xxds68SzKQQn1bup9TXjRMcfK/820rWiCqy0/sfexKQBtOHHx752T9C2RDw2u15uES
         ZpGISVDovGV3wkppiw1vvf3+m0lrn9EoJTacVIR5n2R0+qtCpFQVhG92hE4e2h3O2f+b
         /RZYXmfgw00lNAFWF/CdjiYbUo7nismAxnI94dRcF326Qe/4zddDfLcxlPNMwuzjo1Lb
         tEfQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVtf8WUxsZkI+9Q+eVsH6prEuEm8+QgjXnQ6inVhME/ChuXnIsj
	GhsFaFUmCIVyh42+sPW/w8I=
X-Google-Smtp-Source: APXvYqwFdlC3dxmeO+0jHhxkY6cyrSALEFpYiq1TEb64Awc7JCuEW7VOyydHjXKjXPcsfHkff/Tdhw==
X-Received: by 2002:ac8:12c8:: with SMTP id b8mr57918588qtj.111.1577903830890;
        Wed, 01 Jan 2020 10:37:10 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:e30a:: with SMTP id v10ls4121354qkf.2.gmail; Wed, 01 Jan
 2020 10:37:10 -0800 (PST)
X-Received: by 2002:a37:4a8b:: with SMTP id x133mr58806660qka.181.1577903830338;
        Wed, 01 Jan 2020 10:37:10 -0800 (PST)
Date: Wed, 1 Jan 2020 10:37:08 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <e6557758-3d4e-4f71-8374-c308e2f09835@googlegroups.com>
In-Reply-To: <2a687289-6235-48ef-bd36-239bd8cbd860@googlegroups.com>
References: <2a687289-6235-48ef-bd36-239bd8cbd860@googlegroups.com>
Subject: Re: Open-iSCSI in research paper
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3172_908737037.1577903829176"
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

------=_Part_3172_908737037.1577903829176
Content-Type: multipart/alternative; 
	boundary="----=_Part_3173_1754450890.1577903829176"

------=_Part_3173_1754450890.1577903829176
Content-Type: text/plain; charset="UTF-8"

 On Tuesday, December 31, 2019 at 7:49:49 AM UTC-8, Bobby wrote:
>
> Hi all,
>
> I have come across this research paper (attached) called "*Design and 
> implementation of IP-based iSCSI Offoad Engine on an FPGA*"  and the 
> authors have mentioned they have used open source software based 
> *Open-iSCSI* for their research. At the moment there are 2 questions 
> based on this paper.
>
> *Question 1:*
> On page 3 and under section 2.4 ( *Performance Analysis of Open-iSCSI*), 
> they have started the paragraph with following lines:
>
> "*We analyzed iSCSI traffic with Wireshark, the open source network 
> packet analyzer. We measured traffic between a software initiator and a 
> target by using a set of microbenchmarks. The microbenchmarks transmitted 
> arbitrary number of data in both directions* "
>
> The question is...what are these microbenchmarks. There is no reference to 
> these microbenchmarks in this paper. Any idea, what are these 
> microbenchmarks? 
>

I have no idea. They didn't consult me when doing this paper. :) 

>
> *Question 2:*
> Similarly, on the same page 3 and under section 2.3 (Related Work), they 
> have written "*The most common software implementations in the research 
> community are open source Open-iSCSI and UNH-iSCSI projects*".
>
> After my research on UNH-iSCSI, I have found some work where some 
> researchers have proposed a hardware accelerator for data transfer iSCSI 
> functions. They analyzed UNH-iSCSI source code and presented a general 
> methodology that transforms the software C code into the hardware HDL 
> (FPGA) implementation. Hence their hardware accelerator is designed with 
> direct C-to-HDL translation of specific sub-modules of UNH-iSCSI software.
>
> The question: Is there any similar work like this for Open-iSCSI where 
> specific sub-modules of Open-iSCSI are translated to a hardware language 
> like Verilog/VHDL on hardware (FPGA)? If not, can you please give a hint 
> what would possibly a starting point in case of Open-iSCSI? Because the 
> attached paper does not mention the specific functions of Open-iSCSI code 
> that could be translated to HDL. 
>

No, none that I know of.

There are really two major chunks of open-iscsi: user-land and kernel 
driver(s). The user-land is only used for error handling, setting up 
connections, tearing them down, and other administrative tasks (like 
directing discovery). The kernel code is where all the IO goes on.

There are several adapters available for Linux that move the iSCSI stack 
into hardware. See the qedi driver, for example. These effectively act as 
the "transport" for open-iscsi, when available. I'd be interested in 
comparing throughput using these available adapters to the FPGA in the 
paper -- if I had infinite time. :)

>
> Thanks !
>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/e6557758-3d4e-4f71-8374-c308e2f09835%40googlegroups.com.

------=_Part_3173_1754450890.1577903829176
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">=C2=A0<iframe style=3D"padding: 0px; position: absolute; t=
op: 0px; left: 0px; width: 1241px; height: 188px; visibility: hidden;" fram=
eborder=3D"0"></iframe>On Tuesday, December 31, 2019 at 7:49:49 AM UTC-8, B=
obby wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left=
: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi all,<br><br>I have=
 come across this research paper (attached) called &quot;<b><i>Design and i=
mplementation of IP-based iSCSI Offoad Engine on an FPGA</i></b>&quot;=C2=
=A0 and the authors have mentioned they have used open source software base=
d <b>Open-iSCSI</b> for their research. At the moment there are 2 questions=
 based on this paper.</div><div><br></div><div><b><u>Question 1:</u></b></d=
iv><div>On page 3 and under section 2.4 ( <b>Performance Analysis of Open-i=
SCSI</b>), they have started the paragraph with following lines:</div><div>=
<br></div><div>&quot;<b><i>We analyzed iSCSI traffic with Wireshark, the op=
en source network packet analyzer. We measured traffic between a software i=
nitiator and a target by using a set of microbenchmarks. The microbenchmark=
s transmitted arbitrary number of data in both directions</i></b> &quot;<br=
></div><div><br>The question is...what are these microbenchmarks. There is =
no reference to these microbenchmarks in this paper. Any idea, what are the=
se microbenchmarks?=C2=A0<br></div></div></div></div></div></blockquote><di=
v><br></div><div>I have no idea. They didn&#39;t consult me when doing this=
 paper. :) <br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0;m=
argin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div></div><div=
><br></div><div><b><u>Question 2:</u></b><br>Similarly, on the same page 3 =
and under section 2.3 (Related Work), they have written &quot;<b><i>The mos=
t common software implementations in the research community are open source=
 Open-iSCSI and UNH-iSCSI projects</i></b>&quot;.</div><div><br>After my re=
search on UNH-iSCSI, I have found some work where some researchers have pro=
posed a hardware accelerator for data transfer iSCSI functions. They analyz=
ed UNH-iSCSI source code and presented a general methodology that transform=
s the software C code into the hardware HDL (FPGA) implementation. Hence th=
eir hardware accelerator is designed with direct C-to-HDL translation of sp=
ecific sub-modules of UNH-iSCSI software.</div><div><br>The question: Is th=
ere any similar work like this for Open-iSCSI where specific sub-modules of=
 Open-iSCSI are translated to a hardware language like Verilog/VHDL on hard=
ware (FPGA)? If not, can you please give a hint what would possibly a start=
ing point in case of Open-iSCSI? Because the attached paper does not mentio=
n the specific functions of Open-iSCSI code that could be translated to HDL=
.=C2=A0</div></div></div></div></div></blockquote><div><br></div><div>No, n=
one that I know of.</div><div><br></div><div>There are really two major chu=
nks of open-iscsi: user-land and kernel driver(s). The user-land is only us=
ed for error handling, setting up connections, tearing them down, and other=
 administrative tasks (like directing discovery). The kernel code is where =
all the IO goes on.</div><div><br></div><div>There are several adapters ava=
ilable for Linux that move the iSCSI stack into hardware. See the qedi driv=
er, for example. These effectively act as the &quot;transport&quot; for ope=
n-iscsi, when available. I&#39;d be interested in comparing throughput usin=
g these available adapters to the FPGA in the paper -- if I had infinite ti=
me. :)<br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin=
-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><br></div><div>T=
hanks !</div><div><br></div></div></div></div></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/e6557758-3d4e-4f71-8374-c308e2f09835%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/e6557758-3d4e-4f71-8374-c308e2f09835%40googlegroups.com</a>.<b=
r />

------=_Part_3173_1754450890.1577903829176--

------=_Part_3172_908737037.1577903829176--
