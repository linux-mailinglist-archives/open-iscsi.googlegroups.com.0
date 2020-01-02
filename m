Return-Path: <open-iscsi+bncBD7Z7UVWSMJBB2W2XDYAKGQE55W4PMI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 462C412E98F
	for <lists+open-iscsi@lfdr.de>; Thu,  2 Jan 2020 18:50:38 +0100 (CET)
Received: by mail-yw1-xc3a.google.com with SMTP id 199sf32626225ywe.20
        for <lists+open-iscsi@lfdr.de>; Thu, 02 Jan 2020 09:50:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577987436; cv=pass;
        d=google.com; s=arc-20160816;
        b=GV3aN0R7s9sqWHFZHpJrIjIol7ess81HbU0weUvTGO7uvPct9tkuEN11TQUDtLJTaV
         nc2ti3788v3msDK0i4lPmjynNhTC7fFzfOE0iQ3rDiMb/cE7dOJJz5zhCWAG5waxehMt
         QQAXQ/t5rpE1IUXXj9wZyeA/U7KtfDS/qHB4OLZUGVg4U03Zgj51T9zWd6wSyJuX0Mpt
         4XHY7m6bPoFme/aLh+IV7ZtTWadlQ/6/jmPnq7vVxD/ixmKFeXtoGbCcRxB6Pv4KMcMs
         3p2idKoBwGydDrubKseujgu3iWO6B/OSGEac0oSfuku+8yU+MKBi6To94Exbj+pZt0NZ
         UezQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=axQAVN7jypnoyEq3QUwbZQwlC1WSwQZ1Whuw5gPOp3c=;
        b=iI5+kzjYtEl+l8CUMCc25WICUSNf1SS/zD1xmJghmTQMSca/P+lhuwJ4tA8hlEeOSX
         BiX8IDk8UXFtz1LA8hqOqQAuDiBJlEWlzug+o+JIUUFNPWJkmqAgOgkrBesQxF+OYaiA
         mcNzIzAJK4jN9JOi89SQwlJGx5BHQXiVQTMG8lZ9Xa9/6Q4k6uGI3jxHXe6Ap1MUDFmB
         BPigoZnocMMgXGxwu3E46dbL56brnCvEyrKqC+10YztDRtqbTIxWzHoFEkPLPIBOXf1l
         jzmXr9MJu8rW0gS5H9+63kIZhros+iY0hFqCbwL+P6JzG3HW0m4VV2Oc42/y998Y4zB8
         l0/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hn079ODm;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=axQAVN7jypnoyEq3QUwbZQwlC1WSwQZ1Whuw5gPOp3c=;
        b=rk95e209RgotEnDvo+98vbrzyAaEijfluS1MT4oAINBRxHpcSu9GDwKgFxzh+S85cz
         HvrxW39BhkRW0yfpOMmhUvGJ8MLErqjnQCWb5CgPBoM8lpqFjOh4LvWjNaUWr2UNZ2C8
         y7ro+Z+3uLcwxhOhuMBo2xcASVZPIw+eRaF3viDyYMOyJ5jHb25DPnXJCkwBJPEsXH99
         3bVJ+rrha/yDIDTXndlPxlsL3yMHA/S53srZQy0LcTj1y/xqZvwmR+xH96DCYB7Qear3
         D9tG8cjkaloXJD0qgl14Jpxe/bTxvCxi28g3mTs+zm1mKD0PpR9qKEmgx/zcCyh2Yq68
         V4og==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=axQAVN7jypnoyEq3QUwbZQwlC1WSwQZ1Whuw5gPOp3c=;
        b=EW9WXPMUrz8XkDmFcp1gjf7yGEnjmEgusBuZLSC70w8mNxshKjetd+ZoyDI98YbmJu
         KxpcXSoMO3VQmO82pYaoVY/BtQiD+3Bjikr0V/u34so7b4Ixioh9UnRQIGevULv6s9IY
         9JifpmAOqqOodexERSmd6TReIcFDg0etyz06g5gRnW+BppK2bD0PN4l6iSvHBdv+NZ60
         z5hZxvjhAk6Y8JOqiD9Wq8e4AxcSwWrcOSYYFgD0+LLueqcLd974ksubUYKtc8HgaPRt
         bQhnv99CLBMmcUUYRPt7bX5OBkLlv8s3GypRLmsOu3JQcw7l0/S3y6RIW/IqRPQRlf42
         Jzkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=axQAVN7jypnoyEq3QUwbZQwlC1WSwQZ1Whuw5gPOp3c=;
        b=Bq/ZbmFrtF/kgb0yS7MnHsVAHX4Lz4WtFaQE0ERG21xETOx3JMhfBdGcQSXe7nN2Jb
         UVQ52smv7yCUKBGpm6qdKqohJ7EOsshKNkbTeVNccty6C5RKFT/SkAmgz1/0mjc8L8Ut
         5OzxPN5Eci0AHBZrvJ3LQ8iPetehtGcnuVnu5CPIiz837C4TVnjdRLmK9EseeORUULtR
         f6dYkWq4mUv/zl7fW9qL4hWsF9Lo595Pgbu44eyWF8wXov1j/6LTvjiuGuJN21KP+raD
         TX3AISs2iJpRb0diavMeZ9JXqqgApZBIdB/jLS6OyAJsbilHLOtPLPPCpokNVjuXoVwK
         PiGQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUNiKMzFOrOZHAjaGJ2kRugMnl4yRyhPvvt8rLFQAL/uGGstqDC
	7SMzHWBPIuL+uY70w3zkMfk=
