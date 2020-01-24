Return-Path: <open-iscsi+bncBC24JGEJRMKRBVFXVXYQKGQEDFEOJKY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F32D148FE2
	for <lists+open-iscsi@lfdr.de>; Fri, 24 Jan 2020 22:04:21 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id y6sf1924678qki.13
        for <lists+open-iscsi@lfdr.de>; Fri, 24 Jan 2020 13:04:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Ott1zDdG42a+UiuTpMPcyo1QBZj8rvuOwCN+uzgDf48=;
        b=abYW2RcKOigintQZsHEThSdFKgktH+3h2k4unPQnzsDLB8KxNo8CiUqWFfvofhLtNC
         dYKC+apCo2lbgkK+26lLGeoDi+kHBbVOixxa4+kgoTAkIDm8bIl2XKEjaHUa1KPQaydj
         +3wuujpeiDGesFTtF2FUDqap3OEk8+pUlr0zmaE9QgSKkcdPkRL3bD3jQzjP9XDDkH8J
         v1UpcB39wHVnNa90d9liIIew2a8AjO/tMxnuvyk66uWoy/oEYwIswvq0XFxlSxSMORVG
         PF+rlmh/xfLEhh84whlV7KhbELTclRLnt5Z9nNdYXvFRCzGraD/BdAxa6w1T0oPZ7FtA
         bbXg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ott1zDdG42a+UiuTpMPcyo1QBZj8rvuOwCN+uzgDf48=;
        b=MNKATm0/CHbMtabA2fkyAWoTwQL8sTVSj17imk/iBQSyPB0Tb/ZQbLFNGiNswYkexM
         B7yVorx8f36RHLu2oCjALSFhVw7f8PN9Rqlq7KasgslJpkL8t60h2wfy2zFzgnVO+wHx
         h0SUZJWZ6AvycD4xLyY5XSEtnoH3OZhZXS7aLE3aEP62LiwOdeFbpYNQrAetkjpldwnN
         BLAV8QrC52LWrx7mKaWPFNNKU5rN/sFZTx7GnXkRkg833MEk4OLWIVaGsI8WSb3jEdWA
         pLEgqLYEDVKg65syVW6/yMl6M85qRNJgr/s+5uk6hRuKRgSfiIIJP26yMRnyNWABgW89
         w4FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ott1zDdG42a+UiuTpMPcyo1QBZj8rvuOwCN+uzgDf48=;
        b=ecHtrK0+kTz+TXv3FtfuVifVZ6qE1Snq0F6mmhcCCN0uhRyNUu0/vXkZJ4o3+a3/io
         aZyBmaKC3XNY3AdFvbK4Wny5ZjTER+WQFkivrilguZba+d4h3Wmc84KA2M6XMhUFNQ1R
         J9eUSEXGQsGdYKMgZj/eHyIng3mFNBcxcqOJPkJUrUO9NJF4ueDyJ3lPL3k34w/LbsHG
         A06X2RaZArsXqA8AHnOZuf0nw6esWcPgqO08S38XozTZoXUsAdR1VQtyNGCUGQNrZCCG
         KIVbe58bzzQFC3DBTXogLxnJZ2IMsGI/qCxavm+DISoEvLnOHmRgFTG6/Hb9hUE+nJNN
         fChw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUry/5uyHkapGy+pXcwSeFqDqd+lKTvu5Tt9ZBKGqAmKJdmKTq+
	6HAR/cLAPJYUEzFz9ortomE=
X-Google-Smtp-Source: APXvYqythG+Q9Esul4/hIKEHTLxVfGJ2Non4GN2YfIW4DYTlLBxr82hf0JVouhYhNAd9/bAw0bBpEg==
X-Received: by 2002:aed:3eee:: with SMTP id o43mr4422818qtf.33.1579899860401;
        Fri, 24 Jan 2020 13:04:20 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:d612:: with SMTP id c18ls841143qvj.0.gmail; Fri, 24 Jan
 2020 13:04:20 -0800 (PST)
X-Received: by 2002:a0c:ed2f:: with SMTP id u15mr5067430qvq.1.1579899859904;
        Fri, 24 Jan 2020 13:04:19 -0800 (PST)
