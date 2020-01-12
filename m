Return-Path: <open-iscsi+bncBC755V5RXMKBBZNG5LYAKGQEUVQGOKY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E741384AA
	for <lists+open-iscsi@lfdr.de>; Sun, 12 Jan 2020 04:32:54 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id t4sf4302179qtd.3
        for <lists+open-iscsi@lfdr.de>; Sat, 11 Jan 2020 19:32:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578799973; cv=pass;
        d=google.com; s=arc-20160816;
        b=DKWeiXdAZRVuCaiFJ+jDZ6aBfTVjEgXI0SyA20knVpXrL8bbpd+X8f3Z3vbswiUI4/
         MklXWjNZu923qFrMCRBz822xyGUlnhlJH+LpWcFVO1KH9dcnVrl2kQic9ng+DRSMlsSU
         SyAql1sDgUS/5bW/VzQLpzA9RSYEJ2xLt8S7q+zJ+kq9IuHdcnYKhzlwS4DJAFbCku9Q
         KI/Izfb2+j4YHIfOx9n36W6I+vsS0GFp/VefCOMEIRr2XmjgVJjcmPOU/70qJQxDlCFb
         5gfsyxLP+9M7ehVCPIa6BvCqrK7cDTfxKnqkyixd83Uq2vHm8DMi7zQ0xnT0QXlLsUne
         cuJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:in-reply-to:to
         :references:date:subject:mime-version:from:sender:dkim-signature
         :dkim-signature;
        bh=TO11w8jLHwObqamA7UQZYJefSlLir3XzxIMAOFJSVbQ=;
        b=L6PxrZ6Qopl6ebc4dGfLBBweRpfhkc/ZGktF55IeG0cuJeEnai34vylNaBXtubfW0W
         M4vTF0/ZNGb43nqZjjvsbhYgBAsTkPRB7HvF0AogPa3D8az1UgZnz6bCqjcid2FFNtSe
         X+XlmiR5IbhwTCkRfTyEmBw3J3rM9Dx7cjNa4ucGspoW62T0khF6higrQpjbL+UrMbWv
         DowtzNG8k8AGkcSYOElRtDX1ykazx6Hbqn00NFPdVuW2UuCWmi8mt9HgUauCCJ1KRQ9q
         5booEb/4HOAiyp9kBFO2+we7KpR26geCzz9jPhoJBz3c8kpUySlmcZwSIjMiBbKgw3jG
         RAsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="N/OF+LU7";
       spf=pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:mime-version:subject:date:references:to:in-reply-to
         :message-id:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TO11w8jLHwObqamA7UQZYJefSlLir3XzxIMAOFJSVbQ=;
        b=OvZK1gOXCx2yzYGzhRpWWt5thFqqyJuYxEAKbkcosZogVfbft7iIFQPTkGetkexjB6
         4zWcHwDfyEpJAVtptSnTX2AMjKh0W+huxoXbShGY4kWGEYyMyK5hSN3oCViT1uSrvLRk
         KQ+Zmw/MVaEkib5R72+kXpJqspcsecsi9D3ef7064h48Y5xsq32ffnsP+uPAIUXR3fUQ
         Y92d48I5yyYpSLzs6QNt/9/r+giV1OEO+klW68ajKKFTj+72H6UjVtmyNuSy58U+xvDV
         tU8yrJ3rPUw/dfK4Y9mhaAwdpQwrt9Sbzv6Ob8+28Mn+662pGCjDfSfvijSiFXzZc6f6
         Qt2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:mime-version:subject:date:references:to:in-reply-to:message-id
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TO11w8jLHwObqamA7UQZYJefSlLir3XzxIMAOFJSVbQ=;
        b=jBmw0zTlPLvXh2lJbz1z4NzTQ8Hm2R28X9vdB0z8YXeYuumd7WC/qj1QDJwz5RKzdR
         P2xb33CwrtSo58Zf41mw8dYYZMr1CUtiXpdT8FzzONJAPHuVi3hZCTAMB6IadW7kIlK1
         iihBHE9o8AbfSnlpsbRv/eeVLIGbEycqgwJkUbeo7JE+eoMFpWUcYBs5oqwJ4w1MXzoB
         tvLA8yRBowl97nMW5bxh1Cv4pYw540zD2FtoJavxU1xVEMtYO9fiO1o8HJoywy6H0IoM
         c+IjGuVhyv6Ir4+6WdPXpNlVucG4FdbLRTGjaZF0VJtf26li+1jSYWJwJ3xEse9kkxOc
         U6nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:mime-version:subject:date:references
         :to:in-reply-to:message-id:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TO11w8jLHwObqamA7UQZYJefSlLir3XzxIMAOFJSVbQ=;
        b=r6bHr7vIObYghJjUGJl6x/i9nQTkJoWBR6FMB4URLIEFdnJ8SVM1+UV6LoqqNqG4ff
         ORrN5w1dFG4DQK/LLynbSPRr24TtFG1iQHFLNUrqWISEpF9dnPJZT109/2tgPPtK/vN2
         1mcnc9Jssi3BXUwmj17XmlU6SKxRorH8J4a1TOyhQ2HGOstO0Mp6DyH6lgyDevpEvIuG
         UxEwkNEfsi4w+1PkrW//QFY+4GPXpAtBvZ58DwjLye79FmcLDCac0taSo/s5Kuwcha4t
         28NlGc/JlR9HCC4qF+pzfYIfR0Qg2xmtsRpRRvv1TMqNQuKrAdxFTWUpbB+pvQzqqsnC
         YL4A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVkKyPmEXHyMt2TL5rBmuQAC5SRjpL72/YqIBaAO2Ov+JN1P6yZ
	g4+iYmsz4g1x00W4CBfhD/M=
