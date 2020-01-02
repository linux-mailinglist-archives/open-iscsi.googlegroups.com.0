Return-Path: <open-iscsi+bncBC24JGEJRMKRBC57XDYAKGQEBJN5RBQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2B012E8EF
	for <lists+open-iscsi@lfdr.de>; Thu,  2 Jan 2020 17:51:25 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id l56sf27822740qtk.11
        for <lists+open-iscsi@lfdr.de>; Thu, 02 Jan 2020 08:51:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=p2zAJoqx/8GLZVAETO8cM/aB58ETFs5YCPy9toMrf9g=;
        b=h9LQbnI6EF8pebxeLPYyOT9MwB6l1BlsScgKugo5AalioeyY7ywAYuZwaNZ8ihDh7t
         rl2QS/2Va8kAHj55LBzwoU3Is2ZzHYLYo6LAAJ1Csx5We3buhzy0+oUKrrJ1FFyXjZww
         pyb7XLnmSWJ3d86cKwII8KCcNYVQrE63H6UJC8lAwz4T8FmOO6WytIs1hnVTgYSqhEja
         pLPQipQWBPax/K7uLaRNZhgFnDTSHiDenmcq/ly73U5fIjs9K4NPzUrmcBi1gbn4HCV8
         ptnEIwK8g4rytoVVbjvMJz28ZYx2QrkWPRDg8B6F2P8vb9HdR+Qwiozp6BTpc8r8QPBV
         2Z0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p2zAJoqx/8GLZVAETO8cM/aB58ETFs5YCPy9toMrf9g=;
        b=I0UNis1RgEhsMQtU6VOcJUR9ncskiEcB918UlAA3MsMq1Rz7RjO/rZGkWW5TVDGEhl
         eUkdbfznnmWZjNks3wgrnz+4KQnNZhDaIUyPzn/Vj1MDGHQorXilFPwISU6sbYJIONOQ
         U2vDkNcnMeaF+v1UggHxt+qvDdByScy35oXNtwTnpoanty9/KqRPQLzF9iUcg7R4dBYZ
         N++Nw1PhBwsYs4ENd9RAGFxxLEKt118Jyt3dlFHvDJ2hCCXavM59S0ERR7qyJZYM8eGc
         MsiEK2TATwM73EmTW1rc5YON+qrw/+9knB4M/SeSZTVNIZmB3H2KxunIOfkcnWVFgEml
         7g/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p2zAJoqx/8GLZVAETO8cM/aB58ETFs5YCPy9toMrf9g=;
        b=iCj9Lls8mTRSXC2hglOhcx2uLP6r3wYFuEpJnAKjEZgRgSa76JBYSm8H4gXf7CXH1g
         FoTvm8d536m7zyHBLAxVlIkB9u40+65bZrrogZ2aKn8ImdeunZVY2kiOCAnmn3gW1+n4
         IP1HmYusT6SiyXtw7b2Uto33fJvDeNtyiAcB2fvqgE485OKYNzW1eOu0P80rZz5tbJFk
         6dLal4UFKGWNCsLAh+fYWcfDF8b0PFJVQ9Gs70+sDSJI+Oo1xQfiJxxY8AKcAp1F2evy
         192OchQ99fQ0MUaTaY8ijytbt3ZOjomN+NyRyY77yY4CwZR8lyqp3ustqiT+YdJaPvMp
         fwiA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXlLbzjkD0nq4/HKd5PZRaMyN2V5FQjN7pWgkaGFEMcfEZVG4CW
	+i1pxf7muPzWKlBDuJZVXgQ=
X-Google-Smtp-Source: APXvYqz3fe2SzAAsTkZl0BipgzLkPygV6G8tsmUHcEQHAs4cd9QXN7Teq/4edIaFHyM7Hn70txnuNg==
X-Received: by 2002:ac8:1415:: with SMTP id k21mr46522344qtj.300.1577983883845;
        Thu, 02 Jan 2020 08:51:23 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:e30a:: with SMTP id v10ls4886804qkf.2.gmail; Thu, 02 Jan
 2020 08:51:23 -0800 (PST)
X-Received: by 2002:a37:b53:: with SMTP id 80mr67398697qkl.65.1577983883307;
        Thu, 02 Jan 2020 08:51:23 -0800 (PST)