X-Google-Smtp-Source: APXvYqy4FXg1VV4aCfRwFRUvSoXzJjFLFS/AfJQvSt/HKvlvLRr/YfhXKJKn6qrialK9zw8cKZvbzA==
X-Received: by 2002:a25:7583:: with SMTP id q125mr21737108ybc.242.1577987434820;
        Thu, 02 Jan 2020 09:50:34 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5b:b92:: with SMTP id l18ls6193108ybq.8.gmail; Thu, 02 Jan
 2020 09:50:34 -0800 (PST)
X-Received: by 2002:a25:9004:: with SMTP id s4mr59698762ybl.266.1577987434432;
        Thu, 02 Jan 2020 09:50:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577987434; cv=none;
        d=google.com; s=arc-20160816;
        b=PHHy62ydf8hpI425A3ERK4X493u+5HniI/ncioisQcgVTSLGJevOe0VkmlVD2iUXlO
         DiN4z1nveqcydF9qX81DKs/xTP5YRB7k1i7KPHR2DxEwLBeoZjWrDhLiHSXKVDEsgeVM
         Fa/WEr3RX6UjgILva74QGmY3/3iGAZ5Xrsxy1yTYyg8hpbspwMXV7sRPA4Kruh9e1r1H
         7ezpNQ8HJuL7pyb/v30Aag+zYVqczClYlnBiZUBHXBEaiQSYT8quScQ8M9zquLgCAk8n
         CG2cShxIHOAPr5hbp/W84DDPZl3RxK/v30PH0psL6Q77GR4yCrs0Flqb/rdKgVuHwNWX
         9mEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=Fkg0+AKfq3GnV8k0VDMsmQ2WHBWIp4hYV1GBWmM6wOk=;
        b=OkwfoVwXGyDn5w5X4GwBfPAW7Qefqc7vQ27fdpd3T+EtRx3flDOwNnvQwFGQWy3nwt
         05vmmscXXNfDtaR9/on+N30SA1kjLaieWHke3eJMTwZJeV3TIB+jThpX70iVVObK+GqG
         H21+PiKZOxIv7IY990Ug3vGwuMcOSKPgCxut8taOgTznIOz0Avp4X/HUPZ88lh309EO8
         6Jb3DY57WOXNtcVOsEqmxl4KCiV9PsupRLh76vhymeKDdw58b8tOU3QiRwmKoMF8SHFw
         9mVz+4I4Nb7l6q3yzyAJt7w2LgYjFAmhl2kOTBzEa4oGwRFyFE4puKv4LTNc7Vi2R5+S
         5uxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hn079ODm;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com. [2607:f8b0:4864:20::d34])
        by gmr-mx.google.com with ESMTPS id v64si2245049ywa.4.2020.01.02.09.50.34
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jan 2020 09:50:34 -0800 (PST)
Received-SPF: pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) client-ip=2607:f8b0:4864:20::d34;
Received: by mail-io1-xd34.google.com with SMTP id n11so32288650iom.9
        for <open-iscsi@googlegroups.com>; Thu, 02 Jan 2020 09:50:34 -0800 (PST)