X-Google-Smtp-Source: APXvYqyM4xEy2uyFX/Fmm+qlLm1Vs15dk49ysQLLq4jfcfwP2bwou8uNOpc2hqrqYT9rsIdS0pAWDQ==
X-Received: by 2002:a05:620a:661:: with SMTP id a1mr10809488qkh.408.1578799973488;
        Sat, 11 Jan 2020 19:32:53 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:f507:: with SMTP id l7ls188166qkk.0.gmail; Sat, 11 Jan
 2020 19:32:53 -0800 (PST)
X-Received: by 2002:a05:620a:992:: with SMTP id x18mr10672110qkx.327.1578799973037;
        Sat, 11 Jan 2020 19:32:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578799973; cv=none;
        d=google.com; s=arc-20160816;
        b=xI7/0BnZpjyAbHHazJhl44p02KxGRzaNLQBUAGuo/mXAZSbJJuNSX0VfkTUhvWjDPR
         jxd9LHwn+z/OT2n7A0zZBYU9ri8RrDOovIF9yLlx4Q0E05VtGKNLjVZff54PPlFe9vp4
         5SkNxYYAvXsT6UE4jt10QViTyUS9qpUjRSsLC1wJVCzZ4LnhqrIHH0RWtC6ppGAoPP/e
         BG5w9skuZ2I7t3O8Eu+HofJFnD4ARE8PAQ0Mk2jp3n/rKveUbx0aGCdsaWGieYqGi/CD
         9m7aV5F1NHVdf94mQ/JBD91F7lkJE92XQAwp+pnxrOb0hnIjh5bcEpM02HX3eBHiGNi6
         1rUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:to:references:date:subject:mime-version:from
         :dkim-signature;
        bh=xlqUJssnsn509LBKNdZuCOexG9tsr5jlkO5sEM/hT0U=;
        b=GJZyqKWjVpdL/7eUMDMgeybNXrltEm6u7V42Vk3LIWfEDbfOZqzHog+sGC0J567YQd
         4tmJF8koai34drgeWKQeese2bf2Q8K+GwbLm/K13xtZzctcNVhkwjIbu5ceFoBGKJPFn
         poLI/A8j4DUxRCToxFT8TeScIdsaEt7HmR4eOlZwGEqDfNIChoRJ9K5HDRXBrZlkSO06
         0UP3j14yswE0T1hXgawuwV9DSEQqKN7u4uQE4oIAsv9RywKah0cL2zVhvxpXRRVma+bB
         SdL32jcvUou8ywSKkZz5t5w7GxrvNA6uYqv2Qu/S6i58o53e1azP6K3ExbDTEem0Gmy5
         dGpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="N/OF+LU7";
       spf=pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id 134si264789qkd.2.2020.01.11.19.32.53
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Jan 2020 19:32:53 -0800 (PST)
Received-SPF: pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Received: by mail-pf1-x433.google.com with SMTP id x185so3149251pfc.5
        for <open-iscsi@googlegroups.com>; Sat, 11 Jan 2020 19:32:52 -0800 (PST)
X-Received: by 2002:a63:5fc6:: with SMTP id t189mr10824884pgb.177.1578799971986;
        Sat, 11 Jan 2020 19:32:51 -0800 (PST)
