Return-Path: <open-iscsi+bncBC755V5RXMKBBO5F3X6AKGQEVGXCYSY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 318572999E3
	for <lists+open-iscsi@lfdr.de>; Mon, 26 Oct 2020 23:50:37 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id r16sf6970416pls.19
        for <lists+open-iscsi@lfdr.de>; Mon, 26 Oct 2020 15:50:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603752636; cv=pass;
        d=google.com; s=arc-20160816;
        b=fjg/sxKz8+9YPs8y6C9XffEfd787eTgoiXOulFi5pBaRgjkva/SNsaR/wfUwBSAVKx
         KrO1dOcUryW6tkoJ6tZpOuvDSaXQen0GWKI81LaXgdKTVLF6DqrkEV6aVFO1f2vOwD4H
         Gl8G+n2IpvoVwifexO3qroQQBsoKzqgyhpyVl+9BI4toc64rOA5yJ4M7KlGkhoQK0ILx
         n5qxOSs4vDKVF+IiJ2zl42BcGEtc9uj8dAE/ob7UamAd6o1piP9S7qNfkBDevoHr8zUN
         oKAtuI60E9z4/GyVYD8mL4KzHLntdRaWJFVoTGU9vzJddnipDnQ2WfeN6/LwpXOVOeX7
         nY1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:in-reply-to:to
         :references:date:subject:mime-version:from:sender:dkim-signature
         :dkim-signature;
        bh=SNJ4Pv+51LBP7TjqD6LLo0WN8Y2wUbb2wb+Oft0w3QA=;
        b=xnVa0Lj5BRfW4ExcCjFk/4XI5KrEnPJis2reTQWxEqWDWZAfgWttOp2PpeDdnAX3r8
         +JPetPY708wQvLlKj6JOtE2HYDSmqzZ5is4Vwdwjk094Xi3xx4v2ik1XuyU2trRxgNCT
         XcZxdqjqP7zSUli0g5xeB0yRYo2wUl/akocKjkyBnz2fT1bO3XcOwmUsHXS67ZMiE2/p
         3K59V1X7ruOWfDvR2cRtJtw7bCW76y26Q9MWOC/iclPghO5YQuURTEW+9nmDY4UWEMSJ
         AgWMHNJmbBL1zrn8sn82fTRdScFQbz0Y+CCXcGKK+ncJSyELB1wc45CTeV4DTl54OdYE
         i/ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uv+L5RIh;
       spf=pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:mime-version:subject:date:references:to:in-reply-to
         :message-id:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SNJ4Pv+51LBP7TjqD6LLo0WN8Y2wUbb2wb+Oft0w3QA=;
        b=gHwJEYZLal7Caf2JyaHYmrPdfFzTTgt7ZtLu73J6LQaug0hB2phr09k4o/GKt92mAz
         ma8x+TWosyFsViSx15FqIujcPWk/7LXKU+g4U8jyWEjUYjnTH25P+0EuYgvuDHKjCCzn
         mdGQ627LACS6FU9I0Bur1bf5+TLaThGItE2zjoUCDmyqrj6qnJZcX3arvBGTmN9dv65I
         iBd52599VnlCDgf1hGqjoHMjNu4dgwWIK6OvueJitnN104GWe06NJ8rrhF7A2w7u/uuW
         uOKU4kkFVS3hWG6fk5ZYp+Wbk31h61dTN8fCOFeccFBB5Is5XUpPeUij5xNxVATlwsci
         VLOw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:mime-version:subject:date:references:to:in-reply-to:message-id
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SNJ4Pv+51LBP7TjqD6LLo0WN8Y2wUbb2wb+Oft0w3QA=;
        b=oc0BHPoSNDk7lQJyRvKqpHRd/0QiHQM4ZPeZAzkFDUqr5QRwEmO1ClJP52CtcpylK6
         BDb6tlZvwTl8gDrRnovISdtDW7u/53LV9Y1kN2qE4nbEzJ+Oo8SRvLbyB1dQHGGeKZAx
         bwvOEvADXcKpKea0Rn8zz40o9yzW44neitEuj/9DB1z8apzNvtghxxUelcreOZePd7hA
         zg1su0eUjc+r8KFEnAeu/gYOLUG6CvquxhDeE7NC9LSJnEUJYd7u7ai9WAKP8OFBwkfA
         9PkGajh5BljENZpSssFZa2rajKzoWT2N8hLk46iTEStOM+47yh4nHmyUAT0iin9UvKaK
         8WTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:mime-version:subject:date:references
         :to:in-reply-to:message-id:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SNJ4Pv+51LBP7TjqD6LLo0WN8Y2wUbb2wb+Oft0w3QA=;
        b=ME3wthyKSk5UvEPiVyXRTOYQy4pMvYAV/RdZBIqyXBeFgl/w2RYIe4T/TUSaBcuFhD
         tHBw6zI3EM6YOp06Zc2IEBITrTLQ1pRFZx9F7eep/YXnw7OiuNK+6eY+Km867OR6XdYE
         iD5/CQ/+PCAp8MfJlyNUHHMS5f52Q+pWixGAExaIegwpvzOu5OQIlVu9Yv9cXJP2T86f
         v+6nlKQLYE5GiItbcPgQXygHwLIfbmbsMsF/qx7yqFjhSkheTyxlG5rVZHgPXGFj6QBs
         p4tD0/6D4xzvGIIhYBdSEQthZdDcFc4yqmdTjYivQncsx06CsRa2ufViQFeGC/T7ALOn
         1y1w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530NsqYySGJhtLT+75vF1HOa02iHxF78jbQ86Cg7OdOHoXLqfP5q
	DQ5aWeGcNC4cinRsUn8X5mU=