X-Received: by 2002:a6b:8f87:: with SMTP id r129mr53311909iod.46.1577987433707;
 Thu, 02 Jan 2020 09:50:33 -0800 (PST)
MIME-Version: 1.0
References: <2a687289-6235-48ef-bd36-239bd8cbd860@googlegroups.com>
 <e6557758-3d4e-4f71-8374-c308e2f09835@googlegroups.com> <88c090a8-94be-444a-b751-86ccc2db6463@googlegroups.com>
 <FCB787D9-40BE-4164-A726-05C66249A8B0@gmail.com>
In-Reply-To: <FCB787D9-40BE-4164-A726-05C66249A8B0@gmail.com>
From: Donald Williams <don.e.williams@gmail.com>
Date: Thu, 2 Jan 2020 12:50:22 -0500
Message-ID: <CAK3e-EYqX18M5mBvVe5C1Pe4D3py5upa2crok1jvqG69DwyxgA@mail.gmail.com>
Subject: Re: Open-iSCSI in research paper
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000723f8f059b2bd475"
X-Original-Sender: Don.E.Williams@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hn079ODm;       spf=pass
 (google.com: domain of don.e.williams@gmail.com designates
 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000723f8f059b2bd475
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,
 There are so many benchmarks out there.   Much depends on filesystem vs.
RAW,  random vs. sequential,  large vs. small blocksize.

 If you keep the capacity tested small then you will get a better idea of
network performance vs. actual storage performance.

 I often use IOMETER with Windows.  AFAIK,  IOMETER with Linux is still
basically broken based on the libraries they are using you don't get proper
threading to increase IO loads.  Acts basically like a single threaded
copy.

 I like that I can create various tests using different loads and run them
one right after the other in a single configuration file.

 With IOmeter you can set a very small test size to basically insure you
are getting cache reads to verify what your hosts, NICs and switches can
do.   Then test larger values if you want to actually test backend storage.

 Regards,

Don


On Thu, Jan 2, 2020 at 12:22 PM Lee Duncan <leeman.duncan@gmail.com> wrote:

> On Jan 2, 2020, at 8:51 AM, Bobby <italienisch1987@gmail.com> wrote:
>
>
> One of the good things about this forum is, you always get help....thanks
> for the reply :-)
>
> I will soon have some questions regarding the user-land and kernel
> driver(s).... :-)
>
> Regarding microbenchmarks, I think this one is good
> https://fio.readthedocs.io/en/latest/fio_doc.html.
>
> What do you think?
>
>
>
> Actually, I interpreted their lack of supplying a benchmark name to mean
> that they had rolled their own.
>
> Fio is a well-known benchmark. I=E2=80=99m not an expert on it so I can=
=E2=80=99t comment
> on it=E2=80=99s features and shortcomings, but I=E2=80=99m sure you could=
 get some valuable
> numbers out of it. First, you have to decide what you want to measure. Is
> it IOPs, it is throughput, is it latency? Are you trying to simulate a
> specific workload (since that=E2=80=99s what really matters, in the end),=
 or just
> get some numbers?
>
> =E2=80=94
> Lee
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/open-iscsi/FCB787D9-40BE-4164-A726-05C6=
6249A8B0%40gmail.com
> <https://groups.google.com/d/msgid/open-iscsi/FCB787D9-40BE-4164-A726-05C=
66249A8B0%40gmail.com?utm_medium=3Demail&utm_source=3Dfooter>
> .
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/CAK3e-EYqX18M5mBvVe5C1Pe4D3py5upa2crok1jvqG69DwyxgA%40mail.gmail=
.com.