Date: Thu, 2 Jan 2020 08:51:22 -0800 (PST)
From: Bobby <italienisch1987@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <88c090a8-94be-444a-b751-86ccc2db6463@googlegroups.com>
In-Reply-To: <e6557758-3d4e-4f71-8374-c308e2f09835@googlegroups.com>
References: <2a687289-6235-48ef-bd36-239bd8cbd860@googlegroups.com>
 <e6557758-3d4e-4f71-8374-c308e2f09835@googlegroups.com>
Subject: Re: Open-iSCSI in research paper
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3195_418642247.1577983882590"
X-Original-Sender: Italienisch1987@gmail.com
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

------=_Part_3195_418642247.1577983882590
Content-Type: multipart/alternative; 
	boundary="----=_Part_3196_866710999.1577983882590"

------=_Part_3196_866710999.1577983882590
Content-Type: text/plain; charset="UTF-8"

One of the good things about this forum is, you always get help....thanks 
for the reply :-)

I will soon have some questions regarding the user-land and kernel 
driver(s).... :-)

Regarding microbenchmarks, I think this one is good 
https://fio.readthedocs.io/en/latest/fio_doc.html.

What do you think?


On Wednesday, January 1, 2020 at 7:37:09 PM UTC+1, The Lee-Man wrote:
>
>  On Tuesday, December 31, 2019 at 7:49:49 AM UTC-8, Bobby wrote:
>>
>> Hi all,
>>
>> I have come across this research paper (attached) called "*Design and 
>> implementation of IP-based iSCSI Offoad Engine on an FPGA*"  and the 
>> authors have mentioned they have used open source software based 
>> *Open-iSCSI* for their research. At the moment there are 2 questions 
>> based on this paper.
>>
>> *Question 1:*
>> On page 3 and under section 2.4 ( *Performance Analysis of Open-iSCSI*), 
>> they have started the paragraph with following lines:
>>
>> "*We analyzed iSCSI traffic with Wireshark, the open source network 
>> packet analyzer. We measured traffic between a software initiator and a 
>> target by using a set of microbenchmarks. The microbenchmarks transmitted 
>> arbitrary number of data in both directions* "
>>
>> The question is...what are these microbenchmarks. There is no reference 
>> to these microbenchmarks in this paper. Any idea, what are these 
>> microbenchmarks? 
>>
>
> I have no idea. They didn't consult me when doing this paper. :) 
>
>>
>> *Question 2:*
>> Similarly, on the same page 3 and under section 2.3 (Related Work), they 
>> have written "*The most common software implementations in the research 
>> community are open source Open-iSCSI and UNH-iSCSI projects*".
>>
>> After my research on UNH-iSCSI, I have found some work where some 
>> researchers have proposed a hardware accelerator for data transfer iSCSI 
>> functions. They analyzed UNH-iSCSI source code and presented a general 
>> methodology that transforms the software C code into the hardware HDL 
>> (FPGA) implementation. Hence their hardware accelerator is designed with 
>> direct C-to-HDL translation of specific sub-modules of UNH-iSCSI software.
>>
>> The question: Is there any similar work like this for Open-iSCSI where 
>> specific sub-modules of Open-iSCSI are translated to a hardware language 
>> like Verilog/VHDL on hardware (FPGA)? If not, can you please give a hint 
>> what would possibly a starting point in case of Open-iSCSI? Because the 
>> attached paper does not mention the specific functions of Open-iSCSI code 
>> that could be translated to HDL. 
>>
>
> No, none that I know of.
>
> There are really two major chunks of open-iscsi: user-land and kernel 
> driver(s). The user-land is only used for error handling, setting up 
> connections, tearing them down, and other administrative tasks (like 
> directing discovery). The kernel code is where all the IO goes on.
>
> There are several adapters available for Linux that move the iSCSI stack 
> into hardware. See the qedi driver, for example. These effectively act as 
> the "transport" for open-iscsi, when available. I'd be interested in 
> comparing throughput using these available adapters to the FPGA in the 
> paper -- if I had infinite time. :)
>
>>
>> Thanks !
>>
>>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/88c090a8-94be-444a-b751-86ccc2db6463%40googlegroups.com.

------=_Part_3196_866710999.1577983882590
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">One of the good things about this forum is, you always get=
 help....thanks for the reply :-)<br><br>I will soon have some questions re=