Date: Fri, 24 Jan 2020 13:04:19 -0800 (PST)
From: Bobby <italienisch1987@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <0623097f-bd0a-4002-845c-273f67bfbd81@googlegroups.com>
In-Reply-To: <ABCA782A-1508-45D5-9283-933FE7855CF4@gmail.com>
References: <000c01c55fd9$36d18590$03031eac@ivivity.com>
 <1116889886.16262.47.camel@beastie>
 <1306f306-ef08-4e79-b98a-6d1e6ee42f25@googlegroups.com>
 <9745153a-66eb-4abb-8628-23e2ba1b28fd@googlegroups.com>
 <30876a44-cc2e-44ef-a052-a5b91dd31147@googlegroups.com>
 <ABCA782A-1508-45D5-9283-933FE7855CF4@gmail.com>
Subject: Re: how it works
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1423_1725750814.1579899859335"
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

------=_Part_1423_1725750814.1579899859335
Content-Type: multipart/alternative; 
	boundary="----=_Part_1424_1778281919.1579899859336"

------=_Part_1424_1778281919.1579899859336
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

thanks...yes, it helped :-)

On Sunday, January 12, 2020 at 4:32:55 AM UTC+1, The Lee-Man wrote:
>
> On Jan 11, 2020, at 11:26 AM, Bobby <italien...@gmail.com <javascript:>>=
=20
> wrote:
>
>
> Hi ,
>
> Thanks for your patience  regarding my questions. Because after I had dug=
=20
> (digged) very older posts, I realized=20
> many of the older posts already had answers for many of my earlier=20
> questions :). After your couple of answers and going=20
> through old posts, I have a better understanding of *user land* and *kern=
el=20
> land*.
>
>
> Excellent.
>
>
> Now one more point.
>
> *Kernel land: *
> While we are at kernel land, I have a confusion on that.
> AFAIK in linux kernel, the linux *block layer* is a glue that, on the one=
=20
> hand, allows applications to access=20
> diverse storage devices=20
> in a uniform way, and on the other hand,
> provides storage devices and drivers with a single point of entry from al=
l=20
> applications.
> I mean this Linux OS (host) block layer is the most
> critical part of the I/O hierarchy, as it orchestrates the I/O
> requests from different applications to the underlying storage.
>
> *Question:*
> So in context of *Open-iSCSI*, where does the user-land interacts the=20
> block layer in the kernel land? I=20
> mean, when it comes to kernel land, why we are considering only=20
> *scsi_transport_iscsi.c* and *iscsi_tcp.c* codes? Shouldn't
> the block request go through block layer?
>
> As always, thanks in advance :)
>
>
>
> The iscsi initiator (open-iscsi) acts as an HBA, in effect, in the block=
=20
> system.
>
> The layer above the block layer (conceptually) are the disc or tape=20
> drivers.The block layer presents an abstract interface to them, so that=
=20
> they only have to deal with putting bits in blocks, or getting bits from=
=20
> blocks.
>
> The layer below the block layer, on the other hand, gets requests to put=
=20
> bits in blocks or to get bits from blocks, and has to deal with how to=20
> actually implement that, given where the bits live. For a local disc, thi=
s=20
> is an HBA adapter driver. For iSCSI, this is actually a transport rather=
=20
> than an HBA. There are several transports, for example iSER (Infiniband) =
is=20
> another.
>
> I hope that helps.=20
> =E2=80=94=20
> Lee
>
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/0623097f-bd0a-4002-845c-273f67bfbd81%40googlegroups.com.