--000000000000723f8f059b2bd475
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,=C2=A0<div>=C2=A0There are so many benchmarks out th=
ere.=C2=A0 =C2=A0Much depends on filesystem vs. RAW,=C2=A0 random vs. seque=
ntial,=C2=A0 large vs. small blocksize.=C2=A0=C2=A0</div><div><br></div><di=
v>=C2=A0If you keep the capacity tested small then you will get a better id=
ea of network performance vs. actual storage performance.=C2=A0</div><div><=
br></div><div>=C2=A0I often use IOMETER with Windows.=C2=A0 AFAIK,=C2=A0 IO=
METER with Linux is still basically broken based on the libraries they are =
using you don&#39;t get proper threading to increase IO loads.=C2=A0 Acts b=
asically like a single threaded copy.=C2=A0=C2=A0</div><div><br></div><div>=
=C2=A0I like that I can create various tests using different loads and run =
them one right after the=C2=A0other in a single configuration file.=C2=A0 =
=C2=A0</div><div><br></div><div>=C2=A0With IOmeter you can set a very small=
 test size to basically=C2=A0insure you are getting cache reads to verify w=
hat your hosts, NICs and switches can do.=C2=A0 =C2=A0Then test larger valu=
es if you want to actually test backend storage.=C2=A0</div><div><br></div>=
<div>=C2=A0Regards,=C2=A0</div><div><br></div><div>Don=C2=A0</div><div><br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Thu, Jan 2, 2020 at 12:22 PM Lee Duncan &lt;<a href=3D"mailto:leem=
an.duncan@gmail.com">leeman.duncan@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div style=3D"overflow-wrap: br=
eak-word;">On Jan 2, 2020, at 8:51 AM, Bobby &lt;<a href=3D"mailto:italieni=
sch1987@gmail.com" target=3D"_blank">italienisch1987@gmail.com</a>&gt; wrot=
e:<br><div><blockquote type=3D"cite"><br><div><div dir=3D"ltr">One of the g=
ood things about this forum is, you always get help....thanks for the reply=
 :-)<br><br>I will soon have some questions regarding the user-land and ker=
nel driver(s).... :-)<div><br></div><div>Regarding microbenchmarks, I think=
 this one is good=C2=A0<a href=3D"https://fio.readthedocs.io/en/latest/fio_=
doc.html" target=3D"_blank">https://fio.readthedocs.io/en/latest/fio_doc.ht=
ml</a>.</div><div><br></div><div>What do you think?</div><br><br></div></di=
v></blockquote><br></div><div>Actually, I interpreted their lack of supplyi=
ng a benchmark name to mean that they had rolled their own.</div><div><br><=
/div><div>Fio is a well-known benchmark. I=E2=80=99m not an expert on it so=
 I can=E2=80=99t comment on it=E2=80=99s features and shortcomings, but I=
=E2=80=99m sure you could get some valuable numbers out of it. First, you h=
ave to decide what you want to measure. Is it IOPs, it is throughput, is it=
 latency? Are you trying to simulate a specific workload (since that=E2=80=
=99s what really matters, in the end), or just get some numbers?</div><div>=
<br></div><div>=E2=80=94=C2=A0</div><div>Lee</div><div><br></div><br></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/FCB787D9-40BE-4164-A726-05C66249A8B0%40gmail.com?utm_=
medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">https://groups.go=
ogle.com/d/msgid/open-iscsi/FCB787D9-40BE-4164-A726-05C66249A8B0%40gmail.co=
m</a>.<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAK3e-EYqX18M5mBvVe5C1Pe4D3py5upa2crok1jvqG69DwyxgA%4=
0mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goog=
le.com/d/msgid/open-iscsi/CAK3e-EYqX18M5mBvVe5C1Pe4D3py5upa2crok1jvqG69Dwyx=
gA%40mail.gmail.com</a>.<br />

--000000000000723f8f059b2bd475--