Received: from ?IPv6:2601:1c0:5400:d::3? ([2601:1c0:5400:d::3])
        by smtp.gmail.com with ESMTPSA id i66sm8697190pfg.85.2020.01.11.19.32.51
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Jan 2020 19:32:51 -0800 (PST)
From: Lee Duncan <leeman.duncan@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_45B8F234-690C-413F-9315-56DDD04778E3"
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: how it works
Date: Sat, 11 Jan 2020 19:32:50 -0800
References: <000c01c55fd9$36d18590$03031eac@ivivity.com>
 <1116889886.16262.47.camel@beastie>
 <1306f306-ef08-4e79-b98a-6d1e6ee42f25@googlegroups.com>
 <9745153a-66eb-4abb-8628-23e2ba1b28fd@googlegroups.com>
 <30876a44-cc2e-44ef-a052-a5b91dd31147@googlegroups.com>
To: open-iscsi <open-iscsi@googlegroups.com>
In-Reply-To: <30876a44-cc2e-44ef-a052-a5b91dd31147@googlegroups.com>
Message-Id: <ABCA782A-1508-45D5-9283-933FE7855CF4@gmail.com>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Original-Sender: leeman.duncan@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="N/OF+LU7";       spf=pass
 (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::433
 as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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


--Apple-Mail=_45B8F234-690C-413F-9315-56DDD04778E3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

On Jan 11, 2020, at 11:26 AM, Bobby <italienisch1987@gmail.com> wrote:
>=20
> Hi ,
>=20
> Thanks for your patience  regarding my questions. Because after I had dug=
 (digged) very older posts, I realized=20
> many of the older posts already had answers for many of my earlier questi=
ons :). After your couple of answers and going=20
> through old posts, I have a better understanding of user land and kernel =
land.

Excellent.

>=20
> Now one more point.
>=20
> Kernel land:=20
> While we are at kernel land, I have a confusion on that.
> AFAIK in linux kernel, the linux block layer is a glue that, on the one h=
and, allows applications to access=20
> diverse storage devices=20
> in a uniform way, and on the other hand,
> provides storage devices and drivers with a single point of entry from al=
l applications.
> I mean this Linux OS (host) block layer is the most
> critical part of the I/O hierarchy, as it orchestrates the I/O
> requests from different applications to the underlying storage.
>=20
> Question:
> So in context of Open-iSCSI, where does the user-land interacts the block=
 layer in the kernel land? I=20
> mean, when it comes to kernel land, why we are considering only scsi_tran=
sport_iscsi.c and iscsi_tcp.c codes? Shouldn't
> the block request go through block layer?
>=20
> As always, thanks in advance :)
>=20
>=20

The iscsi initiator (open-iscsi) acts as an HBA, in effect, in the block sy=
stem.

The layer above the block layer (conceptually) are the disc or tape drivers=
.The block layer presents an abstract interface to them, so that they only =
have to deal with putting bits in blocks, or getting bits from blocks.

The layer below the block layer, on the other hand, gets requests to put bi=
ts in blocks or to get bits from blocks, and has to deal with how to actual=
ly implement that, given where the bits live. For a local disc, this is an =
HBA adapter driver. For iSCSI, this is actually a transport rather than an =
HBA. There are several transports, for example iSER (Infiniband) is another=
.

I hope that helps.=20
=E2=80=94=20
Lee


--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/ABCA782A-1508-45D5-9283-933FE7855CF4%40gmail.com.

--Apple-Mail=_45B8F234-690C-413F-9315-56DDD04778E3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="UTF-8"

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; line-break: after-white-space;" class=3D"">On Jan 11, 2020, at 11:26 =
AM, Bobby &lt;<a href=3D"mailto:italienisch1987@gmail.com" class=3D"">itali=
enisch1987@gmail.com</a>&gt; wrote:<br class=3D""><div><blockquote type=3D"=
cite" class=3D""><br class=3D"Apple-interchange-newline"><div class=3D""><d=
iv dir=3D"ltr" style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; font-weight=
: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text=
-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-stro=
ke-width: 0px; text-decoration: none;" class=3D""><div class=3D"">Hi ,</div=
><div class=3D""><br class=3D""></div><div class=3D""><div class=3D"">Thank=
s for your patience&nbsp; regarding my questions. Because after I had dug (=
digged) very older posts, I realized&nbsp;</div><div class=3D"">many of the=
 older posts already had answers for many of my earlier questions :). After=
 your couple of answers and going&nbsp;</div><div class=3D"">through old po=