X-Google-Smtp-Source: ABdhPJz9UScVl8yDqxYvYTjzRFdqy/Oe23eiv//1nnwtUe8CzFdoAloPLxau3/7DA4lDbZAC7wyoBg==
X-Received: by 2002:a65:4cce:: with SMTP id n14mr19179935pgt.349.1603752635866;
        Mon, 26 Oct 2020 15:50:35 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a65:4547:: with SMTP id x7ls3488145pgr.2.gmail; Mon, 26 Oct
 2020 15:50:35 -0700 (PDT)
X-Received: by 2002:a62:7a8d:0:b029:160:9e0:5ff6 with SMTP id v135-20020a627a8d0000b029016009e05ff6mr84347pfc.52.1603752635162;
        Mon, 26 Oct 2020 15:50:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603752635; cv=none;
        d=google.com; s=arc-20160816;
        b=myn8TVLn1NW+FEepIrw0FqMS7u/0blQpMj/Vmw54xxDP3M0MWTdtw5QMlECJbwsVIM
         Z5ldPwzvNiLq8CTzaNGHMakOnSpgfUJEC3TBidArw4msFfspijjzQIgyWJ52lm4gi6Oa
         Z0fjs4ybkM7y5NJIOG1Lus0HIwS3lcy5qeJnwBWBRZfe4L0F6P5CQcusWMA3Rwfjs0Uu
         wEk94LhemwE0JshlCpk3cU8O1VUjKd3l0hpg3LoKIu3igR2gW0xFQNIuy4CFUU9PZ/a3
         a1czxBFRvB5U2AXJYcJdKpqiLUh279jpUxMRG23qaSvpTS0IO9IeT5KIbnl+QkItHADt
         DTKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:to:references:date:subject:mime-version:from
         :dkim-signature;
        bh=0CnfmDMSiG/QJw62Bs/DVdPjCkpPdbvvBNx/redVwR4=;
        b=v9n7Q07Mai0ujVT9oXNS9JXdFz+I/FkXVEbwa154HLe6vNLWclOYU5vLfkTvzELOZj
         +PlAmcT5eMbGVYriVomNV7HhRj7J4tz9UWR6Unqx+0h2knsLA0rwgwdd96pdgpe4QzfM
         6E0yb1D2XmFLmOmpy3OGtwpdkpbt7h/eHfqxyZ08RkxJkXVexwaDqxtvv7ym/ru9OeYc
         3bWzoRhV10MdUi+F8zoV1///WgM8o0F6SXnkrTgPgfgjR82bu/3zW1dBupzci3moj04t
         k0VnoeH4wNJt7lR57wuB1yuzoREwKfRqB9jtOxP5cg4AaQpwlFoEqizCyMFIX/zV596I
         B+tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uv+L5RIh;
       spf=pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id j63si680065pfd.1.2020.10.26.15.50.35
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 15:50:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Received: by mail-pf1-x429.google.com with SMTP id e15so7033036pfh.6
        for <open-iscsi@googlegroups.com>; Mon, 26 Oct 2020 15:50:35 -0700 (PDT)