------=_Part_1424_1778281919.1579899859336
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">thanks...yes, it helped :-)<br><br>On Sunday, January 12, =
2020 at 4:32:55 AM UTC+1, The Lee-Man wrote:<blockquote class=3D"gmail_quot=
e" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;paddin=
g-left: 1ex;"><div style=3D"word-wrap:break-word;line-break:after-white-spa=
ce">On Jan 11, 2020, at 11:26 AM, Bobby &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"vcF2iUX3DwAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">italien...@gmail.com</a>&gt; wrote:=
<br><div><blockquote type=3D"cite"><br><div><div dir=3D"ltr" style=3D"font-=
family:Helvetica;font-size:12px;font-style:normal;font-weight:normal;letter=
-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px;text-decoration:none"><div>Hi ,</div><div><br=
></div><div><div>Thanks for your patience=C2=A0 regarding my questions. Bec=
ause after I had dug (digged) very older posts, I realized=C2=A0</div><div>=
many of the older posts already had answers for many of my earlier question=
s :). After your couple of answers and going=C2=A0</div><div>through old po=
sts, I have a better understanding of<span>=C2=A0</span><b>user land</b><sp=
an>=C2=A0</span>and<span>=C2=A0</span><b>kernel land</b>.</div></div></div>=
</div></blockquote><div><br></div>Excellent.</div><div><br><blockquote type=
=3D"cite"><div><div dir=3D"ltr" style=3D"font-family:Helvetica;font-size:12=
px;font-style:normal;font-weight:normal;letter-spacing:normal;text-align:st=
art;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px=
;text-decoration:none"><div><div><br></div><div>Now one more point.<br><br>=
</div><div><b><u>Kernel land:=C2=A0</u></b></div><div>While we are at kerne=
l land, I have a confusion on that.</div><div>AFAIK in linux kernel, the li=
nux<span>=C2=A0</span><b>block layer</b><span>=C2=A0</span>is a glue that, =
on the one hand, allows applications to access=C2=A0</div><div>diverse stor=
age devices=C2=A0</div><div>in a uniform way, and on the other hand,</div><=
div>provides storage devices and drivers with a single point of entry from =
all applications.</div><div>I mean this Linux OS (host) block layer is the =
most</div><div>critical part of the I/O hierarchy, as it orchestrates the I=
/O</div><div>requests from different applications to the underlying storage=
.</div><div><br></div><div><b><u>Question:</u></b></div><div>So in context =
of<span>=C2=A0</span><b>Open-iSCSI</b>, where does the user-land interacts =
the block layer in the kernel land? I=C2=A0</div><div>mean, when it comes t=
o kernel land, why we are considering only<span>=C2=A0</span><b><i>scsi_tra=
nsport_iscsi.c</i></b><span>=C2=A0</span>an<wbr>d<span>=C2=A0</span><b><i>i=
scsi_tcp.c</i></b><span>=C2=A0</span>codes? Shouldn&#39;t</div><div>the blo=
ck request go through block layer?</div></div><div><br></div><div>As always=
, thanks in advance :)</div><br><br></div></div></blockquote><br></div><div=
>The iscsi initiator (open<span style=3D"font-size:13px">-iscsi) acts as an=
 HBA, in effect, in the block system.</span></div><div><span style=3D"font-=
size:13px"><br></span></div><div><span style=3D"font-size:13px">The layer a=
bove the block layer (conceptually) are the disc or tape drivers.The block =
layer presents an abstract interface to them, so that they only have to dea=
l with putting bits in blocks, or getting bits from blocks.</span></div><di=
v><span style=3D"font-size:13px"><br></span></div><div><span style=3D"font-=
size:13px">The layer below the block layer, on the other hand, gets request=
s to put bits in blocks or to get bits from blocks, and has to deal with ho=
w to actually implement that, given where the bits live. For a local disc, =
this is an HBA adapter driver. For iSCSI, this is actually a transport rath=
er than an HBA. There are several transports, for example iSER (Infiniband)=
 is another.</span></div><div><span style=3D"font-size:13px"><br></span></d=
iv><div><span style=3D"font-size:13px">I hope that helps.=C2=A0</span></div=
><div><span style=3D"font-size:13px">=E2=80=94=C2=A0</span></div><div><span=
 style=3D"font-size:13px">Lee</span></div><div><span style=3D"font-size:13p=
x"><br></span></div><br></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/0623097f-bd0a-4002-845c-273f67bfbd81%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/0623097f-bd0a-4002-845c-273f67bfbd81%40googlegroups.com</a>.<b=
r />

------=_Part_1424_1778281919.1579899859336--

------=_Part_1423_1725750814.1579899859335--