sts, I have a better understanding of<span class=3D"Apple-converted-space">=
&nbsp;</span><b class=3D"">user land</b><span class=3D"Apple-converted-spac=
e">&nbsp;</span>and<span class=3D"Apple-converted-space">&nbsp;</span><b cl=
ass=3D"">kernel land</b>.</div></div></div></div></blockquote><div><br clas=
s=3D""></div>Excellent.</div><div><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D""><div dir=3D"ltr" style=3D"caret-color: rgb(0, 0,=
 0); font-family: Helvetica; font-size: 12px; font-style: normal; font-vari=
ant-caps: normal; font-weight: normal; letter-spacing: normal; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; word-sp=
acing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;" class=
=3D""><div class=3D""><div class=3D""><br class=3D""></div><div class=3D"">=
Now one more point.<br class=3D""><br class=3D""></div><div class=3D""><b c=
lass=3D""><u class=3D"">Kernel land:&nbsp;</u></b></div><div class=3D"">Whi=
le we are at kernel land, I have a confusion on that.</div><div class=3D"">=
AFAIK in linux kernel, the linux<span class=3D"Apple-converted-space">&nbsp=
;</span><b class=3D"">block layer</b><span class=3D"Apple-converted-space">=
&nbsp;</span>is a glue that, on the one hand, allows applications to access=
&nbsp;</div><div class=3D"">diverse storage devices&nbsp;</div><div class=
=3D"">in a uniform way, and on the other hand,</div><div class=3D"">provide=
s storage devices and drivers with a single point of entry from all applica=
tions.</div><div class=3D"">I mean this Linux OS (host) block layer is the =
most</div><div class=3D"">critical part of the I/O hierarchy, as it orchest=
rates the I/O</div><div class=3D"">requests from different applications to =
the underlying storage.</div><div class=3D""><br class=3D""></div><div clas=
s=3D""><b class=3D""><u class=3D"">Question:</u></b></div><div class=3D"">S=
o in context of<span class=3D"Apple-converted-space">&nbsp;</span><b class=
=3D"">Open-iSCSI</b>, where does the user-land interacts the block layer in=
 the kernel land? I&nbsp;</div><div class=3D"">mean, when it comes to kerne=
l land, why we are considering only<span class=3D"Apple-converted-space">&n=
bsp;</span><b class=3D""><i class=3D"">scsi_transport_iscsi.c</i></b><span =
class=3D"Apple-converted-space">&nbsp;</span>and<span class=3D"Apple-conver=
ted-space">&nbsp;</span><b class=3D""><i class=3D"">iscsi_tcp.c</i></b><spa=
n class=3D"Apple-converted-space">&nbsp;</span>codes? Shouldn't</div><div c=
lass=3D"">the block request go through block layer?</div></div><div class=
=3D""><br class=3D""></div><div class=3D"">As always, thanks in advance :)<=
/div><br class=3D""><br class=3D""></div></div></blockquote><br class=3D"">=
</div><div>The iscsi initiator (open<span style=3D"font-size: 13px;" class=
=3D"">-iscsi) acts as an HBA, in effect, in the block system.</span></div><=
div><span style=3D"font-size: 13px;" class=3D""><br class=3D""></span></div=
><div><span style=3D"font-size: 13px;" class=3D"">The layer above the block=
 layer (conceptually) are the disc or tape drivers.The block layer presents=
 an abstract interface to them, so that they only have to deal with putting=
 bits in blocks, or getting bits from blocks.</span></div><div><span style=
=3D"font-size: 13px;" class=3D""><br class=3D""></span></div><div><span sty=
le=3D"font-size: 13px;" class=3D"">The layer below the block layer, on the =
other hand, gets requests to put bits in blocks or to get bits from blocks,=
 and has to deal with how to actually implement that, given where the bits =
live. For a local disc, this is an HBA adapter driver. For iSCSI, this is a=
ctually a transport rather than an HBA. There are several transports, for e=
xample iSER (Infiniband) is another.</span></div><div><span style=3D"font-s=
ize: 13px;" class=3D""><br class=3D""></span></div><div><span style=3D"font=
-size: 13px;" class=3D"">I hope that helps.&nbsp;</span></div><div><span st=
yle=3D"font-size: 13px;" class=3D"">=E2=80=94&nbsp;</span></div><div><span =
style=3D"font-size: 13px;" class=3D"">Lee</span></div><div><span style=3D"f=
ont-size: 13px;" class=3D""><br class=3D""></span></div><br class=3D""></bo=
dy></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/ABCA782A-1508-45D5-9283-933FE7855CF4%40gmail.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/open-=
iscsi/ABCA782A-1508-45D5-9283-933FE7855CF4%40gmail.com</a>.<br />

--Apple-Mail=_45B8F234-690C-413F-9315-56DDD04778E3--