garding the user-land and kernel driver(s).... :-)<div><br></div><div>Regar=
ding microbenchmarks, I think this one is good=C2=A0<a href=3D"https://fio.=
readthedocs.io/en/latest/fio_doc.html">https://fio.readthedocs.io/en/latest=
/fio_doc.html</a>.</div><div><br></div><div>What do you think?</div><br><br=
>On Wednesday, January 1, 2020 at 7:37:09 PM UTC+1, The Lee-Man wrote:<bloc=
kquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-l=
eft: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr">=C2=A0On Tuesday, =
December 31, 2019 at 7:49:49 AM UTC-8, Bobby wrote:<blockquote class=3D"gma=
il_quote" style=3D"margin:0;margin-left:0.8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div>Hi all,<br><br>I have come across this research paper (attach=
ed) called &quot;<b><i>Design and implementation of IP-based iSCSI Offoad E=
ngine on an FPGA</i></b>&quot;=C2=A0 and the authors have mentioned they ha=
ve used open source software based <b>Open-iSCSI</b> for their research. At=
 the moment there are 2 questions based on this paper.</div><div><br></div>=
<div><b><u>Question 1:</u></b></div><div>On page 3 and under section 2.4 ( =
<b>Performance Analysis of Open-iSCSI</b>), they have started the paragraph=
 with following lines:</div><div><br></div><div>&quot;<b><i>We analyzed iSC=
SI traffic with Wireshark, the open source network packet analyzer. We meas=
ured traffic between a software initiator and a target by using a set of mi=
crobenchmarks. The microbenchmarks transmitted arbitrary number of data in =
both directions</i></b> &quot;<br></div><div><br>The question is...what are=
 these microbenchmarks. There is no reference to these microbenchmarks in t=
his paper. Any idea, what are these microbenchmarks?=C2=A0<br></div></div><=
/div></div></div></blockquote><div><br></div><div>I have no idea. They didn=
&#39;t consult me when doing this paper. :) <br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0;margin-left:0.8ex;border-left:1px #ccc solid=
;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div =
dir=3D"ltr"><div></div><div><br></div><div><b><u>Question 2:</u></b><br>Sim=
ilarly, on the same page 3 and under section 2.3 (Related Work), they have =
written &quot;<b><i>The most common software implementations in the researc=
h community are open source Open-iSCSI and UNH-iSCSI projects</i></b>&quot;=
.</div><div><br>After my research on UNH-iSCSI, I have found some work wher=
e some researchers have proposed a hardware accelerator for data transfer i=
SCSI functions. They analyzed UNH-iSCSI source code and presented a general=
 methodology that transforms the software C code into the hardware HDL (FPG=
A) implementation. Hence their hardware accelerator is designed with direct=
 C-to-HDL translation of specific sub-modules of UNH-iSCSI software.</div><=
div><br>The question: Is there any similar work like this for Open-iSCSI wh=
ere specific sub-modules of Open-iSCSI are translated to a hardware languag=
e like Verilog/VHDL on hardware (FPGA)? If not, can you please give a hint =
what would possibly a starting point in case of Open-iSCSI? Because the att=
ached paper does not mention the specific functions of Open-iSCSI code that=
 could be translated to HDL.=C2=A0</div></div></div></div></div></blockquot=
e><div><br></div><div>No, none that I know of.</div><div><br></div><div>The=
re are really two major chunks of open-iscsi: user-land and kernel driver(s=
). The user-land is only used for error handling, setting up connections, t=
earing them down, and other administrative tasks (like directing discovery)=
. The kernel code is where all the IO goes on.</div><div><br></div><div>The=
re are several adapters available for Linux that move the iSCSI stack into =
hardware. See the qedi driver, for example. These effectively act as the &q=
uot;transport&quot; for open-iscsi, when available. I&#39;d be interested i=
n comparing throughput using these available adapters to the FPGA in the pa=
per -- if I had infinite time. :)<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0;margin-left:0.8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"=
><div><br></div><div>Thanks !</div><div><br></div></div></div></div></div><=
/blockquote></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/88c090a8-94be-444a-b751-86ccc2db6463%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/88c090a8-94be-444a-b751-86ccc2db6463%40googlegroups.com</a>.<b=
r />

------=_Part_3196_866710999.1577983882590--

------=_Part_3195_418642247.1577983882590--