X-Received: by 2002:aa7:9905:0:b029:155:73b6:6f7d with SMTP id z5-20020aa799050000b029015573b66f7dmr15712258pff.78.1603752634673;
        Mon, 26 Oct 2020 15:50:34 -0700 (PDT)
Received: from [192.168.10.2] (c-73-25-22-216.hsd1.or.comcast.net. [73.25.22.216])
        by smtp.gmail.com with ESMTPSA id 9sm28999466pjs.1.2020.10.26.15.50.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 15:50:34 -0700 (PDT)
From: Lee Duncan <leeman.duncan@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_0CB7E652-D1AB-407A-915B-68DA5E76EA2B"
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Subject: Re: Slow iSCSI tape performance
Date: Mon, 26 Oct 2020 15:50:33 -0700
References: <5e784f60-ee52-4cdf-847b-e06f50d491cbn@googlegroups.com>
 <4ad354c3-5d6a-4b1f-b978-afee5d1219aen@googlegroups.com>
 <007401d6aaf6$48aef2b0$da0cd810$@perdrix.co.uk>
To: open-iscsi <open-iscsi@googlegroups.com>
In-Reply-To: <007401d6aaf6$48aef2b0$da0cd810$@perdrix.co.uk>
Message-Id: <CCD69511-2C68-4703-9BDD-A1345922DA2D@gmail.com>
X-Mailer: Apple Mail (2.3608.120.23.2.4)
X-Original-Sender: leeman.duncan@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uv+L5RIh;       spf=pass
 (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::429
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


--Apple-Mail=_0CB7E652-D1AB-407A-915B-68DA5E76EA2B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

On Oct 25, 2020, at 10:42 AM, David C. Partridge <david.partridge@perdrix.c=
o.uk> wrote:
>=20
> I believe that it=E2=80=99s something to do with stopping Windows (at the=
 target) from sending TURs to the tape every 30s or so.

Okay, that makes sense. But that has nothing to do with open-iscsi, or even=
 iSCSI at all.

> =20
> Setting streaming bit ? Is that something I can do with mt-st or mt comma=
nds?  The best I am getting is about 29MB/s over a 1Gbit LAN L

I was talking about the ability to tell st to write tape marks without wait=
ing. This is very handy for streaming tape drives, since it allows it to st=
ream tape marks as well. But it cannot be set with =E2=80=9Cmt=E2=80=9D =E2=
=80=94 it needs an ioctl().

What kind of throughput does the tape drive supply directly?

> =20
> Here=E2=80=99s my backup script:
> ...

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/CCD69511-2C68-4703-9BDD-A1345922DA2D%40gmail.com.

--Apple-Mail=_0CB7E652-D1AB-407A-915B-68DA5E76EA2B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="UTF-8"

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; line-break: after-white-space;" class=3D"">On Oct 25, 2020, at 10:42 =
AM, David C. Partridge &lt;<a href=3D"mailto:david.partridge@perdrix.co.uk"=
 class=3D"">david.partridge@perdrix.co.uk</a>&gt; wrote:<br class=3D""><div=
><blockquote type=3D"cite" class=3D""><br class=3D"Apple-interchange-newlin=
e"><div class=3D""><div class=3D"WordSection1" style=3D"page: WordSection1;=
 caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; font-s=
tyle: normal; font-variant-caps: normal; font-weight: normal; letter-spacin=
g: normal; text-align: start; text-indent: 0px; text-transform: none; white=
-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-dec=
oration: none;"><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; fo=
nt-family: &quot;Times New Roman&quot;, serif;" class=3D""><span style=3D"f=
ont-size: 11pt;" class=3D"">I believe that it=E2=80=99s something to do wit=
h stopping Windows (at the target) from sending TURs to the tape every 30s =
or so.</span></div></div></div></blockquote><div><br class=3D""></div>Okay,=
 that makes sense. But that has nothing to do with open-iscsi, or even iSCS=
I at all.</div><div><br class=3D""><blockquote type=3D"cite" class=3D""><di=
v class=3D""><div class=3D"WordSection1" style=3D"page: WordSection1; caret=
-color: rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: nor=
mal; text-align: start; text-indent: 0px; text-transform: none; white-space=
: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoratio=
n: none;"><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-fam=
ily: &quot;Times New Roman&quot;, serif;" class=3D""><span style=3D"font-si=
ze: 11pt;" class=3D""><o:p class=3D""></o:p></span></div><div style=3D"marg=
in: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: &quot;Times New Roman&q=
uot;, serif;" class=3D""><span style=3D"font-size: 11pt;" class=3D""><o:p c=
lass=3D"">&nbsp;</o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;" class=3D=
""><span style=3D"font-size: 11pt;" class=3D"">Setting streaming bit ? Is t=
hat something I can do with mt-st or mt commands?&nbsp; The best I am getti=
ng is about 29MB/s over a 1Gbit LAN<span class=3D"Apple-converted-space">&n=
bsp;</span></span><span style=3D"font-size: 11pt; font-family: Wingdings;" =
class=3D"">L</span></div></div></div></blockquote><div><br class=3D""></div=
>I was talking about the ability to tell st to write tape marks without wai=
ting. This is very handy for streaming tape drives, since it allows it to s=
tream tape marks as well. But it cannot be set with =E2=80=9Cmt=E2=80=9D =
=E2=80=94 it needs an ioctl().</div><div><br class=3D""></div><div>What kin=
d of throughput does the tape drive supply directly?</div><div><br class=3D=
""><blockquote type=3D"cite" class=3D""><div class=3D""><div class=3D"WordS=
ection1" style=3D"page: WordSection1; caret-color: rgb(0, 0, 0); font-famil=
y: Helvetica; font-size: 12px; font-style: normal; font-variant-caps: norma=
l; font-weight: normal; letter-spacing: normal; text-align: start; text-ind=
ent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; text-decoration: none;"><div style=3D"margin: =
0cm 0cm 0.0001pt; font-size: 12pt; font-family: &quot;Times New Roman&quot;=
, serif;" class=3D""><span style=3D"font-size: 11pt;" class=3D""><o:p class=
=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; font-size:=
 12pt; font-family: &quot;Times New Roman&quot;, serif;" class=3D""><span s=
tyle=3D"font-size: 11pt;" class=3D""><o:p class=3D"">&nbsp;</o:p></span></d=
iv><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: &q=
uot;Times New Roman&quot;, serif;" class=3D""><span style=3D"font-size: 11p=
t;" class=3D"">Here=E2=80=99s my backup script:<br class=3D"">...</span></d=
iv></div></div></blockquote></div><br class=3D""></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CCD69511-2C68-4703-9BDD-A1345922DA2D%40gmail.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/open-=
iscsi/CCD69511-2C68-4703-9BDD-A1345922DA2D%40gmail.com</a>.<br />

--Apple-Mail=_0CB7E652-D1AB-407A-915B-68DA5E76EA2B--
